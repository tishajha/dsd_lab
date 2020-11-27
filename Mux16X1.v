module Mux2X1 (
    output y_out,
    input i1,
    input i0,sel 
);
wire sel_bar,y0,y1;
not(sel_bar,sel);
and(y0,i0,sel_bar);
and(y1,i1,sel);
or(y_out,y0,y1);   
endmodule


module MUX4X1 (
    output y_out,
    input i3,i2,i1,i0,sel1,sel0
);
wire y_M0,y_M1;
Mux2X1 M0(y_M0,i0,i1,sel1);
Mux2X1 M1(y_M1,i2,i3,sel1);
Mux2X1 M2(y_out,y_M1,y_M1,sel0);  
endmodule


module Mux8X1 (
    output y_out,
    input i7,i6,i5,i4,i3,i2,i1,i0,sel2,sel1,sel0
);
wire y_M0,y_M1;
MUX4X1 M0(y_M0,i3,i2,i1,i0,sel1,sel0);
MUX4X1 M1(y_M1,i7,i6,i5,i4,sel1,sel0);
Mux2X1 M2(y_out,y_M0,y_M1,sel2);   
endmodule


module Mux16X1 (
    output y_out,
    input i15,i14,i13,i12,i11,i10,i9,i8,i7,i6,i5,i4,i3,i2,i1,i0,sel3,sel2,sel1,sel0
);
wire y_M0,y_M1;
Mux8X1 M0(y_M0,i7,i6,i5,i4,i3,i2,i1,i0,sel2,sel1,sel0);
Mux8X1 M1(y_M1,i15,i14,i13,i12,i11,i10,i9,i8,sel2,sel1,sel0);
Mux2X1 M2(y_out,y_M0,y_M1,sel3);  
endmodule