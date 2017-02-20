 module booth(input wire [3:0] initQ, initM, input wire start, clk, output wire [7:0] resultado, output wire fin);

wire ResetA, CargaA, DesplazaA, CargaQ, DesplazaQ, CargaM, Resta, cin;
wire [3:0] SalA, SalQ, SalM, B, SalS;
wire SalQ_1;
assign resultado = {SalA, SalQ}; 


endmodule