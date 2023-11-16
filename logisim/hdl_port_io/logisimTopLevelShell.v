/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisimTopLevelShell                                         **
 **                                                                          **
 *****************************************************************************/

module logisimTopLevelShell( fpgaGlobalClock,
                             ram_addr_o_0,
                             ram_addr_o_1,
                             ram_addr_o_2,
                             ram_addr_o_3,
                             ram_addr_o_4,
                             ram_data_io_pin_1,
                             ram_data_io_pin_10,
                             ram_data_io_pin_11,
                             ram_data_io_pin_12,
                             ram_data_io_pin_13,
                             ram_data_io_pin_14,
                             ram_data_io_pin_15,
                             ram_data_io_pin_16,
                             ram_data_io_pin_17,
                             ram_data_io_pin_18,
                             ram_data_io_pin_19,
                             ram_data_io_pin_2,
                             ram_data_io_pin_20,
                             ram_data_io_pin_21,
                             ram_data_io_pin_22,
                             ram_data_io_pin_23,
                             ram_data_io_pin_24,
                             ram_data_io_pin_25,
                             ram_data_io_pin_26,
                             ram_data_io_pin_27,
                             ram_data_io_pin_28,
                             ram_data_io_pin_29,
                             ram_data_io_pin_3,
                             ram_data_io_pin_30,
                             ram_data_io_pin_31,
                             ram_data_io_pin_32,
                             ram_data_io_pin_4,
                             ram_data_io_pin_5,
                             ram_data_io_pin_6,
                             ram_data_io_pin_7,
                             ram_data_io_pin_8,
                             ram_data_io_pin_9,
                             ram_rw_en_o_0,
                             reset_i_0,
                             stop_lamp_o_0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input fpgaGlobalClock;
   input reset_i_0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output ram_addr_o_0;
   output ram_addr_o_1;
   output ram_addr_o_2;
   output ram_addr_o_3;
   output ram_addr_o_4;
   output ram_rw_en_o_0;
   output stop_lamp_o_0;

   /*******************************************************************************
   ** The inouts are defined here                                                **
   *******************************************************************************/
   inout ram_data_io_pin_1;
   inout ram_data_io_pin_10;
   inout ram_data_io_pin_11;
   inout ram_data_io_pin_12;
   inout ram_data_io_pin_13;
   inout ram_data_io_pin_14;
   inout ram_data_io_pin_15;
   inout ram_data_io_pin_16;
   inout ram_data_io_pin_17;
   inout ram_data_io_pin_18;
   inout ram_data_io_pin_19;
   inout ram_data_io_pin_2;
   inout ram_data_io_pin_20;
   inout ram_data_io_pin_21;
   inout ram_data_io_pin_22;
   inout ram_data_io_pin_23;
   inout ram_data_io_pin_24;
   inout ram_data_io_pin_25;
   inout ram_data_io_pin_26;
   inout ram_data_io_pin_27;
   inout ram_data_io_pin_28;
   inout ram_data_io_pin_29;
   inout ram_data_io_pin_3;
   inout ram_data_io_pin_30;
   inout ram_data_io_pin_31;
   inout ram_data_io_pin_32;
   inout ram_data_io_pin_4;
   inout ram_data_io_pin_5;
   inout ram_data_io_pin_6;
   inout ram_data_io_pin_7;
   inout ram_data_io_pin_8;
   inout ram_data_io_pin_9;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire        s_fpgaTick;
   wire [4:0]  s_logisimClockTree0;
   wire [31:0] s_logisimInOutBubbles;
   wire [4:0]  s_ram_addr_o;
   wire        s_ram_rw_en_o;
   wire        s_reset_i;
   wire        s_stop_lamp_o;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign ram_addr_o_0  = s_ram_addr_o[0];
   assign ram_addr_o_1  = s_ram_addr_o[1];
   assign ram_addr_o_2  = s_ram_addr_o[2];
   assign ram_addr_o_3  = s_ram_addr_o[3];
   assign ram_addr_o_4  = s_ram_addr_o[4];
   assign ram_rw_en_o_0 = s_ram_rw_en_o;
   assign s_reset_i     = reset_i_0;
   assign stop_lamp_o_0 = s_stop_lamp_o;

   /*******************************************************************************
   ** The clock tree components are defined here                                 **
   *******************************************************************************/
   logisimTickGenerator #(.nrOfBits(26),
                          .reloadValue(50000000))
      BASE_0 (.FPGAClock(fpgaGlobalClock),
              .FPGATick(s_fpgaTick));

   LogisimClockComponent #(.highTicks(1),
                           .lowTicks(1),
                           .nrOfBits(1),
                           .phase(1))
      BASE_1 (.clockBus(s_logisimClockTree0),
              .clockTick(s_fpgaTick),
              .globalClock(fpgaGlobalClock));

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.logisimClockTree0(s_logisimClockTree0),
                     .logisimInOutBubbles({ram_data_io_pin_32,
                                           ram_data_io_pin_31,
                                           ram_data_io_pin_30,
                                           ram_data_io_pin_29,
                                           ram_data_io_pin_28,
                                           ram_data_io_pin_27,
                                           ram_data_io_pin_26,
                                           ram_data_io_pin_25,
                                           ram_data_io_pin_24,
                                           ram_data_io_pin_23,
                                           ram_data_io_pin_22,
                                           ram_data_io_pin_21,
                                           ram_data_io_pin_20,
                                           ram_data_io_pin_19,
                                           ram_data_io_pin_18,
                                           ram_data_io_pin_17,
                                           ram_data_io_pin_16,
                                           ram_data_io_pin_15,
                                           ram_data_io_pin_14,
                                           ram_data_io_pin_13,
                                           ram_data_io_pin_12,
                                           ram_data_io_pin_11,
                                           ram_data_io_pin_10,
                                           ram_data_io_pin_9,
                                           ram_data_io_pin_8,
                                           ram_data_io_pin_7,
                                           ram_data_io_pin_6,
                                           ram_data_io_pin_5,
                                           ram_data_io_pin_4,
                                           ram_data_io_pin_3,
                                           ram_data_io_pin_2,
                                           ram_data_io_pin_1}),
                     .ram_addr_o(s_ram_addr_o),
                     .ram_rw_en_o(s_ram_rw_en_o),
                     .reset_i(s_reset_i),
                     .stop_lamp_o(s_stop_lamp_o));
endmodule
