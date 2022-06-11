module tb_enc_4to2();
reg [3:0] in;
wire [1:0] out;

enc_4to2 enc1(.in(in),.out(out));

initial
$monitor($time,"in=%b,out=%b",in,out);

initial
begin
in=4'b0001;
#10 in=4'b0010;
#10 in=4'b0100;
#10 in=4'b1000;
#10 in=4'b0000;
end

initial
#50 $finish;

endmodule