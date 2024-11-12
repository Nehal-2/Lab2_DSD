`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 04:19:28 PM
// Design Name: 
// Module Name: tb_adder_subtractor_4bit
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


module tb_adder_subtractor_4bit;
    logic a0, a1, a2, a3;
    logic b0, b1, b2, b3, m;
    logic s0, s1, s2, s3, c_out;
    
    adder_subtractor_4bit dut (
        .A0(a0),
        .A1(a1),
        .A2(a2),
        .A3(a3),
        .B0(b0),
        .B1(b1),
        .B2(b2),
        .B3(b3),
        .M(m),
        .Cout(c_out),
        .S0(s0),
        .S1(s1),
        .S2(s2),
        .S3(s3)

    );
    initial begin
    // Display header for results with fixed spacing
    $display("Time   | M | A3 A2 A1 A0 | B3 B2 B1 B0 | S3 S2 S1 S0 | Cout");
    $display("--------------------------------------------------------------");

    // Test case 1: Add 4'b0000 + 4'b0000
    a0 = 0; a1 = 0; a2 = 0; a3 = 0;
    b0 = 0; b1 = 0; b2 = 0; b3 = 0;
    m = 0; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, m, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 2: Subtract 4'b1111 - 4'b1111 
    a0 = 1; a1 = 1; a2 = 1; a3 = 1;
    b0 = 1; b1 = 1; b2 = 1; b3 = 1;
    m = 1; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, m, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 3: Subtract 4'b0010 - 4'b0001
    a0 = 0; a1 = 1; a2 = 0; a3 = 0;
    b0 = 1; b1 = 0; b2 = 0; b3 = 0;
    m = 1; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, m, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);

    // Test case 4: Add 4'b1100 + 4'b1100
    a0 = 0; a1 = 0; a2 = 1; a3 = 1;
    b0 = 0; b1 = 0; b2 = 1; b3 = 1;
    m = 0; #10;
    $display("%0t   |  %b   |  %b %b %b %b   |  %b %b %b %b   |  %b %b %b %b   |   %b", 
             $time, m, a3, a2, a1, a0, b3, b2, b1, b0, s3, s2, s1, s0, c_out);
    // End simulation
            $finish;
    end
endmodule
