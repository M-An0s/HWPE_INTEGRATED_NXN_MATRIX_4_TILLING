; ModuleID = '/home/pulp1/HLS_corrected/Compute_block/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, true>" }
%"struct.ap_int_base<64, true>" = type { %"struct.ssdm_int<64, true>" }
%"struct.ssdm_int<64, true>" = type { i64 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_int<32>" }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_compute_ir(%"struct.ap_int<64>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %buffer_1, %"struct.ap_int<32>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %buffer_2, i1 zeroext %phase, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %fwd_out1, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %fwd_out2) local_unnamed_addr #1 {
entry:
  %buffer_1_copy = alloca [8 x i64], align 512
  %buffer_2_copy = alloca [16 x i32], align 512
  %fwd_out1_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %fwd_out1_copy, i32 0) ]
  %fwd_out2_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %fwd_out2_copy, i32 0) ]
  %0 = bitcast %"struct.ap_int<64>"* %buffer_1 to [8 x %"struct.ap_int<64>"]*
  %1 = bitcast %"struct.ap_int<32>"* %buffer_2 to [16 x %"struct.ap_int<32>"]*
  call fastcc void @copy_in([8 x %"struct.ap_int<64>"]* nonnull %0, [8 x i64]* nonnull align 512 %buffer_1_copy, [16 x %"struct.ap_int<32>"]* nonnull %1, [16 x i32]* nonnull align 512 %buffer_2_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %fwd_out1, i32* nonnull align 512 %fwd_out1_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %fwd_out2, i32* nonnull align 512 %fwd_out2_copy)
  %2 = getelementptr [8 x i64], [8 x i64]* %buffer_1_copy, i32 0, i32 0
  %3 = getelementptr [16 x i32], [16 x i32]* %buffer_2_copy, i32 0, i32 0
  call void @apatb_compute_hw(i64* %2, i32* %3, i1 %phase, i32* %fwd_out1_copy, i32* %fwd_out2_copy)
  call void @copy_back([8 x %"struct.ap_int<64>"]* %0, [8 x i64]* %buffer_1_copy, [16 x %"struct.ap_int<32>"]* %1, [16 x i32]* %buffer_2_copy, %"class.hls::stream<ap_uint<32>, 0>"* %fwd_out1, i32* %fwd_out1_copy, %"class.hls::stream<ap_uint<32>, 0>"* %fwd_out2, i32* %fwd_out2_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([8 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="0", [8 x i64]* noalias nocapture align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="2", [16 x i32]* noalias nocapture align 512 "unpacked"="3.0.0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="7") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>.32"([8 x i64]* align 512 %1, [8 x %"struct.ap_int<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>"([16 x i32]* align 512 %3, [16 x %"struct.ap_int<32>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.65"(i32* align 512 %5, %"class.hls::stream<ap_uint<32>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.65"(i32* align 512 %7, %"class.hls::stream<ap_uint<32>, 0>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="7") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>"([8 x %"struct.ap_int<64>"]* %0, [8 x i64]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* %2, [16 x i32]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %6, i32* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #4 {
entry:
  %2 = icmp eq [16 x %"struct.ap_int<32>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x i32], [16 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_int<32>"], [16 x %"struct.ap_int<32>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>"([16 x i32]* noalias nocapture align 512 "unpacked"="0.0.0.0", [16 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = icmp eq [16 x %"struct.ap_int<32>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_int<32>"], [16 x %"struct.ap_int<32>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>.32"([8 x i64]* noalias nocapture align 512 "unpacked"="0.0.0.0", [8 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<64>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_int<64>"], [8 x %"struct.ap_int<64>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i64], [8 x i64]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>"([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #4 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<64>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i64], [8 x i64]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_int<64>"], [8 x %"struct.ap_int<64>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.61"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.61"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %9 = call %"struct.ssdm_int<32, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_uint<32>, 0>s.i32"(i32 %8)
  %oldret2 = insertvalue %"struct.ap_int_base<32, true>" undef, %"struct.ssdm_int<32, true>" %9, 0
  %oldret1 = insertvalue %"struct.ap_int<32>" undef, %"struct.ap_int_base<32, true>" %oldret2, 0
  %oldret = insertvalue %"class.hls::stream<ap_uint<32>, 0>" undef, %"struct.ap_int<32>" %oldret1, 0
  store %"class.hls::stream<ap_uint<32>, 0>" %oldret, %"class.hls::stream<ap_uint<32>, 0>"* %3
  %10 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal %"struct.ssdm_int<32, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_uint<32>, 0>s.i32"(i32 %A) #7 {
  %.0 = insertvalue %"struct.ssdm_int<32, true>" undef, i32 %A, 0
  %.01 = insertvalue %"struct.ap_int_base<32, true>" undef, %"struct.ssdm_int<32, true>" %.0, 0
  %oldret = extractvalue %"struct.ap_int_base<32, true>" %.01, 0
  ret %"struct.ssdm_int<32, true>" %oldret
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.65"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.68"(i32* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.68"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<ap_uint<32>, 0>s"(%"class.hls::stream<ap_uint<32>, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<ap_uint<32>, 0>s"(%"class.hls::stream<ap_uint<32>, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<ap_uint<32>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_int<32>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<32, true>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<32, true>" %A.0.0.0, 0
  ret i32 %A.0.0.0.0
}

declare void @apatb_compute_hw(i64*, i32*, i1, i32*, i32*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="7") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* %2, [16 x i32]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %6, i32* align 512 %7)
  ret void
}

define void @compute_hw_stub_wrapper(i64*, i32*, i1, i32*, i32*) #8 {
entry:
  %5 = alloca [8 x %"struct.ap_int<64>"]
  %6 = alloca [16 x %"struct.ap_int<32>"]
  %7 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %8 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %9 = bitcast i64* %0 to [8 x i64]*
  %10 = bitcast i32* %1 to [16 x i32]*
  call void @copy_out([8 x %"struct.ap_int<64>"]* %5, [8 x i64]* %9, [16 x %"struct.ap_int<32>"]* %6, [16 x i32]* %10, %"class.hls::stream<ap_uint<32>, 0>"* %7, i32* %3, %"class.hls::stream<ap_uint<32>, 0>"* %8, i32* %4)
  %11 = bitcast [8 x %"struct.ap_int<64>"]* %5 to %"struct.ap_int<64>"*
  %12 = bitcast [16 x %"struct.ap_int<32>"]* %6 to %"struct.ap_int<32>"*
  call void @compute_hw_stub(%"struct.ap_int<64>"* %11, %"struct.ap_int<32>"* %12, i1 %2, %"class.hls::stream<ap_uint<32>, 0>"* %7, %"class.hls::stream<ap_uint<32>, 0>"* %8)
  call void @copy_in([8 x %"struct.ap_int<64>"]* %5, [8 x i64]* %9, [16 x %"struct.ap_int<32>"]* %6, [16 x i32]* %10, %"class.hls::stream<ap_uint<32>, 0>"* %7, i32* %3, %"class.hls::stream<ap_uint<32>, 0>"* %8, i32* %4)
  ret void
}

declare void @compute_hw_stub(%"struct.ap_int<64>"*, %"struct.ap_int<32>"*, i1, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
