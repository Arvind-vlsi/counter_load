`timescale 1ns / 1ps

module counter(
    input clk,ld,ce,
    input [3:0] loadin,
    output [3:0] dout
    );
    reg [3:0]temp=0;
    
    always@(posedge clk) begin
        if(ld==1'b1)
            temp<=loadin;
        else
            temp<=temp+1;
    end
  assign dout=(ce==1'b1)?temp:4'bzzzz;
 
    
endmodule
