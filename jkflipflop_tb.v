`timescale 1ps/1ps
`include "jkflipflop.v"
module jkff_tb;
reg j;
reg k;
reg clk;
reg reset; 

wire q;
wire qbar;


jkff init(
    .j(j),
    .k(k),
    .clk(clk),
    .reset(reset),
    .q(q),
    .qbar(qbar));
    initial begin
        clk=1'b1;
        forever #10 clk= ~clk;
    end
    
initial $dumpfile ("jkflipflop_tb.vcd");
initial $dumpvars (0, jkff_tb);

initial
begin
    j=0;
    k=0;
    reset=1;#20;
    j=1;
    k=0;
    reset=0;#20;
    j=0;
    k=1;
    reset=0;#20;
    j=1;
    k=1;
    reset=0;#20;
    j=1;
    k=1;
    reset=1;#20;
    j=0;
    k=0;
    reset=0;
    #20;

    #20 $finish;
end
initial
    $monitor(" j=%0d, k=%0d, q=%0d", j, k, q);
endmodule