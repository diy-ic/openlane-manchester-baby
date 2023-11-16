/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : S_R_FLIPFLOP                                                 **
 **                                                                          **
 *****************************************************************************/

module S_R_FLIPFLOP( clock,
                     preset,
                     q,
                     qBar,
                     r,
                     reset,
                     s,
                     tick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter invertClockEnable = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input clock;
   input preset;
   input r;
   input reset;
   input s;
   input tick;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output q;
   output qBar;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_clock;
   wire s_nextState;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg s_currentState;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the output signals are defined                                        **
   *******************************************************************************/
   assign q        = s_currentState;
   assign qBar     = ~(s_currentState);
   assign s_clock  = (invertClockEnable == 0) ? clock : ~clock;

   /*******************************************************************************
   ** Here the initial register value is defined; for simulation only            **
   *******************************************************************************/
   initial
   begin
      s_currentState = 0;
   end

   /*******************************************************************************
   ** Here the update logic is defined                                           **
   *******************************************************************************/
   assign  s_nextState = (s_currentState|s)&~(r);

   /*******************************************************************************
   ** Here the actual state register is defined                                  **
   *******************************************************************************/
   always @(posedge reset or posedge preset or posedge s_clock)
   begin
      if (reset) s_currentState <= 1'b0;
      else if (preset) s_currentState <= 1'b1;
      else if (tick) s_currentState <= s_nextState;
   end

endmodule
