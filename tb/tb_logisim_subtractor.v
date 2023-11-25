module tb_logisim_subtractor(
    input wire borrowIn,
    output wire borrowOut,
    input wire [31:0] dataA, 
    input wire [31:0] dataB,
    output wire [31:0] result
);

    `ifdef COCOTB_SIM
        initial begin
            $dumpfile("waves_tb_logisim_subtractor.vcd");
            $dumpvars(0, uut_subtractor);
        end
    `endif

    Subtractor # (
        .extendedBits(33),
        .nrOfBits(32)
    ) uut_subtractor (
        .borrowIn(borrowIn), .borrowOut(borrowOut),
        .dataA(dataA), .dataB(dataB), .result(result)
    );

    // subtractor # (
    //     .extendedBits(33),
    //     .nrOfBits(32)
    // ) uut_subtractor (
    //     .borrowIn(borrowIn), .borrowOut(borrowOut),
    //     .a(dataA), .b(dataB), .out(result)
    // );


endmodule