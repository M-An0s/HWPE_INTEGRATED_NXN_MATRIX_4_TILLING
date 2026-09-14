; ModuleID = '/home/pulp1/HLS_corrected/Compute_block2in/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline
define void @apatb_compute2in_ir(%"struct.ap_int<32>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %buffer_a, %"struct.ap_int<32>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %buffer_b, %"struct.ap_int<32>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %buffer_2, i1 zeroext %phase) local_unnamed_addr #0 {
entry:
  %buffer_a_copy = alloca [8 x i32], align 512
  %buffer_b_copy = alloca [8 x i32], align 512
  %buffer_2_copy = alloca [16 x i32], align 512
  %0 = bitcast %"struct.ap_int<32>"* %buffer_a to [8 x %"struct.ap_int<32>"]*
  %1 = bitcast %"struct.ap_int<32>"* %buffer_b to [8 x %"struct.ap_int<32>"]*
  %2 = bitcast %"struct.ap_int<32>"* %buffer_2 to [16 x %"struct.ap_int<32>"]*
  call fastcc void @copy_in([8 x %"struct.ap_int<32>"]* nonnull %0, [8 x i32]* nonnull align 512 %buffer_a_copy, [8 x %"struct.ap_int<32>"]* nonnull %1, [8 x i32]* nonnull align 512 %buffer_b_copy, [16 x %"struct.ap_int<32>"]* nonnull %2, [16 x i32]* nonnull align 512 %buffer_2_copy)
  %3 = getelementptr [8 x i32], [8 x i32]* %buffer_a_copy, i32 0, i32 0
  %4 = getelementptr [8 x i32], [8 x i32]* %buffer_b_copy, i32 0, i32 0
  %5 = getelementptr [16 x i32], [16 x i32]* %buffer_2_copy, i32 0, i32 0
  call void @apatb_compute2in_hw(i32* %3, i32* %4, i32* %5, i1 %phase)
  call void @copy_back([8 x %"struct.ap_int<32>"]* %0, [8 x i32]* %buffer_a_copy, [8 x %"struct.ap_int<32>"]* %1, [8 x i32]* %buffer_b_copy, [16 x %"struct.ap_int<32>"]* %2, [16 x i32]* %buffer_2_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="0", [8 x i32]* noalias nocapture align 512 "unpacked"="1.0.0.0", [8 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="2", [8 x i32]* noalias nocapture align 512 "unpacked"="3.0.0.0", [16 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="4", [16 x i32]* noalias nocapture align 512 "unpacked"="5.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>"([8 x i32]* align 512 %1, [8 x %"struct.ap_int<32>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>"([8 x i32]* align 512 %3, [8 x %"struct.ap_int<32>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>"([16 x i32]* align 512 %5, [16 x %"struct.ap_int<32>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [8 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [16 x %"struct.ap_int<32>"]* noalias "unpacked"="4", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>.36.42"([8 x %"struct.ap_int<32>"]* %0, [8 x i32]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>.36.42"([8 x %"struct.ap_int<32>"]* %2, [8 x i32]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* %4, [16 x i32]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>"([16 x i32]* noalias nocapture align 512 "unpacked"="0.0.0.0", [16 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>"([8 x i32]* noalias nocapture align 512 "unpacked"="0.0.0.0", [8 x %"struct.ap_int<32>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<32>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_int<32>"], [8 x %"struct.ap_int<32>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i32], [8 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<32>.36.42"([8 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<32>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i32], [8 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_int<32>"], [8 x %"struct.ap_int<32>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_compute2in_hw(i32*, i32*, i32*, i1)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([8 x %"struct.ap_int<32>"]* noalias "unpacked"="0", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [8 x %"struct.ap_int<32>"]* noalias "unpacked"="2", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [16 x %"struct.ap_int<32>"]* noalias "unpacked"="4", [16 x i32]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_int<32>.8"([16 x %"struct.ap_int<32>"]* %4, [16 x i32]* align 512 %5)
  ret void
}

define void @compute2in_hw_stub_wrapper(i32*, i32*, i32*, i1) #4 {
entry:
  %4 = alloca [8 x %"struct.ap_int<32>"]
  %5 = alloca [8 x %"struct.ap_int<32>"]
  %6 = alloca [16 x %"struct.ap_int<32>"]
  %7 = bitcast i32* %0 to [8 x i32]*
  %8 = bitcast i32* %1 to [8 x i32]*
  %9 = bitcast i32* %2 to [16 x i32]*
  call void @copy_out([8 x %"struct.ap_int<32>"]* %4, [8 x i32]* %7, [8 x %"struct.ap_int<32>"]* %5, [8 x i32]* %8, [16 x %"struct.ap_int<32>"]* %6, [16 x i32]* %9)
  %10 = bitcast [8 x %"struct.ap_int<32>"]* %4 to %"struct.ap_int<32>"*
  %11 = bitcast [8 x %"struct.ap_int<32>"]* %5 to %"struct.ap_int<32>"*
  %12 = bitcast [16 x %"struct.ap_int<32>"]* %6 to %"struct.ap_int<32>"*
  call void @compute2in_hw_stub(%"struct.ap_int<32>"* %10, %"struct.ap_int<32>"* %11, %"struct.ap_int<32>"* %12, i1 %3)
  call void @copy_in([8 x %"struct.ap_int<32>"]* %4, [8 x i32]* %7, [8 x %"struct.ap_int<32>"]* %5, [8 x i32]* %8, [16 x %"struct.ap_int<32>"]* %6, [16 x i32]* %9)
  ret void
}

declare void @compute2in_hw_stub(%"struct.ap_int<32>"*, %"struct.ap_int<32>"*, %"struct.ap_int<32>"*, i1)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
