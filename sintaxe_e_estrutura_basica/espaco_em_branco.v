// Code your design here
module dut; // 'module' é uma palavra-chave, 'dut' é um identificador
 reg [8*6:1] name = "Hello!"; // Os 2 espaços no início são ignorados (recuo).

 // Vários espaços entre tokens são tratados como um único espaço.

 wire a; // o mesmo que: wire a;
 wire b; // o mesmo que: wire b;
endmodule

/*
No entando em strings os espaços em branco não são ignorados
*/
module string_example;
 // Não há espaço no início desta linha (espaços em branco ignorados)

 // Mas existe um espaço dentro da string (preservado).

 reg [8*6:1] addr = "Earth "; // A sequência contém 6 caracteres: E-a-r-t-h-[espaço]

 reg [8*5:1] city = "Tokyo"; // A sequência contém 5 caracteres (sem espaço em branco no final).
endmodule