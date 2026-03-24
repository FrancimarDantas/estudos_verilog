// Code your design here
module multiple_4bit(
  input [3:0]a,b,
  output reg [0:7]s
);
  assign s = a * b;
endmodule