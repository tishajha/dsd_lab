`timescale 10ns/10ps
`include "fulladder.v"
module fulladder_tb ();
reg a,b,cin;
wire sum ,carry;
fulladder init(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);
initial $dumpfile("fulladder_tb.vcd");
initial $dumpvars(0, fulladder_tb);
initial begin
     a = 0;
     b = 0;
     cin = 0;
     #10;
     a = 0;
     b = 0;
     cin = 1;
     #10;
     a = 0;
     b = 1;
     cin = 0;
     #10;
     a = 0;
     b = 1;
     cin = 1;
     #10;
     a = 1;
     b = 0;
     cin = 0;
     #10;
     a = 1;
     b = 0;
     cin = 1;
     #10;
     a = 1;
     b = 1;
     cin = 0;
     #10;
     a = 1;
     b = 1;
     cin = 1;
     #10;
     #10 $finish ;

end
initial
begin
    $display("A\tB\tCin\tSum\tCarry");
    $monitor("%b\t%b\t%b\t%b\t%b",a,b,cin,sum,carry);
end
    
endmodule