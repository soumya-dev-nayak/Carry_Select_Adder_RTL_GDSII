module add16
(
    input [15:0]a,
    input [15:0]b,
    input cin,
    output [15:0]sum,
    output cout
);

wire [16:0] carry;
assign carry[0] = cin;

genvar i;

generate
    for (i = 0; i<16 ; i=i+1) begin : GEN_FA

        FullAdder fa(
            .a(a[i]),
            .b(b[i]),
            .cin(carry[i]),
            .sum(sum[i]),
            .cout(carry[i+1])
        );
    end
endgenerate

assign cout = carry[16];


endmodule