module somador_tb;

    reg a;
    reg b;
    reg s;
    
    somador uut(
        .a(a),
        .b(b),
        .s(s)
    );
    initial begin
        $display("A B | S")
        a = 0; b = 0; #10 // #10 = 10 unidades de tempo
        $display("%b %b| %b",a,b,s);
        a = 0; b = 1; #10
        $display("%b %b| %b",a,b,s);
        a = 1; b = 0; #10
        $display("%b %b| %b",a,b,s);
        a = 1; b = 1; #10
        $display("%b %b| %b",a,b,s);
        $finish;
    end
endmodule