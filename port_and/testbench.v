// Code your testbench here
// or browse Examples
module port_and_tb;
  reg a;
  reg b;
  reg s;
  
 
  port_and uut(
    .a(a),
    .b(b),
    .s(s)
  );
  
  
  initial begin
    $monitor("tempo = %0t a = %b b = %b s = %b",$time, a, b , s);
    a = 0; b = 0; #10
    a = 0; b = 1; #10
    a = 1; b = 0; #10
    a = 1; b = 1; #10
    $finish;
  end
  
endmodule