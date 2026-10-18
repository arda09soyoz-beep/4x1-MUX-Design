module tb_adder_4bit;

    // Test sinyalleri
    logic [3:0] a;
    logic [3:0] b;
    logic cin;
    logic [3:0] sum;
    logic cout;

    // 4-Bit Toplayıcı modülünün çağrılması 
    adder_4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test senaryoları
    initial begin
        $display("Zaman\t a\t b\t cin\t sum\t cout");
        $monitor("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, cout);

        
        a = 4'b0000; b = 4'b0000; cin = 1'b0; 
        #10;
        
        
        a = 4'b0101; b = 4'b0011; cin = 1'b0; 
        #10;
        
        
        a = 4'b1111; b = 4'b0001; cin = 1'b0; 
        #10;
        
        
        a = 4'b1010; b = 4'b0101; cin = 1'b1; 
        #10;

        
        a = 4'b0111; b = 4'b0111; cin = 1'b0; 
        #10;

        $finish; 
    end

endmodule
