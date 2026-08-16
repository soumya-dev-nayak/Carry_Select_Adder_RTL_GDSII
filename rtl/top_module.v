module top_module(
    input [31:0]a,
    input [31:0]b,
    input cin,
    output [31:0]sum,
    output cout
);

    wire [15:0]sum_low;
    wire [15:0]sum_high_0, sum_high_1;

    wire lower_carry;
    wire cout_high_0;
    wire cout_high_1;


    add16 low(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(cin),
        .sum(sum_low),
        .cout(lower_carry)
    );

    //Assuming the carry is 0

    add16 high_adder_0(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum_high_0),
        .cout(cout_high_0)
    );

    add16 high_adder_1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum_high_1),
        .cout(cout_high_1)
    );

    //assigning the final Sum and Carry Output
    assign sum = {lower_carry ? sum_high_1 : sum_high_0, sum_low};
    assign cout = lower_carry ? cout_high_1 : cout_high_0;
    

endmodule