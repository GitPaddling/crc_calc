`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/31 21:16:14
// Design Name: 
// Module Name: tb_top
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


module tb_top(

    );

    localparam [31:0] CRC_POLY = 32'h04C11DB7;
    localparam [31:0] data = 32'h54784573;

    wire    [31:0]      crc_o; 
    wire    [31:0]      crc_o_sup;   

    reg    [31:0]      crc_out; 
    reg    [31:0]      crc_next;

    integer i;

    crc32  crc32_u(
        .crc_i(32'h00000000),
        .data_i(32'h54784573),
        .crc_o(crc_o)
    );

    crc32_sup  crc32_sup_u(
        .crc_i(32'h00000000),
        .data_i(32'h54784573),
        .crc_o(crc_o_sup)
    );

    initial begin
        crc_next = 0; // 初始值为0
        for (i = 31; i >= 0; i = i - 1) begin
            crc_next = (crc_next << 1) ^ (data[i] ^ crc_next[31] ? CRC_POLY : 32'b0);
        end
        crc_out = crc_next; // 最终CRC值输出
    end

endmodule

