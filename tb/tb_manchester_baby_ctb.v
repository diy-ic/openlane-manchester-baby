module tb_manchester_baby (
    input wire clock,
    input wire reset_i,
    input [31:0] ram_data_i,
    output [31:0] ram_data_o,
    output wire [4:0] ram_addr_o,
    output wire ram_rw_en_o,
    output wire stop_lamp_o,
    output wire logisim_clock_tree_0_out
);

    `ifdef COCOTB_SIM
        initial begin
            $dumpfile("waves_ctb_tb_manchester_baby.vcd");
            $dumpvars(0, uut_manchester_baby);
        end
    `endif

    manchester_baby uut_manchester_baby (
        .clock(clock), .reset_i(reset_i), .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o), .ram_addr_o(ram_addr_o), 
        .ram_rw_en_o(ram_rw_en_o), .stop_lamp_o(stop_lamp_o),
        .logisim_clock_tree_0_out(logisim_clock_tree_0_out)
    );

endmodule