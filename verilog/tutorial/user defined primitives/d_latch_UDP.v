`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 11:13:29 AM
// Design Name: 
// Module Name: d_latch_UDP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

primitive d_latch(q, clk, data);
   output reg q;
   input clk, data;

   table
   // clk data : q : q+
       0   1   : ? : 1;
       0   0   : ? : 0;
       1   ?   : ? : -;
   endtable
endprimitive

module d_latch_UDP(
    output q,
    input clk, data
);
   d_latch D1 (q, clk, data);
endmodule

