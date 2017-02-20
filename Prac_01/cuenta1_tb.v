`timescale 1 ns / 10 ps

//Declaracion de modulo del testbench
module cuenta1_tb; 

//declaracion de señales

reg [2:0] test_Q;
reg test_Start;

wire [3:0] test_Cuenta;
wire test_Fin;

reg clk;
always
	begin
		clk = 1;
		#20;
		clk = 0;
		#30;
	end

//instancia del modulo a testear
cuenta1 cuenta1_0(test_Q, test_Start, clk, test_Cuenta, test_Fin);

initial
begin
  $monitor("tiempo=%0d Q=%b Start=%b Cuenta=%b Fin=%b", $time, test_Q, test_Start, test_Cuenta, test_Fin);
  $dumpfile("mimodulo_tb.vcd");
  $dumpvars;

  //vector de test 0
  test_Q = 3'b111;
  test_Start = 1'b0;
  #5

  test_Start = 1'b1;
  #5

  test_Start = 1'b0;

  #390
  
  $finish;  //fin simulacion

end
endmodule
