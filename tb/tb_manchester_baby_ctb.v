module tb_manchester_baby (
    input wire clock,
    input wire reset_i,
    inout [31:0] ram_data_io,
    output wire [4:0] ram_addr_o,
    output wire ram_rw_en_o,
    output wire stop_lamp_o,
    output wire logisim_clock_tree_0_out,
    output wire logisim_clock_tree_3_out
);

    `ifdef COCOTB_SIM
        initial begin
            $dumpfile("waves_tb_manchester_baby.vcd");
            $dumpvars(0, uut_manchester_baby);
        end
    `endif

    openlane_manchester_baby uut_manchester_baby (
        .clock(clock), .reset_i(reset_i), .ram_data_io(ram_data_io),
        .ram_addr_o(ram_addr_o), .ram_rw_en_o(ram_rw_en_o), .stop_lamp_o(stop_lamp_o),
        .logisim_clock_tree_0_out(logisim_clock_tree_0_out), 
        .logisim_clock_tree_3_out(logisim_clock_tree_3_out)
    );

endmodule