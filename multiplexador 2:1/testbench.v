// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_multiplex;

  // sinais de teste
  reg A;
  reg B;
  reg S;
  wire X;

  // instância do módulo
  multiplex uut (
    .A(A),
    .B(B),
    .S(S),
    .X(X)
  );

  initial begin
    $display("A B S | X");
    $monitor("%b %b %b | %b", A, B, S, X);

    // Testes
    A = 0; B = 0; S = 0; #10;
    A = 1; B = 0; S = 0; #10;
    A = 0; B = 1; S = 0; #10;
    A = 1; B = 1; S = 0; #10;

    A = 0; B = 0; S = 1; #10;
    A = 1; B = 0; S = 1; #10;
    A = 0; B = 1; S = 1; #10;
    A = 1; B = 1; S = 1; #10;

    $finish;
  end

endmodule