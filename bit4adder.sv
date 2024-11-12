`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:07:07 PM
// Design Name: 
// Module Name: bit4adder
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


module bit4adder(
        input logic A0, A1, A2, A3,
        input logic B0, B1, B2, B3,
        input logic Cin,
        output logic S0, S1, S2, S3,
        output logic Cout

    );
    logic C0, C1, C2;
    
    fulladder FD1(.S(S0), .Cout(C0), .A(A0), .B(B0), .Cin(Cin));
    fulladder FD2(.S(S1), .Cout(C1), .A(A1), .B(B1), .Cin(C0));
    fulladder FD3(.S(S2), .Cout(C2), .A(A2), .B(B2), .Cin(C1));
    fulladder FD4(.S(S3), .Cout(Cout), .A(A3), .B(B3), .Cin(C2));
    
endmodule
