/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( logisimClockTree0,
             logisimInOutBubbles,
             ram_addr_o,
             ram_rw_en_o,
             reset_i,
             stop_lamp_o );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [4:0] logisimClockTree0;
   input       reset_i;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [4:0] ram_addr_o;
   output       ram_rw_en_o;
   output       stop_lamp_o;

   /*******************************************************************************
   ** The inouts are defined here                                                **
   *******************************************************************************/
   inout [31:0] logisimInOutBubbles;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [4:0]  s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [4:0]  s_logisimBus12;
   wire [4:0]  s_logisimBus14;
   wire [31:0] s_logisimBus15;
   wire [2:0]  s_logisimBus16;
   wire [4:0]  s_logisimBus18;
   wire [4:0]  s_logisimBus19;
   wire [31:0] s_logisimBus2;
   wire [4:0]  s_logisimBus20;
   wire [4:0]  s_logisimBus23;
   wire [4:0]  s_logisimBus25;
   wire [4:0]  s_logisimBus28;
   wire [31:0] s_logisimBus30;
   wire [4:0]  s_logisimBus31;
   wire [4:0]  s_logisimBus32;
   wire [4:0]  s_logisimBus35;
   wire [31:0] s_logisimBus37;
   wire [31:0] s_logisimBus38;
   wire [4:0]  s_logisimBus4;
   wire [31:0] s_logisimBus41;
   wire [4:0]  s_logisimBus44;
   wire [4:0]  s_logisimBus47;
   wire [4:0]  s_logisimBus5;
   wire [4:0]  s_logisimBus55;
   wire [31:0] s_logisimBus6;
   wire [4:0]  s_logisimBus68;
   wire [4:0]  s_logisimBus69;
   wire [4:0]  s_logisimBus70;
   wire [4:0]  s_logisimBus71;
   wire [4:0]  s_logisimBus72;
   wire [31:0] s_logisimBus73;
   wire [31:0] s_logisimBus74;
   wire [4:0]  s_logisimBus75;
   wire [4:0]  s_logisimBus76;
   wire [4:0]  s_logisimBus77;
   wire [4:0]  s_logisimBus78;
   wire [4:0]  s_logisimBus79;
   wire [31:0] s_logisimBus80;
   wire [31:0] s_logisimBus81;
   wire [4:0]  s_logisimBus82;
   wire        s_logisimNet13;
   wire        s_logisimNet17;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet24;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet33;
   wire        s_logisimNet34;
   wire        s_logisimNet36;
   wire        s_logisimNet39;
   wire        s_logisimNet40;
   wire        s_logisimNet42;
   wire        s_logisimNet46;
   wire        s_logisimNet48;
   wire        s_logisimNet49;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet52;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet59;
   wire        s_logisimNet60;
   wire        s_logisimNet61;
   wire        s_logisimNet62;
   wire        s_logisimNet63;
   wire        s_logisimNet64;
   wire        s_logisimNet65;
   wire        s_logisimNet66;
   wire        s_logisimNet67;
   wire        s_logisimNet7;
   wire        s_logisimNet8;
   wire        s_logisimNet83;
   wire        s_logisimNet84;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All clock generator connections are defined here                           **
   *******************************************************************************/
   assign s_logisimNet84 = logisimClockTree0[0];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet49 = reset_i;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ram_addr_o  = s_logisimBus28[4:0];
   assign ram_rw_en_o = s_logisimNet17;
   assign stop_lamp_o = s_logisimNet46;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus80[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus68[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus69[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus70[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus71[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus72[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus73[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus74[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimNet83  =  1'b0;


   // Constant
   assign  s_logisimBus81[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus31[4:1]  =  4'h0;


   // Constant
   assign  s_logisimBus82[4:0]  =  {1'b0, 4'h1};


   // Constant
   assign  s_logisimBus75[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus76[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus77[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus78[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus79[4:0]  =  {1'b0, 4'h0};


   // Port I/O: ram_data_io
   assign  s_logisimBus15 = logisimInOutBubbles[31:0];
   assign logisimInOutBubbles[31:0] = (s_logisimNet17) ? s_logisimBus10 : 32'bZ;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet59),
               .input2(s_logisimNet60),
               .result(s_logisimNet33));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet62),
               .input2(s_logisimNet64),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet62),
               .input2(s_logisimNet61),
               .result(s_logisimNet17));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet62),
               .input2(s_logisimNet65),
               .result(s_logisimNet40));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet63),
               .input2(s_logisimNet33),
               .result(s_logisimNet29));

   OR_GATE_BUS_5_INPUTS #(.BubblesMask({1'b0, 4'h0}),
                          .NrOfBits(5))
      GATES_6 (.input1(s_logisimBus55[4:0]),
               .input2(s_logisimBus12[4:0]),
               .input3(s_logisimBus23[4:0]),
               .input4(s_logisimBus1[4:0]),
               .input5(s_logisimBus32[4:0]),
               .result(s_logisimBus28[4:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet63),
               .input2(s_logisimNet65),
               .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet63),
               .input2(s_logisimNet64),
               .result(s_logisimNet13));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet34),
               .input2(s_logisimNet63),
               .result(s_logisimNet51));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(32))
      GATES_10 (.input1(s_logisimBus2[31:0]),
                .input2(s_logisimBus30[31:0]),
                .result(s_logisimBus37[31:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet13),
                .input2(s_logisimNet7),
                .result(s_logisimNet24));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet21),
                .input2(s_logisimNet54),
                .result(s_logisimNet65));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet84),
                .input2(s_logisimNet42),
                .result(s_logisimNet36));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_14 (.input1(s_logisimNet65),
                .input2(s_logisimNet64),
                .input3(s_logisimNet61),
                .result(s_logisimNet52));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet59),
                .input2(s_logisimNet67),
                .result(s_logisimNet27));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet57),
                .input2(s_logisimNet67),
                .result(s_logisimNet9));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet60),
                .input2(s_logisimNet67),
                .result(s_logisimNet39));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet52),
                .input2(s_logisimNet67),
                .result(s_logisimNet22));

   OR_GATE_BUS_5_INPUTS #(.BubblesMask({1'b0, 4'h0}),
                          .NrOfBits(5))
      GATES_19 (.input1(s_logisimBus44[4:0]),
                .input2(s_logisimBus18[4:0]),
                .input3(s_logisimBus25[4:0]),
                .input4(s_logisimBus20[4:0]),
                .input5(s_logisimBus5[4:0]),
                .result(s_logisimBus35[4:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet66),
                .input2(s_logisimNet67),
                .result(s_logisimNet8));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_21 (.enable(1'b1),
                  .muxIn_0(s_logisimBus68[4:0]),
                  .muxIn_1(s_logisimBus4[4:0]),
                  .muxOut(s_logisimBus55[4:0]),
                  .sel(s_logisimNet56));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_22 (.enable(1'b1),
                  .muxIn_0(s_logisimBus69[4:0]),
                  .muxIn_1(s_logisimBus6[4:0]),
                  .muxOut(s_logisimBus12[4:0]),
                  .sel(s_logisimNet3));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_23 (.enable(1'b1),
                  .muxIn_0(s_logisimBus70[4:0]),
                  .muxIn_1(s_logisimBus6[4:0]),
                  .muxOut(s_logisimBus23[4:0]),
                  .sel(s_logisimNet17));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_24 (.enable(1'b1),
                  .muxIn_0(s_logisimBus71[4:0]),
                  .muxIn_1(s_logisimBus6[4:0]),
                  .muxOut(s_logisimBus1[4:0]),
                  .sel(s_logisimNet40));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_25 (.enable(1'b1),
                  .muxIn_0(s_logisimBus72[4:0]),
                  .muxIn_1(s_logisimBus6[4:0]),
                  .muxOut(s_logisimBus32[4:0]),
                  .sel(s_logisimNet29));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_26 (.enable(1'b1),
                  .muxIn_0(s_logisimBus73[31:0]),
                  .muxIn_1(s_logisimBus38[31:0]),
                  .muxOut(s_logisimBus30[31:0]),
                  .sel(s_logisimNet7));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus74[31:0]),
                  .muxIn_1(s_logisimBus41[31:0]),
                  .muxOut(s_logisimBus2[31:0]),
                  .sel(s_logisimNet13));

   Decoder_8   PLEXERS_28 (.decoderOut_0(s_logisimNet59),
                           .decoderOut_1(s_logisimNet60),
                           .decoderOut_2(s_logisimNet64),
                           .decoderOut_3(s_logisimNet61),
                           .decoderOut_4(s_logisimNet21),
                           .decoderOut_5(s_logisimNet54),
                           .decoderOut_6(s_logisimNet57),
                           .decoderOut_7(s_logisimNet34),
                           .enable(1'b1),
                           .sel(s_logisimBus6[15:13]));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_29 (.enable(1'b1),
                  .muxIn_0(s_logisimBus75[4:0]),
                  .muxIn_1(s_logisimBus14[4:0]),
                  .muxOut(s_logisimBus44[4:0]),
                  .sel(s_logisimNet66));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_30 (.enable(1'b1),
                  .muxIn_0(s_logisimBus76[4:0]),
                  .muxIn_1(s_logisimBus10[4:0]),
                  .muxOut(s_logisimBus18[4:0]),
                  .sel(s_logisimNet27));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_31 (.enable(1'b1),
                  .muxIn_0(s_logisimBus77[4:0]),
                  .muxIn_1(s_logisimBus19[4:0]),
                  .muxOut(s_logisimBus25[4:0]),
                  .sel(s_logisimNet9));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_32 (.enable(1'b1),
                  .muxIn_0(s_logisimBus78[4:0]),
                  .muxIn_1(s_logisimBus47[4:0]),
                  .muxOut(s_logisimBus20[4:0]),
                  .sel(s_logisimNet39));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_33 (.enable(1'b1),
                  .muxIn_0(s_logisimBus79[4:0]),
                  .muxIn_1(s_logisimBus4[4:0]),
                  .muxOut(s_logisimBus5[4:0]),
                  .sel(s_logisimNet22));

   Decoder_8   PLEXERS_34 (.decoderOut_0(s_logisimNet66),
                           .decoderOut_1(s_logisimNet56),
                           .decoderOut_2(s_logisimNet50),
                           .decoderOut_3(s_logisimNet62),
                           .decoderOut_4(s_logisimNet63),
                           .decoderOut_5(s_logisimNet67),
                           .decoderOut_6(s_logisimNet53),
                           .decoderOut_7(s_logisimNet26),
                           .enable(1'b1),
                           .sel(s_logisimBus16[2:0]));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_35 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus15[31:0]),
                .dataB(s_logisimBus10[31:0]),
                .result(s_logisimBus38[31:0]));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_36 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus80[31:0]),
                .dataB(s_logisimBus10[31:0]),
                .result(s_logisimBus41[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_37 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimBus31[0]),
                .dataA(s_logisimBus15[31:0]),
                .dataB(s_logisimBus81[31:0]));

   Adder #(.extendedBits(6),
           .nrOfBits(5))
      ARITH_38 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus10[4:0]),
                .dataB(s_logisimBus4[4:0]),
                .result(s_logisimBus47[4:0]));

   Adder #(.extendedBits(6),
           .nrOfBits(5))
      ARITH_39 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus82[4:0]),
                .dataB(s_logisimBus4[4:0]),
                .result(s_logisimBus14[4:0]));

   Adder #(.extendedBits(6),
           .nrOfBits(5))
      ARITH_40 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus4[4:0]),
                .dataB(s_logisimBus31[4:0]),
                .result(s_logisimBus19[4:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      IR (.clock(logisimClockTree0[4]),
          .clockEnable(s_logisimNet50),
          .d(s_logisimBus10[31:0]),
          .q(s_logisimBus6[31:0]),
          .reset(s_logisimNet49),
          .tick(logisimClockTree0[2]));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_42 (.clock(logisimClockTree0[4]),
                 .preset(1'b0),
                 .q(s_logisimNet46),
                 .qBar(s_logisimNet42),
                 .r(s_logisimNet83),
                 .reset(s_logisimNet49),
                 .s(s_logisimNet51),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      Acc (.clock(logisimClockTree0[4]),
           .clockEnable(s_logisimNet24),
           .d(s_logisimBus37[31:0]),
           .q(s_logisimBus15[31:0]),
           .reset(s_logisimNet49),
           .tick(logisimClockTree0[2]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_44 (.clear(1'b0),
                 .clock(s_logisimNet36),
                 .compareOut(),
                 .countValue(s_logisimBus16[2:0]),
                 .enable(1'b1),
                 .load(1'b0),
                 .loadData(3'd0),
                 .tick(1'b1),
                 .upNotDown(1'b0));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(5))
      PC (.clock(logisimClockTree0[4]),
          .clockEnable(s_logisimNet8),
          .d(s_logisimBus35[4:0]),
          .q(s_logisimBus4[4:0]),
          .reset(s_logisimNet49),
          .tick(logisimClockTree0[2]));


endmodule
