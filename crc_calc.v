// vim: ts=4 sw=4 expandtab

// THIS IS GENERATED VERILOG CODE.
// https://bues.ch/h/crcgen
// 
// This code is Public Domain.
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted.
// 
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
// SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER
// RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
// NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE
// USE OR PERFORMANCE OF THIS SOFTWARE.

`ifndef CRC_CALC_V_
`define CRC_CALC_V_

// CRC polynomial coefficients: x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
//                              0xEDB88320 (hex)
// CRC width:                   32 bits
// CRC shift direction:         right (little endian)
// Input word width:            32 bits

module crc_calc (
    input [31:0] crc_i,
    input [31:0] data_i,
    output [31:0] crc_o
);
    assign crc_o[0] = crc_i[0] ^ crc_i[1] ^ crc_i[2] ^ crc_i[3] ^ crc_i[4] ^ crc_i[6] ^ crc_i[7] ^ crc_i[8] ^ crc_i[16] ^ crc_i[20] ^ crc_i[22] ^ crc_i[23] ^ crc_i[26] ^ data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^ data_i[6] ^ data_i[7] ^ data_i[8] ^ data_i[16] ^ data_i[20] ^ data_i[22] ^ data_i[23] ^ data_i[26];
    assign crc_o[1] = crc_i[1] ^ crc_i[2] ^ crc_i[3] ^ crc_i[4] ^ crc_i[5] ^ crc_i[7] ^ crc_i[8] ^ crc_i[9] ^ crc_i[17] ^ crc_i[21] ^ crc_i[23] ^ crc_i[24] ^ crc_i[27] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^ data_i[7] ^ data_i[8] ^ data_i[9] ^ data_i[17] ^ data_i[21] ^ data_i[23] ^ data_i[24] ^ data_i[27];
    assign crc_o[2] = crc_i[0] ^ crc_i[2] ^ crc_i[3] ^ crc_i[4] ^ crc_i[5] ^ crc_i[6] ^ crc_i[8] ^ crc_i[9] ^ crc_i[10] ^ crc_i[18] ^ crc_i[22] ^ crc_i[24] ^ crc_i[25] ^ crc_i[28] ^ data_i[0] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^ data_i[6] ^ data_i[8] ^ data_i[9] ^ data_i[10] ^ data_i[18] ^ data_i[22] ^ data_i[24] ^ data_i[25] ^ data_i[28];
    assign crc_o[3] = crc_i[1] ^ crc_i[3] ^ crc_i[4] ^ crc_i[5] ^ crc_i[6] ^ crc_i[7] ^ crc_i[9] ^ crc_i[10] ^ crc_i[11] ^ crc_i[19] ^ crc_i[23] ^ crc_i[25] ^ crc_i[26] ^ crc_i[29] ^ data_i[1] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^ data_i[6] ^ data_i[7] ^ data_i[9] ^ data_i[10] ^ data_i[11] ^ data_i[19] ^ data_i[23] ^ data_i[25] ^ data_i[26] ^ data_i[29];
    assign crc_o[4] = crc_i[2] ^ crc_i[4] ^ crc_i[5] ^ crc_i[6] ^ crc_i[7] ^ crc_i[8] ^ crc_i[10] ^ crc_i[11] ^ crc_i[12] ^ crc_i[20] ^ crc_i[24] ^ crc_i[26] ^ crc_i[27] ^ crc_i[30] ^ data_i[2] ^ data_i[4] ^ data_i[5] ^ data_i[6] ^ data_i[7] ^ data_i[8] ^ data_i[10] ^ data_i[11] ^ data_i[12] ^ data_i[20] ^ data_i[24] ^ data_i[26] ^ data_i[27] ^ data_i[30];
    assign crc_o[5] = crc_i[0] ^ crc_i[3] ^ crc_i[5] ^ crc_i[6] ^ crc_i[7] ^ crc_i[8] ^ crc_i[9] ^ crc_i[11] ^ crc_i[12] ^ crc_i[13] ^ crc_i[21] ^ crc_i[25] ^ crc_i[27] ^ crc_i[28] ^ crc_i[31] ^ data_i[0] ^ data_i[3] ^ data_i[5] ^ data_i[6] ^ data_i[7] ^ data_i[8] ^ data_i[9] ^ data_i[11] ^ data_i[12] ^ data_i[13] ^ data_i[21] ^ data_i[25] ^ data_i[27] ^ data_i[28] ^ data_i[31];
    assign crc_o[6] = crc_i[0] ^ crc_i[2] ^ crc_i[3] ^ crc_i[9] ^ crc_i[10] ^ crc_i[12] ^ crc_i[13] ^ crc_i[14] ^ crc_i[16] ^ crc_i[20] ^ crc_i[23] ^ crc_i[28] ^ crc_i[29] ^ data_i[0] ^ data_i[2] ^ data_i[3] ^ data_i[9] ^ data_i[10] ^ data_i[12] ^ data_i[13] ^ data_i[14] ^ data_i[16] ^ data_i[20] ^ data_i[23] ^ data_i[28] ^ data_i[29];
    assign crc_o[7] = crc_i[1] ^ crc_i[3] ^ crc_i[4] ^ crc_i[10] ^ crc_i[11] ^ crc_i[13] ^ crc_i[14] ^ crc_i[15] ^ crc_i[17] ^ crc_i[21] ^ crc_i[24] ^ crc_i[29] ^ crc_i[30] ^ data_i[1] ^ data_i[3] ^ data_i[4] ^ data_i[10] ^ data_i[11] ^ data_i[13] ^ data_i[14] ^ data_i[15] ^ data_i[17] ^ data_i[21] ^ data_i[24] ^ data_i[29] ^ data_i[30];
    assign crc_o[8] = crc_i[0] ^ crc_i[2] ^ crc_i[4] ^ crc_i[5] ^ crc_i[11] ^ crc_i[12] ^ crc_i[14] ^ crc_i[15] ^ crc_i[16] ^ crc_i[18] ^ crc_i[22] ^ crc_i[25] ^ crc_i[30] ^ crc_i[31] ^ data_i[0] ^ data_i[2] ^ data_i[4] ^ data_i[5] ^ data_i[11] ^ data_i[12] ^ data_i[14] ^ data_i[15] ^ data_i[16] ^ data_i[18] ^ data_i[22] ^ data_i[25] ^ data_i[30] ^ data_i[31];
    assign crc_o[9] = crc_i[0] ^ crc_i[2] ^ crc_i[4] ^ crc_i[5] ^ crc_i[7] ^ crc_i[8] ^ crc_i[12] ^ crc_i[13] ^ crc_i[15] ^ crc_i[17] ^ crc_i[19] ^ crc_i[20] ^ crc_i[22] ^ crc_i[31] ^ data_i[0] ^ data_i[2] ^ data_i[4] ^ data_i[5] ^ data_i[7] ^ data_i[8] ^ data_i[12] ^ data_i[13] ^ data_i[15] ^ data_i[17] ^ data_i[19] ^ data_i[20] ^ data_i[22] ^ data_i[31];
    assign crc_o[10] = crc_i[0] ^ crc_i[2] ^ crc_i[4] ^ crc_i[5] ^ crc_i[7] ^ crc_i[9] ^ crc_i[13] ^ crc_i[14] ^ crc_i[18] ^ crc_i[21] ^ crc_i[22] ^ crc_i[26] ^ data_i[0] ^ data_i[2] ^ data_i[4] ^ data_i[5] ^ data_i[7] ^ data_i[9] ^ data_i[13] ^ data_i[14] ^ data_i[18] ^ data_i[21] ^ data_i[22] ^ data_i[26];
    assign crc_o[11] = crc_i[1] ^ crc_i[3] ^ crc_i[5] ^ crc_i[6] ^ crc_i[8] ^ crc_i[10] ^ crc_i[14] ^ crc_i[15] ^ crc_i[19] ^ crc_i[22] ^ crc_i[23] ^ crc_i[27] ^ data_i[1] ^ data_i[3] ^ data_i[5] ^ data_i[6] ^ data_i[8] ^ data_i[10] ^ data_i[14] ^ data_i[15] ^ data_i[19] ^ data_i[22] ^ data_i[23] ^ data_i[27];
    assign crc_o[12] = crc_i[2] ^ crc_i[4] ^ crc_i[6] ^ crc_i[7] ^ crc_i[9] ^ crc_i[11] ^ crc_i[15] ^ crc_i[16] ^ crc_i[20] ^ crc_i[23] ^ crc_i[24] ^ crc_i[28] ^ data_i[2] ^ data_i[4] ^ data_i[6] ^ data_i[7] ^ data_i[9] ^ data_i[11] ^ data_i[15] ^ data_i[16] ^ data_i[20] ^ data_i[23] ^ data_i[24] ^ data_i[28];
    assign crc_o[13] = crc_i[0] ^ crc_i[3] ^ crc_i[5] ^ crc_i[7] ^ crc_i[8] ^ crc_i[10] ^ crc_i[12] ^ crc_i[16] ^ crc_i[17] ^ crc_i[21] ^ crc_i[24] ^ crc_i[25] ^ crc_i[29] ^ data_i[0] ^ data_i[3] ^ data_i[5] ^ data_i[7] ^ data_i[8] ^ data_i[10] ^ data_i[12] ^ data_i[16] ^ data_i[17] ^ data_i[21] ^ data_i[24] ^ data_i[25] ^ data_i[29];
    assign crc_o[14] = crc_i[0] ^ crc_i[1] ^ crc_i[4] ^ crc_i[6] ^ crc_i[8] ^ crc_i[9] ^ crc_i[11] ^ crc_i[13] ^ crc_i[17] ^ crc_i[18] ^ crc_i[22] ^ crc_i[25] ^ crc_i[26] ^ crc_i[30] ^ data_i[0] ^ data_i[1] ^ data_i[4] ^ data_i[6] ^ data_i[8] ^ data_i[9] ^ data_i[11] ^ data_i[13] ^ data_i[17] ^ data_i[18] ^ data_i[22] ^ data_i[25] ^ data_i[26] ^ data_i[30];
    assign crc_o[15] = crc_i[1] ^ crc_i[2] ^ crc_i[5] ^ crc_i[7] ^ crc_i[9] ^ crc_i[10] ^ crc_i[12] ^ crc_i[14] ^ crc_i[18] ^ crc_i[19] ^ crc_i[23] ^ crc_i[26] ^ crc_i[27] ^ crc_i[31] ^ data_i[1] ^ data_i[2] ^ data_i[5] ^ data_i[7] ^ data_i[9] ^ data_i[10] ^ data_i[12] ^ data_i[14] ^ data_i[18] ^ data_i[19] ^ data_i[23] ^ data_i[26] ^ data_i[27] ^ data_i[31];
    assign crc_o[16] = crc_i[1] ^ crc_i[4] ^ crc_i[7] ^ crc_i[10] ^ crc_i[11] ^ crc_i[13] ^ crc_i[15] ^ crc_i[16] ^ crc_i[19] ^ crc_i[22] ^ crc_i[23] ^ crc_i[24] ^ crc_i[26] ^ crc_i[27] ^ crc_i[28] ^ data_i[1] ^ data_i[4] ^ data_i[7] ^ data_i[10] ^ data_i[11] ^ data_i[13] ^ data_i[15] ^ data_i[16] ^ data_i[19] ^ data_i[22] ^ data_i[23] ^ data_i[24] ^ data_i[26] ^ data_i[27] ^ data_i[28];
    assign crc_o[17] = crc_i[2] ^ crc_i[5] ^ crc_i[8] ^ crc_i[11] ^ crc_i[12] ^ crc_i[14] ^ crc_i[16] ^ crc_i[17] ^ crc_i[20] ^ crc_i[23] ^ crc_i[24] ^ crc_i[25] ^ crc_i[27] ^ crc_i[28] ^ crc_i[29] ^ data_i[2] ^ data_i[5] ^ data_i[8] ^ data_i[11] ^ data_i[12] ^ data_i[14] ^ data_i[16] ^ data_i[17] ^ data_i[20] ^ data_i[23] ^ data_i[24] ^ data_i[25] ^ data_i[27] ^ data_i[28] ^ data_i[29];
    assign crc_o[18] = crc_i[0] ^ crc_i[3] ^ crc_i[6] ^ crc_i[9] ^ crc_i[12] ^ crc_i[13] ^ crc_i[15] ^ crc_i[17] ^ crc_i[18] ^ crc_i[21] ^ crc_i[24] ^ crc_i[25] ^ crc_i[26] ^ crc_i[28] ^ crc_i[29] ^ crc_i[30] ^ data_i[0] ^ data_i[3] ^ data_i[6] ^ data_i[9] ^ data_i[12] ^ data_i[13] ^ data_i[15] ^ data_i[17] ^ data_i[18] ^ data_i[21] ^ data_i[24] ^ data_i[25] ^ data_i[26] ^ data_i[28] ^ data_i[29] ^ data_i[30];
    assign crc_o[19] = crc_i[0] ^ crc_i[1] ^ crc_i[4] ^ crc_i[7] ^ crc_i[10] ^ crc_i[13] ^ crc_i[14] ^ crc_i[16] ^ crc_i[18] ^ crc_i[19] ^ crc_i[22] ^ crc_i[25] ^ crc_i[26] ^ crc_i[27] ^ crc_i[29] ^ crc_i[30] ^ crc_i[31] ^ data_i[0] ^ data_i[1] ^ data_i[4] ^ data_i[7] ^ data_i[10] ^ data_i[13] ^ data_i[14] ^ data_i[16] ^ data_i[18] ^ data_i[19] ^ data_i[22] ^ data_i[25] ^ data_i[26] ^ data_i[27] ^ data_i[29] ^ data_i[30] ^ data_i[31];
    assign crc_o[20] = crc_i[0] ^ crc_i[3] ^ crc_i[4] ^ crc_i[5] ^ crc_i[6] ^ crc_i[7] ^ crc_i[11] ^ crc_i[14] ^ crc_i[15] ^ crc_i[16] ^ crc_i[17] ^ crc_i[19] ^ crc_i[22] ^ crc_i[27] ^ crc_i[28] ^ crc_i[30] ^ crc_i[31] ^ data_i[0] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^ data_i[6] ^ data_i[7] ^ data_i[11] ^ data_i[14] ^ data_i[15] ^ data_i[16] ^ data_i[17] ^ data_i[19] ^ data_i[22] ^ data_i[27] ^ data_i[28] ^ data_i[30] ^ data_i[31];
    assign crc_o[21] = crc_i[0] ^ crc_i[2] ^ crc_i[3] ^ crc_i[5] ^ crc_i[12] ^ crc_i[15] ^ crc_i[17] ^ crc_i[18] ^ crc_i[22] ^ crc_i[26] ^ crc_i[28] ^ crc_i[29] ^ crc_i[31] ^ data_i[0] ^ data_i[2] ^ data_i[3] ^ data_i[5] ^ data_i[12] ^ data_i[15] ^ data_i[17] ^ data_i[18] ^ data_i[22] ^ data_i[26] ^ data_i[28] ^ data_i[29] ^ data_i[31];
    assign crc_o[22] = crc_i[2] ^ crc_i[7] ^ crc_i[8] ^ crc_i[13] ^ crc_i[18] ^ crc_i[19] ^ crc_i[20] ^ crc_i[22] ^ crc_i[26] ^ crc_i[27] ^ crc_i[29] ^ crc_i[30] ^ data_i[2] ^ data_i[7] ^ data_i[8] ^ data_i[13] ^ data_i[18] ^ data_i[19] ^ data_i[20] ^ data_i[22] ^ data_i[26] ^ data_i[27] ^ data_i[29] ^ data_i[30];
    assign crc_o[23] = crc_i[0] ^ crc_i[3] ^ crc_i[8] ^ crc_i[9] ^ crc_i[14] ^ crc_i[19] ^ crc_i[20] ^ crc_i[21] ^ crc_i[23] ^ crc_i[27] ^ crc_i[28] ^ crc_i[30] ^ crc_i[31] ^ data_i[0] ^ data_i[3] ^ data_i[8] ^ data_i[9] ^ data_i[14] ^ data_i[19] ^ data_i[20] ^ data_i[21] ^ data_i[23] ^ data_i[27] ^ data_i[28] ^ data_i[30] ^ data_i[31];
    assign crc_o[24] = crc_i[2] ^ crc_i[3] ^ crc_i[6] ^ crc_i[7] ^ crc_i[8] ^ crc_i[9] ^ crc_i[10] ^ crc_i[15] ^ crc_i[16] ^ crc_i[21] ^ crc_i[23] ^ crc_i[24] ^ crc_i[26] ^ crc_i[28] ^ crc_i[29] ^ crc_i[31] ^ data_i[2] ^ data_i[3] ^ data_i[6] ^ data_i[7] ^ data_i[8] ^ data_i[9] ^ data_i[10] ^ data_i[15] ^ data_i[16] ^ data_i[21] ^ data_i[23] ^ data_i[24] ^ data_i[26] ^ data_i[28] ^ data_i[29] ^ data_i[31];
    assign crc_o[25] = crc_i[1] ^ crc_i[2] ^ crc_i[6] ^ crc_i[9] ^ crc_i[10] ^ crc_i[11] ^ crc_i[17] ^ crc_i[20] ^ crc_i[23] ^ crc_i[24] ^ crc_i[25] ^ crc_i[26] ^ crc_i[27] ^ crc_i[29] ^ crc_i[30] ^ data_i[1] ^ data_i[2] ^ data_i[6] ^ data_i[9] ^ data_i[10] ^ data_i[11] ^ data_i[17] ^ data_i[20] ^ data_i[23] ^ data_i[24] ^ data_i[25] ^ data_i[26] ^ data_i[27] ^ data_i[29] ^ data_i[30];
    assign crc_o[26] = crc_i[2] ^ crc_i[3] ^ crc_i[7] ^ crc_i[10] ^ crc_i[11] ^ crc_i[12] ^ crc_i[18] ^ crc_i[21] ^ crc_i[24] ^ crc_i[25] ^ crc_i[26] ^ crc_i[27] ^ crc_i[28] ^ crc_i[30] ^ crc_i[31] ^ data_i[2] ^ data_i[3] ^ data_i[7] ^ data_i[10] ^ data_i[11] ^ data_i[12] ^ data_i[18] ^ data_i[21] ^ data_i[24] ^ data_i[25] ^ data_i[26] ^ data_i[27] ^ data_i[28] ^ data_i[30] ^ data_i[31];
    assign crc_o[27] = crc_i[0] ^ crc_i[1] ^ crc_i[2] ^ crc_i[6] ^ crc_i[7] ^ crc_i[11] ^ crc_i[12] ^ crc_i[13] ^ crc_i[16] ^ crc_i[19] ^ crc_i[20] ^ crc_i[23] ^ crc_i[25] ^ crc_i[27] ^ crc_i[28] ^ crc_i[29] ^ crc_i[31] ^ data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[6] ^ data_i[7] ^ data_i[11] ^ data_i[12] ^ data_i[13] ^ data_i[16] ^ data_i[19] ^ data_i[20] ^ data_i[23] ^ data_i[25] ^ data_i[27] ^ data_i[28] ^ data_i[29] ^ data_i[31];
    assign crc_o[28] = crc_i[0] ^ crc_i[4] ^ crc_i[6] ^ crc_i[12] ^ crc_i[13] ^ crc_i[14] ^ crc_i[16] ^ crc_i[17] ^ crc_i[21] ^ crc_i[22] ^ crc_i[23] ^ crc_i[24] ^ crc_i[28] ^ crc_i[29] ^ crc_i[30] ^ data_i[0] ^ data_i[4] ^ data_i[6] ^ data_i[12] ^ data_i[13] ^ data_i[14] ^ data_i[16] ^ data_i[17] ^ data_i[21] ^ data_i[22] ^ data_i[23] ^ data_i[24] ^ data_i[28] ^ data_i[29] ^ data_i[30];
    assign crc_o[29] = crc_i[0] ^ crc_i[1] ^ crc_i[5] ^ crc_i[7] ^ crc_i[13] ^ crc_i[14] ^ crc_i[15] ^ crc_i[17] ^ crc_i[18] ^ crc_i[22] ^ crc_i[23] ^ crc_i[24] ^ crc_i[25] ^ crc_i[29] ^ crc_i[30] ^ crc_i[31] ^ data_i[0] ^ data_i[1] ^ data_i[5] ^ data_i[7] ^ data_i[13] ^ data_i[14] ^ data_i[15] ^ data_i[17] ^ data_i[18] ^ data_i[22] ^ data_i[23] ^ data_i[24] ^ data_i[25] ^ data_i[29] ^ data_i[30] ^ data_i[31];
    assign crc_o[30] = crc_i[3] ^ crc_i[4] ^ crc_i[7] ^ crc_i[14] ^ crc_i[15] ^ crc_i[18] ^ crc_i[19] ^ crc_i[20] ^ crc_i[22] ^ crc_i[24] ^ crc_i[25] ^ crc_i[30] ^ crc_i[31] ^ data_i[3] ^ data_i[4] ^ data_i[7] ^ data_i[14] ^ data_i[15] ^ data_i[18] ^ data_i[19] ^ data_i[20] ^ data_i[22] ^ data_i[24] ^ data_i[25] ^ data_i[30] ^ data_i[31];
    assign crc_o[31] = crc_i[0] ^ crc_i[1] ^ crc_i[2] ^ crc_i[3] ^ crc_i[5] ^ crc_i[6] ^ crc_i[7] ^ crc_i[15] ^ crc_i[19] ^ crc_i[21] ^ crc_i[22] ^ crc_i[25] ^ crc_i[31] ^ data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[5] ^ data_i[6] ^ data_i[7] ^ data_i[15] ^ data_i[19] ^ data_i[21] ^ data_i[22] ^ data_i[25] ^ data_i[31];
endmodule

`endif // CRC_CALC_V_