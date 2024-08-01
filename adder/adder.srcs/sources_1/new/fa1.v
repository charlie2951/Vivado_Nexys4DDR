`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 17:45:55
// Design Name: 
// Module Name: fa1
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


module fa1(
    input a,b,cin,
    output s,cout
    );
    
    assign s = a^b^cin;
    assign cout = (a & b)|(b & cin) |(a & cin);
endmodule
