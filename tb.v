`timescale 1ns / 1ps

module tb();

reg clk=0,ld=0,ce=0;
reg [3:0]loadin=0;
wire [3:0]dout;

counter c1(clk,ld,ce,loadin,dout);

always #5 clk=~clk;

initial begin
    #1 ld=1'b1;
       loadin=4'b0011;
    #20 ld=1'b0;
        ce=1'b1;
     #100 ld=1'b1;
          loadin=4'b0100;
          ce=1'b0;
      #20  ld=1'b0;
           ce=1'b1;
           
       #150 $stop;
end
endmodule
