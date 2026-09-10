; ModuleID = '/home/pulp1/HLS_corrected/Control/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.hs_is_t = type { i1, i1, %"struct.ap_int<32>", %"struct.ap_int<4>" }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_int<4>" = type { %"struct.ap_int_base<4, true>" }
%"struct.ap_int_base<4, true>" = type { %"struct.ssdm_int<4, true>" }
%"struct.ssdm_int<4, true>" = type { i4 }
%"struct.ap_uint<5>" = type { %"struct.ap_int_base<5, false>" }
%"struct.ap_int_base<5, false>" = type { %"struct.ssdm_int<5, false>" }
%"struct.ssdm_int<5, false>" = type { i5 }
%"struct.ap_uint<11>" = type { %"struct.ap_int_base<11, false>" }
%"struct.ap_int_base<11, false>" = type { %"struct.ssdm_int<11, false>" }
%"struct.ssdm_int<11, false>" = type { i11 }
%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_int<32>" }
%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, true>" }
%"struct.ap_int_base<64, true>" = type { %"struct.ssdm_int<64, true>" }
%"struct.ssdm_int<64, true>" = type { i64 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_cont_ir(%struct.hs_is_t* noalias nocapture nonnull %a_i, %struct.hs_is_t* noalias nocapture nonnull %b_i, %struct.hs_is_t* noalias nocapture nonnull %c_i, %struct.hs_is_t* noalias nocapture nonnull %d_o, i1 zeroext %clear, i1 zeroext %enable, i1 zeroext %function, i1 zeroext %start, %"struct.ap_uint<5>"* nocapture readonly %shift, %"struct.ap_uint<11>"* nocapture readonly %len, %"struct.ap_uint<11>"* noalias nocapture nonnull %f_cnt, i1* noalias nocapture nonnull %f_valid, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %buffer_1_rd, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %buffer_1_rd1, %"struct.ap_int<64>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %buffer_1_wr, %"struct.ap_int<64>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %buffer_1_wr1, i1* noalias nocapture nonnull %compute_start1, i1 zeroext %compute_done1, i1* noalias nocapture nonnull %compute_start2, i1 zeroext %compute_done2, i1* noalias nocapture nonnull %slave_start1, i1 zeroext %slave_done1, i1* noalias nocapture nonnull %slave_start2, i1 zeroext %slave_done2) local_unnamed_addr #1 {
entry:
  %a_i_copy.0 = alloca i1, align 512
  %a_i_copy.1 = alloca i1, align 512
  %a_i_copy.2 = alloca i32, align 512
  %a_i_copy.3 = alloca i4, align 512
  %b_i_copy.0 = alloca i1, align 512
  %b_i_copy.1 = alloca i1, align 512
  %b_i_copy.2 = alloca i32, align 512
  %b_i_copy.3 = alloca i4, align 512
  %c_i_copy.0 = alloca i1, align 512
  %c_i_copy.1 = alloca i1, align 512
  %c_i_copy.2 = alloca i32, align 512
  %c_i_copy.3 = alloca i4, align 512
  %d_o_copy.0 = alloca i1, align 512
  %d_o_copy.1 = alloca i1, align 512
  %d_o_copy.2 = alloca i32, align 512
  %d_o_copy.3 = alloca i4, align 512
  %f_cnt_copy = alloca i11, align 512
  %f_valid_copy = alloca i1, align 512
  %buffer_1_rd_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %buffer_1_rd_copy, i32 0) ]
  %buffer_1_rd1_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %buffer_1_rd1_copy, i32 0) ]
  %buffer_1_wr_copy = alloca [20 x i64], align 512
  %buffer_1_wr1_copy = alloca [20 x i64], align 512
  %compute_start1_copy = alloca i1, align 512
  %compute_start2_copy = alloca i1, align 512
  %slave_start1_copy = alloca i1, align 512
  %slave_start2_copy = alloca i1, align 512
  %0 = bitcast %"struct.ap_int<64>"* %buffer_1_wr to [20 x %"struct.ap_int<64>"]*
  %1 = bitcast %"struct.ap_int<64>"* %buffer_1_wr1 to [20 x %"struct.ap_int<64>"]*
  call fastcc void @copy_in(%struct.hs_is_t* nonnull %a_i, i1* nonnull align 512 %a_i_copy.0, i1* nonnull align 512 %a_i_copy.1, i32* nonnull align 512 %a_i_copy.2, i4* nonnull align 512 %a_i_copy.3, %struct.hs_is_t* nonnull %b_i, i1* nonnull align 512 %b_i_copy.0, i1* nonnull align 512 %b_i_copy.1, i32* nonnull align 512 %b_i_copy.2, i4* nonnull align 512 %b_i_copy.3, %struct.hs_is_t* nonnull %c_i, i1* nonnull align 512 %c_i_copy.0, i1* nonnull align 512 %c_i_copy.1, i32* nonnull align 512 %c_i_copy.2, i4* nonnull align 512 %c_i_copy.3, %struct.hs_is_t* nonnull %d_o, i1* nonnull align 512 %d_o_copy.0, i1* nonnull align 512 %d_o_copy.1, i32* nonnull align 512 %d_o_copy.2, i4* nonnull align 512 %d_o_copy.3, %"struct.ap_uint<11>"* nonnull %f_cnt, i11* nonnull align 512 %f_cnt_copy, i1* nonnull %f_valid, i1* nonnull align 512 %f_valid_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %buffer_1_rd, i32* nonnull align 512 %buffer_1_rd_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %buffer_1_rd1, i32* nonnull align 512 %buffer_1_rd1_copy, [20 x %"struct.ap_int<64>"]* nonnull %0, [20 x i64]* nonnull align 512 %buffer_1_wr_copy, [20 x %"struct.ap_int<64>"]* nonnull %1, [20 x i64]* nonnull align 512 %buffer_1_wr1_copy, i1* nonnull %compute_start1, i1* nonnull align 512 %compute_start1_copy, i1* nonnull %compute_start2, i1* nonnull align 512 %compute_start2_copy, i1* nonnull %slave_start1, i1* nonnull align 512 %slave_start1_copy, i1* nonnull %slave_start2, i1* nonnull align 512 %slave_start2_copy)
  %2 = getelementptr [20 x i64], [20 x i64]* %buffer_1_wr_copy, i32 0, i32 0
  %3 = getelementptr [20 x i64], [20 x i64]* %buffer_1_wr1_copy, i32 0, i32 0
  call void @apatb_cont_hw(i1* %a_i_copy.0, i1* %a_i_copy.1, i32* %a_i_copy.2, i4* %a_i_copy.3, i1* %b_i_copy.0, i1* %b_i_copy.1, i32* %b_i_copy.2, i4* %b_i_copy.3, i1* %c_i_copy.0, i1* %c_i_copy.1, i32* %c_i_copy.2, i4* %c_i_copy.3, i1* %d_o_copy.0, i1* %d_o_copy.1, i32* %d_o_copy.2, i4* %d_o_copy.3, i1 %clear, i1 %enable, i1 %function, i1 %start, %"struct.ap_uint<5>"* %shift, %"struct.ap_uint<11>"* %len, i11* %f_cnt_copy, i1* %f_valid_copy, i32* %buffer_1_rd_copy, i32* %buffer_1_rd1_copy, i64* %2, i64* %3, i1* %compute_start1_copy, i1 %compute_done1, i1* %compute_start2_copy, i1 %compute_done2, i1* %slave_start1_copy, i1 %slave_done1, i1* %slave_start2_copy, i1 %slave_done2)
  call void @copy_back(%struct.hs_is_t* %a_i, i1* %a_i_copy.0, i1* %a_i_copy.1, i32* %a_i_copy.2, i4* %a_i_copy.3, %struct.hs_is_t* %b_i, i1* %b_i_copy.0, i1* %b_i_copy.1, i32* %b_i_copy.2, i4* %b_i_copy.3, %struct.hs_is_t* %c_i, i1* %c_i_copy.0, i1* %c_i_copy.1, i32* %c_i_copy.2, i4* %c_i_copy.3, %struct.hs_is_t* %d_o, i1* %d_o_copy.0, i1* %d_o_copy.1, i32* %d_o_copy.2, i4* %d_o_copy.3, %"struct.ap_uint<11>"* %f_cnt, i11* %f_cnt_copy, i1* %f_valid, i1* %f_valid_copy, %"class.hls::stream<ap_uint<32>, 0>"* %buffer_1_rd, i32* %buffer_1_rd_copy, %"class.hls::stream<ap_uint<32>, 0>"* %buffer_1_rd1, i32* %buffer_1_rd1_copy, [20 x %"struct.ap_int<64>"]* %0, [20 x i64]* %buffer_1_wr_copy, [20 x %"struct.ap_int<64>"]* %1, [20 x i64]* %buffer_1_wr1_copy, i1* %compute_start1, i1* %compute_start1_copy, i1* %compute_start2, i1* %compute_start2_copy, i1* %slave_start1, i1* %slave_start1_copy, i1* %slave_start2, i1* %slave_start2_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.hs_is_t* noalias readonly "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0" %.0, i1* noalias nocapture align 512 "unpacked"="1.1" %.1, i32* noalias nocapture align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias readonly "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0" %.01, i1* noalias nocapture align 512 "unpacked"="3.1" %.12, i32* noalias nocapture align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias readonly "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0" %.02, i1* noalias nocapture align 512 "unpacked"="5.1" %.13, i32* noalias nocapture align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias readonly "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0" %.03, i1* noalias nocapture align 512 "unpacked"="7.1" %.14, i32* noalias nocapture align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias readonly "unpacked"="8", i11* noalias nocapture align 512 "unpacked"="9.0.0.0", i1* noalias readonly "unpacked"="10", i1* noalias align 512 "unpacked"="11", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="13", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="15", [20 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="16", [20 x i64]* noalias nocapture align 512 "unpacked"="17.0.0.0", [20 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="18", [20 x i64]* noalias nocapture align 512 "unpacked"="19.0.0.0", i1* noalias readonly "unpacked"="20", i1* noalias align 512 "unpacked"="21", i1* noalias readonly "unpacked"="22", i1* noalias align 512 "unpacked"="23", i1* noalias readonly "unpacked"="24", i1* noalias align 512 "unpacked"="25", i1* noalias readonly "unpacked"="26", i1* noalias align 512 "unpacked"="27") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.24(i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3, %struct.hs_is_t* %0)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.24(i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34, %struct.hs_is_t* %1)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.24(i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35, %struct.hs_is_t* %2)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.24(i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36, %struct.hs_is_t* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>"(i11* align 512 %5, %"struct.ap_uint<11>"* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %9, %"class.hls::stream<ap_uint<32>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %11, %"class.hls::stream<ap_uint<32>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>.42.48"([20 x i64]* align 512 %13, [20 x %"struct.ap_int<64>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>.42.48"([20 x i64]* align 512 %15, [20 x %"struct.ap_int<64>"]* %14)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %17, i1* %16)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %19, i1* %18)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %21, i1* %20)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %23, i1* %22)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i1* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture readonly align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture readonly align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0" %.03, i1* noalias nocapture readonly align 512 "unpacked"="7.1" %.14, i32* noalias nocapture readonly align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture readonly align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias "unpacked"="8", i11* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="13", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="15", [20 x %"struct.ap_int<64>"]* noalias "unpacked"="16", [20 x i64]* noalias nocapture readonly align 512 "unpacked"="17.0.0.0", [20 x %"struct.ap_int<64>"]* noalias "unpacked"="18", [20 x i64]* noalias nocapture readonly align 512 "unpacked"="19.0.0.0", i1* noalias "unpacked"="20", i1* noalias readonly align 512 "unpacked"="21", i1* noalias "unpacked"="22", i1* noalias readonly align 512 "unpacked"="23", i1* noalias "unpacked"="24", i1* noalias readonly align 512 "unpacked"="25", i1* noalias "unpacked"="26", i1* noalias readonly align 512 "unpacked"="27") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %0, i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %1, i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %2, i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %3, i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.80"(%"struct.ap_uint<11>"* %4, i11* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.251"(%"class.hls::stream<ap_uint<32>, 0>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.251"(%"class.hls::stream<ap_uint<32>, 0>"* %10, i32* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>"([20 x %"struct.ap_int<64>"]* %12, [20 x i64]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>"([20 x %"struct.ap_int<64>"]* %14, [20 x i64]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %16, i1* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %18, i1* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %20, i1* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %22, i1* align 512 %23)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>"([20 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [20 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [20 x %"struct.ap_int<64>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x i64], [20 x i64]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [20 x %"struct.ap_int<64>"], [20 x %"struct.ap_int<64>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>.42.48"([20 x i64]* noalias nocapture align 512 "unpacked"="0.0.0.0", [20 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [20 x %"struct.ap_int<64>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x %"struct.ap_int<64>"], [20 x %"struct.ap_int<64>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [20 x i64], [20 x i64]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.80"(%"struct.ap_uint<11>"* noalias "unpacked"="0", i11* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<11>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<11>", %"struct.ap_uint<11>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i11* %1 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i11
  store i11 %5, i11* %.01.0.05, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>"(i11* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<11>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<11>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<11>", %"struct.ap_uint<11>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i11* %.0.0.04 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i11
  store i11 %5, i11* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3) unnamed_addr #3 {
entry:
  %1 = icmp eq %struct.hs_is_t* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 0
  %2 = bitcast i1* %.02 to i8*
  %3 = load i8, i8* %2
  %4 = trunc i8 %3 to i1
  store i1 %4, i1* %.01, align 1
  %.12 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 1
  %5 = bitcast i1* %.13 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.12, align 1
  %.23.0.0.010 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %8 = load i32, i32* %.2, align 512
  store i32 %8, i32* %.23.0.0.010, align 4
  %.34.0.0.016 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %9 = bitcast i4* %.3 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i4
  store i4 %11, i4* %.34.0.0.016, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.hs_is_t.24(i1* noalias nocapture align 512 "unpacked"="0.0" %.02, i1* noalias nocapture align 512 "unpacked"="0.1" %.13, i32* noalias nocapture align 512 "unpacked"="0.2.0.0.0" %.2, i4* noalias nocapture align 512 "unpacked"="0.3.0.0.0" %.3, %struct.hs_is_t* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %1 = icmp eq %struct.hs_is_t* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 0
  %2 = bitcast i1* %.0 to i8*
  %3 = load i8, i8* %2
  %4 = trunc i8 %3 to i1
  store i1 %4, i1* %.02, align 512
  %.1 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 1
  %5 = bitcast i1* %.1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.13, align 512
  %.2.0.0.09 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %8 = load i32, i32* %.2.0.0.09, align 4
  store i32 %8, i32* %.2, align 512
  %.3.0.0.015 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %9 = bitcast i4* %.3.0.0.015 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i4
  store i4 %11, i4* %.3, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.247"(i32* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.247"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
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

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.251"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.254"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.254"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
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

declare void @apatb_cont_hw(i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, i11*, i1*, i32*, i32*, i64*, i64*, i1*, i1, i1*, i1, i1*, i1, i1*, i1)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i1* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture readonly align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture readonly align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0" %.03, i1* noalias nocapture readonly align 512 "unpacked"="7.1" %.14, i32* noalias nocapture readonly align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture readonly align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias "unpacked"="8", i11* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="13", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="15", [20 x %"struct.ap_int<64>"]* noalias "unpacked"="16", [20 x i64]* noalias nocapture readonly align 512 "unpacked"="17.0.0.0", [20 x %"struct.ap_int<64>"]* noalias "unpacked"="18", [20 x i64]* noalias nocapture readonly align 512 "unpacked"="19.0.0.0", i1* noalias "unpacked"="20", i1* noalias readonly align 512 "unpacked"="21", i1* noalias "unpacked"="22", i1* noalias readonly align 512 "unpacked"="23", i1* noalias "unpacked"="24", i1* noalias readonly align 512 "unpacked"="25", i1* noalias "unpacked"="26", i1* noalias readonly align 512 "unpacked"="27") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %0, i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %1, i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %2, i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %3, i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.80"(%"struct.ap_uint<11>"* %4, i11* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.251"(%"class.hls::stream<ap_uint<32>, 0>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.251"(%"class.hls::stream<ap_uint<32>, 0>"* %10, i32* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>"([20 x %"struct.ap_int<64>"]* %12, [20 x i64]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_int<64>"([20 x %"struct.ap_int<64>"]* %14, [20 x i64]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %16, i1* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %18, i1* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %20, i1* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %22, i1* align 512 %23)
  ret void
}

define void @cont_hw_stub_wrapper(i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, i11*, i1*, i32*, i32*, i64*, i64*, i1*, i1, i1*, i1, i1*, i1, i1*, i1) #8 {
entry:
  %36 = alloca %struct.hs_is_t
  %37 = alloca %struct.hs_is_t
  %38 = alloca %struct.hs_is_t
  %39 = alloca %struct.hs_is_t
  %40 = alloca %"struct.ap_uint<11>"
  %41 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %42 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %43 = alloca [20 x %"struct.ap_int<64>"]
  %44 = alloca [20 x %"struct.ap_int<64>"]
  %45 = bitcast i64* %26 to [20 x i64]*
  %46 = bitcast i64* %27 to [20 x i64]*
  call void @copy_out(%struct.hs_is_t* %36, i1* %0, i1* %1, i32* %2, i4* %3, %struct.hs_is_t* %37, i1* %4, i1* %5, i32* %6, i4* %7, %struct.hs_is_t* %38, i1* %8, i1* %9, i32* %10, i4* %11, %struct.hs_is_t* %39, i1* %12, i1* %13, i32* %14, i4* %15, %"struct.ap_uint<11>"* %40, i11* %22, i1* null, i1* %23, %"class.hls::stream<ap_uint<32>, 0>"* %41, i32* %24, %"class.hls::stream<ap_uint<32>, 0>"* %42, i32* %25, [20 x %"struct.ap_int<64>"]* %43, [20 x i64]* %45, [20 x %"struct.ap_int<64>"]* %44, [20 x i64]* %46, i1* null, i1* %28, i1* null, i1* %30, i1* null, i1* %32, i1* null, i1* %34)
  %47 = bitcast [20 x %"struct.ap_int<64>"]* %43 to %"struct.ap_int<64>"*
  %48 = bitcast [20 x %"struct.ap_int<64>"]* %44 to %"struct.ap_int<64>"*
  call void @cont_hw_stub(%struct.hs_is_t* %36, %struct.hs_is_t* %37, %struct.hs_is_t* %38, %struct.hs_is_t* %39, i1 %16, i1 %17, i1 %18, i1 %19, %"struct.ap_uint<5>"* %20, %"struct.ap_uint<11>"* %21, %"struct.ap_uint<11>"* %40, i1* %23, %"class.hls::stream<ap_uint<32>, 0>"* %41, %"class.hls::stream<ap_uint<32>, 0>"* %42, %"struct.ap_int<64>"* %47, %"struct.ap_int<64>"* %48, i1* %28, i1 %29, i1* %30, i1 %31, i1* %32, i1 %33, i1* %34, i1 %35)
  call void @copy_in(%struct.hs_is_t* %36, i1* %0, i1* %1, i32* %2, i4* %3, %struct.hs_is_t* %37, i1* %4, i1* %5, i32* %6, i4* %7, %struct.hs_is_t* %38, i1* %8, i1* %9, i32* %10, i4* %11, %struct.hs_is_t* %39, i1* %12, i1* %13, i32* %14, i4* %15, %"struct.ap_uint<11>"* %40, i11* %22, i1* null, i1* %23, %"class.hls::stream<ap_uint<32>, 0>"* %41, i32* %24, %"class.hls::stream<ap_uint<32>, 0>"* %42, i32* %25, [20 x %"struct.ap_int<64>"]* %43, [20 x i64]* %45, [20 x %"struct.ap_int<64>"]* %44, [20 x i64]* %46, i1* null, i1* %28, i1* null, i1* %30, i1* null, i1* %32, i1* null, i1* %34)
  ret void
}

declare void @cont_hw_stub(%struct.hs_is_t*, %struct.hs_is_t*, %struct.hs_is_t*, %struct.hs_is_t*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, %"struct.ap_uint<11>"*, i1*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, %"struct.ap_int<64>"*, %"struct.ap_int<64>"*, i1*, i1, i1*, i1, i1*, i1, i1*, i1)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
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
