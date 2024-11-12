`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:15:02 PM
// Design Name: 
// Module Name: tb_bit4adder
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


module tb_bit4adder;
    logic a0, a1, a2, a3;
    logic b0, b1, b2, b3, c_in;
    logic s0, s1, s2, s3, c_out;
    
    bit4adder dut (
        .A0(a0),
        .A1(a1),
        .A2(a2),
        .A3(a3),
        .B0(b0),
        .B1(b1),
        .B2(b2),
        .B3(b3),
        .Cin(c_in),
        .Cout(c_out),
        .S0(s0),
        .S1(s1),
        .S2(s2),
        .S3(s3)

    );
    initial begin
    // Display header for results with fixed spacing
    $display("Time   | Cin | A3 A2 A1 A0 | B3 B2 B1 B0 | S3 S2 S1 S0 | Cout");
    $display("--------------------------------------------------------------");

    // Test case 1: Add 4'b0000 + 4'b0000 with Cin = 0
    a0 = 0; a1 = 0; a2 = 0; a3 = 0;
    b0 = 0; b1 = 0; b2 = 0; b3 = 0;
    c_in = 0; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, c_in, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 2: Add 4'b1111 + 4'b1111 with Cin = 1
    a0 = 1; a1 = 1; a2 = 1; a3 = 1;
    b0 = 1; b1 = 1; b2 = 1; b3 = 1;
    c_in = 1; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, c_in, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 3: Add 4'b1000 + 4'b1000 with Cin = 0
    a0 = 0; a1 = 0; a2 = 0; a3 = 1;
    b0 = 0; b1 = 0; b2 = 0; b3 = 1;
    c_in = 0; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, c_in, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 4: Add 4'b1100 + 4'b1100 with Cin = 0
    a0 = 0; a1 = 0; a2 = 1; a3 = 1;
    b0 = 0; b1 = 0; b2 = 1; b3 = 1;
    c_in = 0; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, c_in, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);
    // End simulation
            $finish;
    end
endmodule
