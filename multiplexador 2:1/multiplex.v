// Code your design here
module multiplex( // multiplexador 2:1
  input A,
  input B,
  input S,
  output X
  
);
  assign X = (~S & A) | (S & B);
endmodule