// Code your testbench here
// or browse Examples
module multiple_4bit_tb;
	integer i;
  wire [7:0]s;
  reg [3:0]a,b;

  multiple_4bit uut(
    .a(a),
    .b(b),
    .s(s)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    // valor inicial de a e b
    a = 4'b0000;  
    b = 4'b0000;

    /* #10 a = 4'b0001; b = 4'b0100;    // 1 * 4 = 4
    #10 a = 4'b0101; b = 4'b1010;   // 5 * 10 = 50
    #10 a = 4'b1101; b = 4'b1111;  // 13 * 15 = 195
    #10 a = 4'b1111; b = 4'b0101; // 15 * 5 = 75
*/
   
    for (i = 0; i < 10;i++) begin
      //#10 a = {$urandom} % 15; b ={$urandom} % 15;
      #10 a = {$random} % 15; b ={$random} % 15;
    end
    #10 $finish;

  end
endmodule
