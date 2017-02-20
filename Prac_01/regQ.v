module regQ (input wire [3:0] entQ, input wire CargaQ, DesplazaQ, clk, reset, output wire [3:0] q);
//Registro Q de 4 bits, soporta Carga de entQ, reseteo y desplazamiento

  assign enable = CargaQ | DesplazaQ; //Si se carga o desplaza se habilitan en modificación los biestables
  
  assign entQ3 = CargaQ ? entQ[2] : a0;
  
  cdaff ffq_1(CargaQ, 1'b0, q[0], clk, reset, enable, q_1); //q-1
  cdaff ff0(CargaQ, entQ[0], q[1], clk, reset, enable, q[0]);
  cdaff ff1(CargaQ, entQ[1], q[2], clk, reset, enable, q[1]);
  cdaff ff2(CargaQ, entQ[2], q[3], clk, reset, enable, q[2]); 
  cdaff ff3(CargaQ, entQ[3], entQ3, clk, reset, enable, q[3]);
  
endmodule

//Biestable con entrada de mux para aceptar dos entradas posibles
module cdaff (input wire selc_d, inp_c, inp_d, clk, reset, carga, output wire q);

  wire inp;
  ffdc ff0(clk, reset, carga, inp, q);
  mux2_1_i1 mux0(inp, inp_d, inp_c, selc_d);
  
endmodule

//Mux de dos entradas de 1 bit realizado a partir de puertas 
module mux2_1_i1(output wire out, input wire a, b, s);

//Declaración de conexiones internas
  wire  s_n, sa, sb;	   
//Instancias de puertas y sus conexiones
  not inv1 (s_n, s);
  and and1 (sa, a, s_n);
  and and2 (sb, b, s);
  or or1 (out, sa, sb);
  
endmodule
