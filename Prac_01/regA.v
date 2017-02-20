module regA(input wire clk, ResetA, CargaA, DesplazaA input wire [3:0] entA, output wire [3:0] q);

assign enable = CargaA | DesplazaA ; 

  cdaff ffa0(CargaA, entA[0], q[1], clk, ResetA, enable, q[0]);
  cdaff ffa1(CargaA, entA[1], q[2], clk, ResetA, enable, q[1]);
  cdaff ffa2(CargaA, entA[2], q[3], clk, ResetA, enable, q[2]);
  cdaff ffa3(CargaA, entA[3], q[3], clk, ResetA, enable, q[3]);

endmodule

