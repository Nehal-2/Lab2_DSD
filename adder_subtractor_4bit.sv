`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 04:09:44 PM
// Design Name: 
// Module Name: adder_subtractor_4bit
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


module adder_subtractor_4bit(
        input logic A0, A1, A2, A3,
        input logic B0, B1, B2, B3,
        input logic M,
        output logic S0, S1, S2, S3,
        output logic Cout

    );
    logic C1, C2, C3;
    logic X0, X1, X2, X3;
    
    xor u0(X0, M, B0);
    xor u1(X1, M, B1);
    xor u2(X2, M, B2);
    xor u3(X3, M, B3);
    
    fulladder FA1(.S(S0), .Cout(C1), .A(A0), .B(X0), .Cin(M));
    fulladder FA2(.S(S1), .Cout(C2), .A(A1), .B(X1), .Cin(C1));
    fulladder FA3(.S(S2), .Cout(C3), .A(A2), .B(X2), .Cin(C2));
    fulladder FA4(.S(S3), .Cout(Cout), .A(A3), .B(X3), .Cin(C3));
    
endmodule
