`timescale 1ns/1ps
`include "Mux16X1.v"
module Mux16X1_tb ();
reg i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,sel3,sel2,sel1,sel0;
wire y_out;
Mux16X1 init(.i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .i8(i8),
    .i9(i9),
    .i10(i10),
    .i11(i11),
    .i12(i12),
    .i13(i13),
    .i14(i14),
    .i15(i15),
    .sel3(sel3),
    .sel2(sel2),
    .sel1(sel1),
    .sel0(sel0),
    .y_out(y_out));

always #5 i15=~i15;
always #10 i14=~i14;
always #15 i13=~i13;
always #20 i12=~i12;
always #25 i11=~i11;
always #30 i10=~i10;
always #25 i9=~i9;
always #40 i8=~i8;
always #45 i7=~i7;
always #50 i6=~i6;
always #55 i5=~i5;
always #60 i4=~i4;
always #65 i3=~i3;
always #70 i2=~i2;
always #75 i1=~i1;
always #80 i0=~i0;
always #85 sel0=~sel0;
always #90 sel1=~sel1;
always #95 sel2=~sel2;
always #100 sel3=~sel3;

initial $dumpfile("Mux16X1_tb.vcd");
initial $dumpvars(0, Mux16X1_tb);
initial
begin
    sel3=1'b0;
    sel2=1'b0;
    sel1=1'b0;
    sel0=1'b0;
    i0=1'b0;
    i1=1'b0;
    i2=1'b0;
    i3=1'b0;
    i4=1'b0;
    i5=1'b0;
    i6=1'b0;
    i7=1'b0;
    i8=1'b0;
    i9=1'b0;
    i10=1'b0;
    i11=1'b0;
    i12=1'b0;
    i13=1'b0;
    i14=1'b0;
    i15=1'b0;
    #500 $finish;

end
initial
begin
    $display ("Sel3\tSel2\tSel1\tSel0\tI0\tI1\tI2\tI3\tI4\tI5\tI6\tI7\tI8\tI9\tI10\tI11\tI12\tI13\tI14\tI15\tOutout");
    $monitor( "%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",sel3, sel2, sel1, sel0, i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15,  y_out);

end
endmodule