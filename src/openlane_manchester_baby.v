module openlane_manchester_baby (
    input wire clock,
    input wire reset_i,
    inout reg [31:0] ram_data_io,
    output wire [4:0] ram_addr_o,
    output wire ram_rw_en_o, // 0 = read, 1 = write
    output wire stop_lamp_o
);

    reg [31:0] ram_data_i;
    reg [31:0] ram_data_o;

    always @ (ram_rw_en_o) begin
        // if reading from ram...
        if (ram_rw_en_o == 1'b0) begin
            // ...set ram_data_i to contain the contents of the ram line
            ram_data_i = ram_data_io;

            // if writing to ram...
        end else if (ram_rw_en_o == 1'b1) begin
            // ...set ram line contents to contain baby contents
            ram_data_io = ram_data_o;
        end
    end


    logisimTopLevelShell manchester_baby_instance (
        .fpgaGlobalClock(clock),
        .reset_i_0(reset_i),
        .stop_lamp_o_0(stop_lamp_o),
        .ram_rw_en_o_0(ram_rw_en_o),

        .ram_addr_o_0(ram_addr_o[0]),
        .ram_addr_o_1(ram_addr_o[1]),
        .ram_addr_o_2(ram_addr_o[2]),
        .ram_addr_o_3(ram_addr_o[3]),
        .ram_addr_o_4(ram_addr_o[4]),

        .ram_data_i_0(ram_data_i[0]),
        .ram_data_i_1(ram_data_i[1]),
        .ram_data_i_2(ram_data_i[2]),
        .ram_data_i_3(ram_data_i[3]),
        .ram_data_i_4(ram_data_i[4]),
        .ram_data_i_5(ram_data_i[5]),
        .ram_data_i_6(ram_data_i[6]),
        .ram_data_i_7(ram_data_i[7]),
        .ram_data_i_8(ram_data_i[8]),
        .ram_data_i_9(ram_data_i[9]),
        .ram_data_i_10(ram_data_i[10]),
        .ram_data_i_11(ram_data_i[11]),
        .ram_data_i_12(ram_data_i[12]),
        .ram_data_i_13(ram_data_i[13]),
        .ram_data_i_14(ram_data_i[14]),
        .ram_data_i_15(ram_data_i[15]),
        .ram_data_i_16(ram_data_i[16]),
        .ram_data_i_17(ram_data_i[17]),
        .ram_data_i_18(ram_data_i[18]),
        .ram_data_i_19(ram_data_i[19]),
        .ram_data_i_20(ram_data_i[20]),
        .ram_data_i_21(ram_data_i[21]),
        .ram_data_i_22(ram_data_i[22]),
        .ram_data_i_23(ram_data_i[23]),
        .ram_data_i_24(ram_data_i[24]),
        .ram_data_i_25(ram_data_i[25]),
        .ram_data_i_26(ram_data_i[26]),
        .ram_data_i_27(ram_data_i[27]),
        .ram_data_i_28(ram_data_i[28]),
        .ram_data_i_29(ram_data_i[29]),
        .ram_data_i_30(ram_data_i[30]),
        .ram_data_i_31(ram_data_i[31]),

        .ram_data_o_0(ram_data_o[0]),
        .ram_data_o_1(ram_data_o[1]),
        .ram_data_o_2(ram_data_o[2]),
        .ram_data_o_3(ram_data_o[3]),
        .ram_data_o_4(ram_data_o[4]),
        .ram_data_o_5(ram_data_o[5]),
        .ram_data_o_6(ram_data_o[6]),
        .ram_data_o_7(ram_data_o[7]),
        .ram_data_o_8(ram_data_o[8]),
        .ram_data_o_9(ram_data_o[9]),
        .ram_data_o_10(ram_data_o[10]),
        .ram_data_o_11(ram_data_o[11]),
        .ram_data_o_12(ram_data_o[12]),
        .ram_data_o_13(ram_data_o[13]),
        .ram_data_o_14(ram_data_o[14]),
        .ram_data_o_15(ram_data_o[15]),
        .ram_data_o_16(ram_data_o[16]),
        .ram_data_o_17(ram_data_o[17]),
        .ram_data_o_18(ram_data_o[18]),
        .ram_data_o_19(ram_data_o[19]),
        .ram_data_o_20(ram_data_o[20]),
        .ram_data_o_21(ram_data_o[21]),
        .ram_data_o_22(ram_data_o[22]),
        .ram_data_o_23(ram_data_o[23]),
        .ram_data_o_24(ram_data_o[24]),
        .ram_data_o_25(ram_data_o[25]),
        .ram_data_o_26(ram_data_o[26]),
        .ram_data_o_27(ram_data_o[27]),
        .ram_data_o_28(ram_data_o[28]),
        .ram_data_o_29(ram_data_o[29]),
        .ram_data_o_30(ram_data_o[30]),
        .ram_data_o_31(ram_data_o[31])
    );



    // logisimTopLevelShell manchester_baby_instance (
    //     .fpgaGlobalClock(clock),
    //     .reset_i_0(reset_i).
    //     .stop_lamp_o_0(stop_lamp_o),
    //     .ram_rw_en_o_0(ram_rw_en_o),

    //     .ram_addr_o_0(ram_addr_o[0]),
    //     .ram_addr_o_1(ram_addr_o[1]),
    //     .ram_addr_o_2(ram_addr_o[2]),
    //     .ram_addr_o_3(ram_addr_o[3]),
    //     .ram_addr_o_4(ram_addr_o[4]),

    //     .ram_data_io_pin_0(ram_data_io[0]),
    //     .ram_data_io_pin_1(ram_data_io[1]),
    //     .ram_data_io_pin_2(ram_data_io[2]),
    //     .ram_data_io_pin_3(ram_data_io[3]),
    //     .ram_data_io_pin_4(ram_data_io[4]),
    //     .ram_data_io_pin_5(ram_data_io[5]),
    //     .ram_data_io_pin_6(ram_data_io[6]),
    //     .ram_data_io_pin_7(ram_data_io[7]),
    //     .ram_data_io_pin_8(ram_data_io[8]),
    //     .ram_data_io_pin_9(ram_data_io[9]),
    //     .ram_data_io_pin_10(ram_data_io[10]),
    //     .ram_data_io_pin_11(ram_data_io[11]),
    //     .ram_data_io_pin_12(ram_data_io[12]),
    //     .ram_data_io_pin_13(ram_data_io[13]),
    //     .ram_data_io_pin_14(ram_data_io[14]),
    //     .ram_data_io_pin_15(ram_data_io[15]),
    //     .ram_data_io_pin_16(ram_data_io[16]),
    //     .ram_data_io_pin_17(ram_data_io[17]),
    //     .ram_data_io_pin_18(ram_data_io[18]),
    //     .ram_data_io_pin_19(ram_data_io[19]),
    //     .ram_data_io_pin_20(ram_data_io[20]),
    //     .ram_data_io_pin_21(ram_data_io[21]),
    //     .ram_data_io_pin_22(ram_data_io[22]),
    //     .ram_data_io_pin_23(ram_data_io[23]),
    //     .ram_data_io_pin_24(ram_data_io[24]),
    //     .ram_data_io_pin_25(ram_data_io[25]),
    //     .ram_data_io_pin_26(ram_data_io[26]),
    //     .ram_data_io_pin_27(ram_data_io[27]),
    //     .ram_data_io_pin_28(ram_data_io[28]),
    //     .ram_data_io_pin_29(ram_data_io[29]),
    //     .ram_data_io_pin_30(ram_data_io[30]),
    //     .ram_data_io_pin_31(ram_data_io[31]),
    // );



endmodule