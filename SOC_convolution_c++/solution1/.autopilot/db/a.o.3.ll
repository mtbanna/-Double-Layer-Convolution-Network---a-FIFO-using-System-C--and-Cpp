; ModuleID = 'C:/Users/Mahmoud/Desktop/SOC_convolution_c++/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@out_data_2 = global [49 x double] zeroinitializer ; [#uses=2 type=[49 x double]*]
@out_data_1 = global [196 x double] zeroinitializer ; [#uses=2 type=[196 x double]*]
@out_data = global [49 x double] zeroinitializer  ; [#uses=1 type=[49 x double]*]
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@fifo_out = global [196 x double] zeroinitializer, align 16 ; [#uses=2 type=[196 x double]*]
@compute_str = internal unnamed_addr constant [8 x i8] c"compute\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=17]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @compute([784 x double]* %ip) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x double]* %ip) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @compute_str) nounwind
  %fifo_in_temp = alloca [196 x double], align 16 ; [#uses=2 type=[196 x double]*]
  call void @llvm.dbg.value(metadata !{[196 x double]* %fifo_in_temp}, i64 0, metadata !57) nounwind, !dbg !79 ; [debug line = 4:18@28:1] [debug variable = fifo_in]
  %in_conv2 = alloca [196 x double], align 8      ; [#uses=5 type=[196 x double]*]
  call void @llvm.dbg.value(metadata !{[196 x double]* %in_conv2}, i64 0, metadata !80) nounwind, !dbg !92 ; [debug line = 3:19@41:1] [debug variable = in_data]
  call void @llvm.dbg.value(metadata !{[784 x double]* %ip}, i64 0, metadata !93), !dbg !96 ; [debug line = 5:21] [debug variable = ip]
  call void @llvm.dbg.declare(metadata !{[196 x double]* %fifo_in_temp}, metadata !97), !dbg !98 ; [debug line = 10:9] [debug variable = fifo_in_temp]
  call void @llvm.dbg.declare(metadata !{[196 x double]* %in_conv2}, metadata !99), !dbg !100 ; [debug line = 12:9] [debug variable = in_conv2]
  call void @llvm.dbg.value(metadata !{[784 x double]* %ip}, i64 0, metadata !101) nounwind, !dbg !105 ; [debug line = 3:20@16:1] [debug variable = inp]
  br label %.loopexit, !dbg !106                  ; [debug line = 7:17@16:1]

.loopexit.loopexit:                               ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i_i = phi i4 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ] ; [#uses=6 type=i4]
  %exitcond1_i = icmp eq i4 %i_i, -2, !dbg !106   ; [#uses=1 type=i1] [debug line = 7:17@16:1]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %i_1 = add i4 %i_i, 1, !dbg !109                ; [#uses=1 type=i4] [debug line = 7:25@16:1]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !110) nounwind, !dbg !109 ; [debug line = 7:25@16:1] [debug variable = i]
  br i1 %exitcond1_i, label %conv1.exit.preheader, label %.preheader.preheader.i, !dbg !106 ; [debug line = 7:17@16:1]

conv1.exit.preheader:                             ; preds = %.loopexit
  br label %conv1.exit, !dbg !112                 ; [debug line = 18:15]

.preheader.preheader.i:                           ; preds = %.loopexit
  %tmp_i = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i_i, i1 false), !dbg !114 ; [#uses=2 type=i5] [debug line = 9:5@16:1]
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4 %i_i, i6 0) ; [#uses=1 type=i10]
  %p_shl4_cast = zext i10 %tmp to i11             ; [#uses=1 type=i11]
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_i, i3 0) ; [#uses=1 type=i7]
  %p_shl5_cast = zext i7 %tmp_9 to i11, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_s = sub i11 %p_shl4_cast, %p_shl5_cast, !dbg !114 ; [#uses=2 type=i11] [debug line = 9:5@16:1]
  %tmp_16_i = or i5 %tmp_i, 1, !dbg !114          ; [#uses=2 type=i5] [debug line = 9:5@16:1]
  %tmp_1 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_16_i, i5 0) ; [#uses=1 type=i10]
  %p_shl2_cast = zext i10 %tmp_1 to i11           ; [#uses=1 type=i11]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %tmp_16_i, i2 0) ; [#uses=1 type=i7]
  %p_shl3_cast = zext i7 %tmp_6 to i11, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_7 = sub i11 %p_shl2_cast, %p_shl3_cast, !dbg !114 ; [#uses=2 type=i11] [debug line = 9:5@16:1]
  %tmp_8 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i_i, i4 0) ; [#uses=1 type=i8]
  %p_shl_cast = zext i8 %tmp_8 to i9, !dbg !114   ; [#uses=1 type=i9] [debug line = 9:5@16:1]
  %p_shl1_cast = zext i5 %tmp_i to i9, !dbg !114  ; [#uses=1 type=i9] [debug line = 9:5@16:1]
  %tmp_10 = sub i9 %p_shl_cast, %p_shl1_cast, !dbg !114 ; [#uses=1 type=i9] [debug line = 9:5@16:1]
  br label %.preheader.i, !dbg !118               ; [debug line = 8:17@16:1]

.preheader.i:                                     ; preds = %1, %.preheader.preheader.i
  %j_i = phi i4 [ %j_1, %1 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i4]
  %exitcond_i = icmp eq i4 %j_i, -2, !dbg !118    ; [#uses=1 type=i1] [debug line = 8:17@16:1]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %j_1 = add i4 %j_i, 1, !dbg !119                ; [#uses=1 type=i4] [debug line = 8:25@16:1]
  br i1 %exitcond_i, label %.loopexit.loopexit, label %1, !dbg !118 ; [debug line = 8:17@16:1]

; <label>:1                                       ; preds = %.preheader.i
  %tmp_19_i = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %j_i, i1 false), !dbg !114 ; [#uses=2 type=i5] [debug line = 9:5@16:1]
  %tmp_20_i_cast = zext i5 %tmp_19_i to i11, !dbg !114 ; [#uses=2 type=i11] [debug line = 9:5@16:1]
  %tmp_14 = add i11 %tmp_20_i_cast, %tmp_s, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_20_cast = sext i11 %tmp_14 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 9:5@16:1]
  %ip_addr = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_20_cast, !dbg !114 ; [#uses=1 type=double*] [debug line = 9:5@16:1]
  %tmp_15 = add i11 %tmp_20_i_cast, %tmp_7, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_21_cast = sext i11 %tmp_15 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 9:5@16:1]
  %ip_addr_2 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_21_cast, !dbg !114 ; [#uses=1 type=double*] [debug line = 9:5@16:1]
  %ip_load = load double* %ip_addr, align 8, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_21_i = fmul double %ip_load, 9.147772e-002, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_22_i = or i5 %tmp_19_i, 1, !dbg !114       ; [#uses=1 type=i5] [debug line = 9:5@16:1]
  %tmp_23_i_cast = zext i5 %tmp_22_i to i11, !dbg !114 ; [#uses=2 type=i11] [debug line = 9:5@16:1]
  %tmp_16 = add i11 %tmp_23_i_cast, %tmp_s, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_22_cast = sext i11 %tmp_16 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 9:5@16:1]
  %ip_addr_1 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_22_cast, !dbg !114 ; [#uses=1 type=double*] [debug line = 9:5@16:1]
  %tmp_17 = add i11 %tmp_23_i_cast, %tmp_7, !dbg !114 ; [#uses=1 type=i11] [debug line = 9:5@16:1]
  %tmp_23_cast = sext i11 %tmp_17 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 9:5@16:1]
  %ip_addr_3 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_23_cast, !dbg !114 ; [#uses=1 type=double*] [debug line = 9:5@16:1]
  %ip_load_1 = load double* %ip_addr_1, align 8, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_24_i = fmul double %ip_load_1, 8.124895e-002, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_25_i = fadd double %tmp_21_i, %tmp_24_i, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %ip_load_2 = load double* %ip_addr_2, align 8, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_26_i = fmul double %ip_load_2, 0xBFCA408266A2207C, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_27_i = fadd double %tmp_25_i, %tmp_26_i, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %ip_load_3 = load double* %ip_addr_3, align 8, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_28_i = fmul double %ip_load_3, -4.164300e-003, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_29_i = fadd double %tmp_27_i, %tmp_28_i, !dbg !114 ; [#uses=1 type=double] [debug line = 9:5@16:1]
  %tmp_30_i_cast = zext i4 %j_i to i9, !dbg !114  ; [#uses=1 type=i9] [debug line = 9:5@16:1]
  %tmp_18 = add i9 %tmp_30_i_cast, %tmp_10, !dbg !114 ; [#uses=1 type=i9] [debug line = 9:5@16:1]
  %tmp_24_cast = sext i9 %tmp_18 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 9:5@16:1]
  %out_data_1_addr_1 = getelementptr [196 x double]* @out_data_1, i64 0, i64 %tmp_24_cast, !dbg !114 ; [#uses=1 type=double*] [debug line = 9:5@16:1]
  store double %tmp_29_i, double* %out_data_1_addr_1, align 8, !dbg !114 ; [debug line = 9:5@16:1]
  call void @llvm.dbg.value(metadata !{i4 %j_1}, i64 0, metadata !120) nounwind, !dbg !119 ; [debug line = 8:25@16:1] [debug variable = j]
  br label %.preheader.i, !dbg !119               ; [debug line = 8:25@16:1]

conv1.exit.loopexit:                              ; preds = %3
  br label %conv1.exit

conv1.exit:                                       ; preds = %conv1.exit.loopexit, %conv1.exit.preheader
  %i = phi i4 [ %i_3, %conv1.exit.loopexit ], [ 0, %conv1.exit.preheader ] ; [#uses=4 type=i4]
  %counter_buffer1 = phi i8 [ %counter_buffer1_2, %conv1.exit.loopexit ], [ 0, %conv1.exit.preheader ] ; [#uses=2 type=i8]
  %exitcond5 = icmp eq i4 %i, -2, !dbg !112       ; [#uses=1 type=i1] [debug line = 18:15]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %i_3 = add i4 %i, 1, !dbg !121                  ; [#uses=1 type=i4] [debug line = 18:23]
  call void @llvm.dbg.value(metadata !{i4 %i_3}, i64 0, metadata !122), !dbg !121 ; [debug line = 18:23] [debug variable = i]
  br i1 %exitcond5, label %.preheader13.preheader, label %2, !dbg !112 ; [debug line = 18:15]

.preheader13.preheader:                           ; preds = %conv1.exit
  br label %.preheader13, !dbg !123               ; [debug line = 6:15@28:1]

; <label>:2                                       ; preds = %conv1.exit
  %counter_buffer1_2 = add i8 %counter_buffer1, 14, !dbg !126 ; [#uses=1 type=i8] [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i8 %counter_buffer1_2}, i64 0, metadata !130), !dbg !126 ; [debug line = 21:3] [debug variable = counter_buffer1]
  %tmp_11 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i, i4 0) ; [#uses=1 type=i8]
  %p_shl6_cast = zext i8 %tmp_11 to i9            ; [#uses=1 type=i9]
  %tmp_12 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i, i1 false) ; [#uses=1 type=i5]
  %p_shl7_cast = zext i5 %tmp_12 to i9, !dbg !126 ; [#uses=1 type=i9] [debug line = 21:3]
  %tmp_13 = sub i9 %p_shl6_cast, %p_shl7_cast, !dbg !126 ; [#uses=1 type=i9] [debug line = 21:3]
  br label %3, !dbg !131                          ; [debug line = 19:15]

; <label>:3                                       ; preds = %4, %2
  %j = phi i4 [ 0, %2 ], [ %j_2, %4 ]             ; [#uses=3 type=i4]
  %counter_buffer1_1 = phi i8 [ %counter_buffer1, %2 ], [ %tmp_2, %4 ] ; [#uses=2 type=i8]
  %exitcond4 = icmp eq i4 %j, -2, !dbg !131       ; [#uses=1 type=i1] [debug line = 19:15]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %j_2 = add i4 %j, 1, !dbg !132                  ; [#uses=1 type=i4] [debug line = 19:23]
  br i1 %exitcond4, label %conv1.exit.loopexit, label %4, !dbg !131 ; [debug line = 19:15]

; <label>:4                                       ; preds = %3
  %tmp_1_cast = zext i4 %j to i9, !dbg !126       ; [#uses=1 type=i9] [debug line = 21:3]
  %tmp_19 = add i9 %tmp_13, %tmp_1_cast, !dbg !126 ; [#uses=1 type=i9] [debug line = 21:3]
  %tmp_25_cast = sext i9 %tmp_19 to i64, !dbg !126 ; [#uses=1 type=i64] [debug line = 21:3]
  %out_data_1_addr = getelementptr [196 x double]* @out_data_1, i64 0, i64 %tmp_25_cast, !dbg !126 ; [#uses=1 type=double*] [debug line = 21:3]
  %out_data_1_load = load double* %out_data_1_addr, align 8, !dbg !126 ; [#uses=1 type=double] [debug line = 21:3]
  %tmp_2 = add i8 %counter_buffer1_1, 1, !dbg !126 ; [#uses=1 type=i8] [debug line = 21:3]
  %tmp_3 = zext i8 %counter_buffer1_1 to i64, !dbg !126 ; [#uses=1 type=i64] [debug line = 21:3]
  %fifo_in_temp_addr = getelementptr inbounds [196 x double]* %fifo_in_temp, i64 0, i64 %tmp_3, !dbg !126 ; [#uses=1 type=double*] [debug line = 21:3]
  store double %out_data_1_load, double* %fifo_in_temp_addr, align 8, !dbg !126 ; [debug line = 21:3]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !133), !dbg !132 ; [debug line = 19:23] [debug variable = j]
  br label %3, !dbg !132                          ; [debug line = 19:23]

.preheader13:                                     ; preds = %5, %.preheader13.preheader
  %i_i1 = phi i8 [ %i_2, %5 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i8]
  %exitcond_i2 = icmp eq i8 %i_i1, -60, !dbg !123 ; [#uses=1 type=i1] [debug line = 6:15@28:1]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 196, i64 196, i64 196) nounwind ; [#uses=0 type=i32]
  %i_2 = add i8 %i_i1, 1, !dbg !134               ; [#uses=1 type=i8] [debug line = 6:24@28:1]
  br i1 %exitcond_i2, label %buff.exit.preheader, label %5, !dbg !123 ; [debug line = 6:15@28:1]

buff.exit.preheader:                              ; preds = %.preheader13
  br label %buff.exit, !dbg !135                  ; [debug line = 30:15]

; <label>:5                                       ; preds = %.preheader13
  %tmp_i3 = zext i8 %i_i1 to i64, !dbg !137       ; [#uses=2 type=i64] [debug line = 8:3@28:1]
  %fifo_in_temp_addr_1 = getelementptr [196 x double]* %fifo_in_temp, i64 0, i64 %tmp_i3, !dbg !137 ; [#uses=1 type=double*] [debug line = 8:3@28:1]
  %fifo_in_temp_load = load double* %fifo_in_temp_addr_1, align 8, !dbg !137 ; [#uses=1 type=double] [debug line = 8:3@28:1]
  %fifo_out_addr_1 = getelementptr inbounds [196 x double]* @fifo_out, i64 0, i64 %tmp_i3, !dbg !137 ; [#uses=1 type=double*] [debug line = 8:3@28:1]
  store double %fifo_in_temp_load, double* %fifo_out_addr_1, align 8, !dbg !137 ; [debug line = 8:3@28:1]
  call void @llvm.dbg.value(metadata !{i8 %i_2}, i64 0, metadata !139) nounwind, !dbg !134 ; [debug line = 6:24@28:1] [debug variable = i]
  br label %.preheader13, !dbg !134               ; [debug line = 6:24@28:1]

buff.exit.loopexit:                               ; preds = %7
  br label %buff.exit

buff.exit:                                        ; preds = %buff.exit.loopexit, %buff.exit.preheader
  %i1 = phi i4 [ %i_4, %buff.exit.loopexit ], [ 0, %buff.exit.preheader ] ; [#uses=4 type=i4]
  %counter_buffer2 = phi i8 [ %counter_buffer2_2, %buff.exit.loopexit ], [ 0, %buff.exit.preheader ] ; [#uses=2 type=i8]
  %exitcond3 = icmp eq i4 %i1, -2, !dbg !135      ; [#uses=1 type=i1] [debug line = 30:15]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %i_4 = add i4 %i1, 1, !dbg !140                 ; [#uses=1 type=i4] [debug line = 30:23]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !141), !dbg !140 ; [debug line = 30:23] [debug variable = i]
  br i1 %exitcond3, label %.preheader12.preheader, label %6, !dbg !135 ; [debug line = 30:15]

.preheader12.preheader:                           ; preds = %buff.exit
  br label %.preheader12, !dbg !142               ; [debug line = 8:17@41:1]

; <label>:6                                       ; preds = %buff.exit
  %counter_buffer2_2 = add i8 %counter_buffer2, 14, !dbg !145 ; [#uses=1 type=i8] [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{i8 %counter_buffer2_2}, i64 0, metadata !149), !dbg !145 ; [debug line = 33:3] [debug variable = counter_buffer2]
  %tmp_20 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i1, i4 0) ; [#uses=1 type=i8]
  %p_shl8_cast = zext i8 %tmp_20 to i9            ; [#uses=1 type=i9]
  %tmp_21 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i1, i1 false) ; [#uses=1 type=i5]
  %p_shl9_cast = zext i5 %tmp_21 to i9, !dbg !145 ; [#uses=1 type=i9] [debug line = 33:3]
  %tmp_22 = sub i9 %p_shl8_cast, %p_shl9_cast, !dbg !145 ; [#uses=1 type=i9] [debug line = 33:3]
  br label %7, !dbg !150                          ; [debug line = 31:15]

; <label>:7                                       ; preds = %8, %6
  %j2 = phi i4 [ 0, %6 ], [ %j_3, %8 ]            ; [#uses=3 type=i4]
  %counter_buffer2_1 = phi i8 [ %counter_buffer2, %6 ], [ %tmp_4, %8 ] ; [#uses=2 type=i8]
  %exitcond2 = icmp eq i4 %j2, -2, !dbg !150      ; [#uses=1 type=i1] [debug line = 31:15]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind ; [#uses=0 type=i32]
  %j_3 = add i4 %j2, 1, !dbg !151                 ; [#uses=1 type=i4] [debug line = 31:23]
  br i1 %exitcond2, label %buff.exit.loopexit, label %8, !dbg !150 ; [debug line = 31:15]

; <label>:8                                       ; preds = %7
  %tmp_4 = add i8 %counter_buffer2_1, 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 33:3]
  %tmp_5 = zext i8 %counter_buffer2_1 to i64, !dbg !145 ; [#uses=1 type=i64] [debug line = 33:3]
  %fifo_out_addr = getelementptr inbounds [196 x double]* @fifo_out, i64 0, i64 %tmp_5, !dbg !145 ; [#uses=1 type=double*] [debug line = 33:3]
  %fifo_out_load = load double* %fifo_out_addr, align 8, !dbg !145 ; [#uses=1 type=double] [debug line = 33:3]
  %tmp_6_cast = zext i4 %j2 to i9, !dbg !145      ; [#uses=1 type=i9] [debug line = 33:3]
  %tmp_31 = add i9 %tmp_22, %tmp_6_cast, !dbg !145 ; [#uses=1 type=i9] [debug line = 33:3]
  %tmp_37_cast = sext i9 %tmp_31 to i64, !dbg !145 ; [#uses=1 type=i64] [debug line = 33:3]
  %in_conv2_addr = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_37_cast, !dbg !145 ; [#uses=1 type=double*] [debug line = 33:3]
  store double %fifo_out_load, double* %in_conv2_addr, align 8, !dbg !145 ; [debug line = 33:3]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !152), !dbg !151 ; [debug line = 31:23] [debug variable = j]
  br label %7, !dbg !151                          ; [debug line = 31:23]

.preheader12.loopexit:                            ; preds = %.preheader.i10
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.loopexit, %.preheader12.preheader
  %i_i4 = phi i3 [ %i_6, %.preheader12.loopexit ], [ 0, %.preheader12.preheader ] ; [#uses=7 type=i3]
  %exitcond1_i5 = icmp eq i3 %i_i4, -1, !dbg !142 ; [#uses=1 type=i1] [debug line = 8:17@41:1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  %i_6 = add i3 %i_i4, 1, !dbg !153               ; [#uses=1 type=i3] [debug line = 8:24@41:1]
  call void @llvm.dbg.value(metadata !{i3 %i_6}, i64 0, metadata !154) nounwind, !dbg !153 ; [debug line = 8:24@41:1] [debug variable = i]
  br i1 %exitcond1_i5, label %conv2.exit.preheader, label %.preheader.preheader.i7, !dbg !142 ; [debug line = 8:17@41:1]

conv2.exit.preheader:                             ; preds = %.preheader12
  br label %conv2.exit, !dbg !155                 ; [debug line = 43:15]

.preheader.preheader.i7:                          ; preds = %.preheader12
  %tmp_i6 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %i_i4, i1 false), !dbg !157 ; [#uses=1 type=i4] [debug line = 10:5@41:1]
  %tmp_23 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %i_i4, i5 0) ; [#uses=1 type=i8]
  %p_shl13_cast = zext i8 %tmp_23 to i9           ; [#uses=1 type=i9]
  %tmp_24 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_i4, i2 0) ; [#uses=1 type=i5]
  %p_shl14_cast = zext i5 %tmp_24 to i9, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_25 = sub i9 %p_shl13_cast, %p_shl14_cast, !dbg !157 ; [#uses=2 type=i9] [debug line = 10:5@41:1]
  %tmp_2_i = or i4 %tmp_i6, 1, !dbg !157          ; [#uses=2 type=i4] [debug line = 10:5@41:1]
  %tmp_26 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_2_i, i4 0) ; [#uses=1 type=i8]
  %p_shl11_cast = zext i8 %tmp_26 to i9           ; [#uses=1 type=i9]
  %tmp_27 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_2_i, i1 false) ; [#uses=1 type=i5]
  %p_shl12_cast = zext i5 %tmp_27 to i9, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_28 = sub i9 %p_shl11_cast, %p_shl12_cast, !dbg !157 ; [#uses=2 type=i9] [debug line = 10:5@41:1]
  %tmp_4_i_cast = zext i3 %i_i4 to i7             ; [#uses=1 type=i7]
  %tmp_29 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_i4, i3 0) ; [#uses=1 type=i6]
  %p_shl10_cast = zext i6 %tmp_29 to i7, !dbg !157 ; [#uses=1 type=i7] [debug line = 10:5@41:1]
  %tmp_30 = sub i7 %p_shl10_cast, %tmp_4_i_cast, !dbg !157 ; [#uses=1 type=i7] [debug line = 10:5@41:1]
  br label %.preheader.i10, !dbg !161             ; [debug line = 9:17@41:1]

.preheader.i10:                                   ; preds = %9, %.preheader.preheader.i7
  %j_i8 = phi i3 [ %j_4, %9 ], [ 0, %.preheader.preheader.i7 ] ; [#uses=4 type=i3]
  %exitcond_i9 = icmp eq i3 %j_i8, -1, !dbg !161  ; [#uses=1 type=i1] [debug line = 9:17@41:1]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  %j_4 = add i3 %j_i8, 1, !dbg !162               ; [#uses=1 type=i3] [debug line = 9:24@41:1]
  br i1 %exitcond_i9, label %.preheader12.loopexit, label %9, !dbg !161 ; [debug line = 9:17@41:1]

; <label>:9                                       ; preds = %.preheader.i10
  %tmp_6_i = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j_i8, i1 false), !dbg !157 ; [#uses=2 type=i4] [debug line = 10:5@41:1]
  %tmp_7_i_cast = zext i4 %tmp_6_i to i9, !dbg !157 ; [#uses=2 type=i9] [debug line = 10:5@41:1]
  %tmp_34 = add i9 %tmp_7_i_cast, %tmp_25, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_40_cast = sext i9 %tmp_34 to i64, !dbg !157 ; [#uses=1 type=i64] [debug line = 10:5@41:1]
  %in_conv2_addr_1 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_40_cast, !dbg !157 ; [#uses=1 type=double*] [debug line = 10:5@41:1]
  %tmp_35 = add i9 %tmp_7_i_cast, %tmp_28, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_41_cast = sext i9 %tmp_35 to i64, !dbg !157 ; [#uses=1 type=i64] [debug line = 10:5@41:1]
  %in_conv2_addr_3 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_41_cast, !dbg !157 ; [#uses=1 type=double*] [debug line = 10:5@41:1]
  %in_conv2_load = load double* %in_conv2_addr_1, align 16, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_8_i = fmul double %in_conv2_load, 4.559669e-002, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_9_i = or i4 %tmp_6_i, 1, !dbg !157         ; [#uses=1 type=i4] [debug line = 10:5@41:1]
  %tmp_i1_cast = zext i4 %tmp_9_i to i9, !dbg !157 ; [#uses=2 type=i9] [debug line = 10:5@41:1]
  %tmp_36 = add i9 %tmp_i1_cast, %tmp_25, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_42_cast = sext i9 %tmp_36 to i64, !dbg !157 ; [#uses=1 type=i64] [debug line = 10:5@41:1]
  %in_conv2_addr_2 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_42_cast, !dbg !157 ; [#uses=1 type=double*] [debug line = 10:5@41:1]
  %tmp_37 = add i9 %tmp_i1_cast, %tmp_28, !dbg !157 ; [#uses=1 type=i9] [debug line = 10:5@41:1]
  %tmp_43_cast = sext i9 %tmp_37 to i64, !dbg !157 ; [#uses=1 type=i64] [debug line = 10:5@41:1]
  %in_conv2_addr_4 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_43_cast, !dbg !157 ; [#uses=1 type=double*] [debug line = 10:5@41:1]
  %in_conv2_load_1 = load double* %in_conv2_addr_2, align 8, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_5_i = fmul double %in_conv2_load_1, 0xBFD78CDF6179ED82, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_10_i = fadd double %tmp_8_i, %tmp_5_i, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %in_conv2_load_2 = load double* %in_conv2_addr_3, align 16, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_11_i = fmul double %in_conv2_load_2, -8.351272e-002, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_12_i = fadd double %tmp_10_i, %tmp_11_i, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %in_conv2_load_3 = load double* %in_conv2_addr_4, align 8, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_13_i = fmul double %in_conv2_load_3, 0xBFD74D55BE787633, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_14_i = fadd double %tmp_12_i, %tmp_13_i, !dbg !157 ; [#uses=1 type=double] [debug line = 10:5@41:1]
  %tmp_15_i_cast = zext i3 %j_i8 to i7, !dbg !157 ; [#uses=1 type=i7] [debug line = 10:5@41:1]
  %tmp_38 = add i7 %tmp_15_i_cast, %tmp_30, !dbg !157 ; [#uses=1 type=i7] [debug line = 10:5@41:1]
  %tmp_44_cast = sext i7 %tmp_38 to i64, !dbg !157 ; [#uses=1 type=i64] [debug line = 10:5@41:1]
  %out_data_2_addr_1 = getelementptr [49 x double]* @out_data_2, i64 0, i64 %tmp_44_cast, !dbg !157 ; [#uses=1 type=double*] [debug line = 10:5@41:1]
  store double %tmp_14_i, double* %out_data_2_addr_1, align 8, !dbg !157 ; [debug line = 10:5@41:1]
  call void @llvm.dbg.value(metadata !{i3 %j_4}, i64 0, metadata !163) nounwind, !dbg !162 ; [debug line = 9:24@41:1] [debug variable = j]
  br label %.preheader.i10, !dbg !162             ; [debug line = 9:24@41:1]

conv2.exit.loopexit:                              ; preds = %.preheader
  br label %conv2.exit

conv2.exit:                                       ; preds = %conv2.exit.loopexit, %conv2.exit.preheader
  %i3 = phi i3 [ %i_5, %conv2.exit.loopexit ], [ 0, %conv2.exit.preheader ] ; [#uses=4 type=i3]
  %exitcond1 = icmp eq i3 %i3, -1, !dbg !155      ; [#uses=1 type=i1] [debug line = 43:15]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  %i_5 = add i3 %i3, 1, !dbg !164                 ; [#uses=1 type=i3] [debug line = 43:22]
  call void @llvm.dbg.value(metadata !{i3 %i_5}, i64 0, metadata !165), !dbg !164 ; [debug line = 43:22] [debug variable = i]
  br i1 %exitcond1, label %11, label %.preheader.preheader, !dbg !155 ; [debug line = 43:15]

.preheader.preheader:                             ; preds = %conv2.exit
  %tmp_7_cast = zext i3 %i3 to i7                 ; [#uses=1 type=i7]
  %tmp_32 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i3, i3 0) ; [#uses=1 type=i6]
  %p_shl15_cast = zext i6 %tmp_32 to i7, !dbg !166 ; [#uses=1 type=i7] [debug line = 46:3]
  %tmp_33 = sub i7 %p_shl15_cast, %tmp_7_cast, !dbg !166 ; [#uses=1 type=i7] [debug line = 46:3]
  br label %.preheader, !dbg !170                 ; [debug line = 44:15]

.preheader:                                       ; preds = %10, %.preheader.preheader
  %j4 = phi i3 [ %j_5, %10 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %j4, -1, !dbg !170       ; [#uses=1 type=i1] [debug line = 44:15]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  %j_5 = add i3 %j4, 1, !dbg !171                 ; [#uses=1 type=i3] [debug line = 44:22]
  br i1 %exitcond, label %conv2.exit.loopexit, label %10, !dbg !170 ; [debug line = 44:15]

; <label>:10                                      ; preds = %.preheader
  %tmp_8_cast = zext i3 %j4 to i7, !dbg !166      ; [#uses=1 type=i7] [debug line = 46:3]
  %tmp_39 = add i7 %tmp_33, %tmp_8_cast, !dbg !166 ; [#uses=1 type=i7] [debug line = 46:3]
  %tmp_45_cast = sext i7 %tmp_39 to i64, !dbg !166 ; [#uses=2 type=i64] [debug line = 46:3]
  %out_data_2_addr = getelementptr [49 x double]* @out_data_2, i64 0, i64 %tmp_45_cast, !dbg !166 ; [#uses=1 type=double*] [debug line = 46:3]
  %out_data_addr = getelementptr [49 x double]* @out_data, i64 0, i64 %tmp_45_cast, !dbg !166 ; [#uses=1 type=double*] [debug line = 46:3]
  %out_data_2_load = load double* %out_data_2_addr, align 8, !dbg !166 ; [#uses=1 type=double] [debug line = 46:3]
  store double %out_data_2_load, double* %out_data_addr, align 8, !dbg !166 ; [debug line = 46:3]
  call void @llvm.dbg.value(metadata !{i3 %j_5}, i64 0, metadata !172), !dbg !171 ; [debug line = 44:22] [debug variable = j]
  br label %.preheader, !dbg !171                 ; [debug line = 44:22]

; <label>:11                                      ; preds = %conv2.exit
  ret void, !dbg !173                             ; [debug line = 51:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=11]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8                       ; [#uses=1 type=i8]
  %empty_13 = zext i4 %1 to i8                    ; [#uses=1 type=i8]
  %empty_14 = shl i8 %empty, 4                    ; [#uses=1 type=i8]
  %empty_15 = or i8 %empty_14, %empty_13          ; [#uses=1 type=i8]
  ret i8 %empty_15
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8                       ; [#uses=1 type=i8]
  %empty_16 = zext i5 %1 to i8                    ; [#uses=1 type=i8]
  %empty_17 = shl i8 %empty, 5                    ; [#uses=1 type=i8]
  %empty_18 = or i8 %empty_17, %empty_16          ; [#uses=1 type=i8]
  ret i8 %empty_18
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7                       ; [#uses=1 type=i7]
  %empty_19 = zext i2 %1 to i7                    ; [#uses=1 type=i7]
  %empty_20 = shl i7 %empty, 2                    ; [#uses=1 type=i7]
  %empty_21 = or i7 %empty_20, %empty_19          ; [#uses=1 type=i7]
  ret i7 %empty_21
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_22 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_23 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_24 = or i7 %empty_23, %empty_22          ; [#uses=1 type=i7]
  ret i7 %empty_24
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_25 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_26 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_27 = or i6 %empty_26, %empty_25          ; [#uses=1 type=i6]
  ret i6 %empty_27
}

; [#uses=5]
define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5                       ; [#uses=1 type=i5]
  %empty_28 = zext i1 %1 to i5                    ; [#uses=1 type=i5]
  %empty_29 = shl i5 %empty, 1                    ; [#uses=1 type=i5]
  %empty_30 = or i5 %empty_29, %empty_28          ; [#uses=1 type=i5]
  ret i5 %empty_30
}

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_31 = zext i2 %1 to i5                    ; [#uses=1 type=i5]
  %empty_32 = shl i5 %empty, 2                    ; [#uses=1 type=i5]
  %empty_33 = or i5 %empty_32, %empty_31          ; [#uses=1 type=i5]
  ret i5 %empty_33
}

; [#uses=2]
define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4                       ; [#uses=1 type=i4]
  %empty_34 = zext i1 %1 to i4                    ; [#uses=1 type=i4]
  %empty_35 = shl i4 %empty, 1                    ; [#uses=1 type=i4]
  %empty_36 = or i4 %empty_35, %empty_34          ; [#uses=1 type=i4]
  ret i4 %empty_36
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10                      ; [#uses=1 type=i10]
  %empty_37 = zext i5 %1 to i10                   ; [#uses=1 type=i10]
  %empty_38 = shl i10 %empty, 5                   ; [#uses=1 type=i10]
  %empty_39 = or i10 %empty_38, %empty_37         ; [#uses=1 type=i10]
  ret i10 %empty_39
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4, i6) nounwind readnone {
entry:
  %empty = zext i4 %0 to i10                      ; [#uses=1 type=i10]
  %empty_40 = zext i6 %1 to i10                   ; [#uses=1 type=i10]
  %empty_41 = shl i10 %empty, 6                   ; [#uses=1 type=i10]
  %empty_42 = or i10 %empty_41, %empty_40         ; [#uses=1 type=i10]
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
!57 = metadata !{i32 786689, metadata !58, metadata !"fifo_in", null, i32 4, metadata !66, i32 0, metadata !69} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !59, metadata !"buff", metadata !"buff", metadata !"_Z4buffPd", metadata !59, i32 4, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !64, i32 4} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786473, metadata !"SOC_convolution_c++/fifo.cpp", metadata !"C:\5CUsers\5CMahmoud\5CDesktop", null} ; [ DW_TAG_file_type ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62}
!62 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 12544, i64 64, i32 0, i32 0, metadata !63, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 195}      ; [ DW_TAG_subrange_type ]
!69 = metadata !{i32 28, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 5, i32 32, metadata !72, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786478, i32 0, metadata !72, metadata !"compute", metadata !"compute", metadata !"_Z7computePA28_d", metadata !72, i32 5, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !64, i32 5} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786473, metadata !"SOC_convolution_c++/operation.cpp", metadata !"C:\5CUsers\5CMahmoud\5CDesktop", null} ; [ DW_TAG_file_type ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75}
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1792, i64 64, i32 0, i32 0, metadata !63, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ]
!79 = metadata !{i32 4, i32 18, metadata !58, metadata !69}
!80 = metadata !{i32 786689, metadata !81, metadata !"in_data", null, i32 3, metadata !89, i32 0, metadata !91} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 786478, i32 0, metadata !82, metadata !"conv2", metadata !"conv2", metadata !"_Z5conv2PA14_d", metadata !82, i32 3, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !64, i32 3} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786473, metadata !"SOC_convolution_c++/conv_14.cpp", metadata !"C:\5CUsers\5CMahmoud\5CDesktop", null} ; [ DW_TAG_file_type ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !85}
!85 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 64, i32 0, i32 0, metadata !63, metadata !87, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!89 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 12544, i64 64, i32 0, i32 0, metadata !63, metadata !90, i32 0, i32 0} ; [ DW_TAG_array_type ]
!90 = metadata !{metadata !88, metadata !88}
!91 = metadata !{i32 41, i32 1, metadata !70, null}
!92 = metadata !{i32 3, i32 19, metadata !81, metadata !91}
!93 = metadata !{i32 786689, metadata !71, metadata !"ip", null, i32 5, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 50176, i64 64, i32 0, i32 0, metadata !63, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ]
!95 = metadata !{metadata !78, metadata !78}
!96 = metadata !{i32 5, i32 21, metadata !71, null}
!97 = metadata !{i32 786688, metadata !70, metadata !"fifo_in_temp", metadata !72, i32 10, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 10, i32 9, metadata !70, null}
!99 = metadata !{i32 786688, metadata !70, metadata !"in_conv2", metadata !72, i32 12, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 12, i32 9, metadata !70, null}
!101 = metadata !{i32 786689, metadata !102, metadata !"inp", null, i32 3, metadata !94, i32 0, metadata !104} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 786478, i32 0, metadata !103, metadata !"conv1", metadata !"conv1", metadata !"_Z5conv1PA28_d", metadata !103, i32 3, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !64, i32 3} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786473, metadata !"SOC_convolution_c++/conv_28.cpp", metadata !"C:\5CUsers\5CMahmoud\5CDesktop", null} ; [ DW_TAG_file_type ]
!104 = metadata !{i32 16, i32 1, metadata !70, null}
!105 = metadata !{i32 3, i32 20, metadata !102, metadata !104}
!106 = metadata !{i32 7, i32 17, metadata !107, metadata !104}
!107 = metadata !{i32 786443, metadata !108, i32 7, i32 3, metadata !103, i32 1} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786443, metadata !102, i32 3, i32 33, metadata !103, i32 0} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 7, i32 25, metadata !107, metadata !104}
!110 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !103, i32 7, metadata !111, i32 0, metadata !104} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!112 = metadata !{i32 18, i32 15, metadata !113, null}
!113 = metadata !{i32 786443, metadata !70, i32 18, i32 1, metadata !72, i32 1} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 9, i32 5, metadata !115, metadata !104}
!115 = metadata !{i32 786443, metadata !116, i32 8, i32 29, metadata !103, i32 4} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786443, metadata !117, i32 8, i32 4, metadata !103, i32 3} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !107, i32 7, i32 29, metadata !103, i32 2} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 8, i32 17, metadata !116, metadata !104}
!119 = metadata !{i32 8, i32 25, metadata !116, metadata !104}
!120 = metadata !{i32 786688, metadata !116, metadata !"j", metadata !103, i32 8, metadata !111, i32 0, metadata !104} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 18, i32 23, metadata !113, null}
!122 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !72, i32 18, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 6, i32 15, metadata !124, metadata !69}
!124 = metadata !{i32 786443, metadata !125, i32 6, i32 2, metadata !59, i32 1} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !58, i32 4, i32 31, metadata !59, i32 0} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 21, i32 3, metadata !127, null}
!127 = metadata !{i32 786443, metadata !128, i32 19, i32 27, metadata !72, i32 4} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 19, i32 2, metadata !72, i32 3} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !113, i32 18, i32 27, metadata !72, i32 2} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786688, metadata !70, metadata !"counter_buffer1", metadata !72, i32 7, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 19, i32 15, metadata !128, null}
!132 = metadata !{i32 19, i32 23, metadata !128, null}
!133 = metadata !{i32 786688, metadata !128, metadata !"j", metadata !72, i32 19, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 6, i32 24, metadata !124, metadata !69}
!135 = metadata !{i32 30, i32 15, metadata !136, null}
!136 = metadata !{i32 786443, metadata !70, i32 30, i32 1, metadata !72, i32 5} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 8, i32 3, metadata !138, metadata !69}
!138 = metadata !{i32 786443, metadata !124, i32 6, i32 28, metadata !59, i32 2} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !59, i32 6, metadata !111, i32 0, metadata !69} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 30, i32 23, metadata !136, null}
!141 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !72, i32 30, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 8, i32 17, metadata !143, metadata !91}
!143 = metadata !{i32 786443, metadata !144, i32 8, i32 3, metadata !82, i32 1} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !81, i32 3, i32 36, metadata !82, i32 0} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 33, i32 3, metadata !146, null}
!146 = metadata !{i32 786443, metadata !147, i32 31, i32 27, metadata !72, i32 8} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 31, i32 2, metadata !72, i32 7} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !136, i32 30, i32 27, metadata !72, i32 6} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786688, metadata !70, metadata !"counter_buffer2", metadata !72, i32 8, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 31, i32 15, metadata !147, null}
!151 = metadata !{i32 31, i32 23, metadata !147, null}
!152 = metadata !{i32 786688, metadata !147, metadata !"j", metadata !72, i32 31, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 8, i32 24, metadata !143, metadata !91}
!154 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !82, i32 8, metadata !111, i32 0, metadata !91} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 43, i32 15, metadata !156, null}
!156 = metadata !{i32 786443, metadata !70, i32 43, i32 1, metadata !72, i32 9} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 10, i32 5, metadata !158, metadata !91}
!158 = metadata !{i32 786443, metadata !159, i32 9, i32 28, metadata !82, i32 4} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !160, i32 9, i32 4, metadata !82, i32 3} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !143, i32 8, i32 28, metadata !82, i32 2} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 9, i32 17, metadata !159, metadata !91}
!162 = metadata !{i32 9, i32 24, metadata !159, metadata !91}
!163 = metadata !{i32 786688, metadata !159, metadata !"j", metadata !82, i32 9, metadata !111, i32 0, metadata !91} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 43, i32 22, metadata !156, null}
!165 = metadata !{i32 786688, metadata !156, metadata !"i", metadata !72, i32 43, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 46, i32 3, metadata !167, null}
!167 = metadata !{i32 786443, metadata !168, i32 44, i32 26, metadata !72, i32 12} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786443, metadata !169, i32 44, i32 2, metadata !72, i32 11} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786443, metadata !156, i32 43, i32 26, metadata !72, i32 10} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 44, i32 15, metadata !168, null}
!171 = metadata !{i32 44, i32 22, metadata !168, null}
!172 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !72, i32 44, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 51, i32 1, metadata !70, null}
