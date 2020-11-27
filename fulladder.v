module fulladder (sum,carry,a,b,cin);
output sum ,carry;
input a,b,cin;
wire x,y,z;
xor u1(x,a,b);
and u2(y,a,b);
and u3(z,x,cin);
or u4(carry,y,z);
xor u5(sum,x,cin);  
endmodule