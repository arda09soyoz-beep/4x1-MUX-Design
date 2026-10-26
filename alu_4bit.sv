module alu_4bit (
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic [1:0] select,
    output logic [3:0] cikti
);

    always_comb begin
        case (select)
            2'b00: cikti = a + b;       // Toplama
            2'b01: cikti = a - b;       // Çıkarma
            2'b10: cikti = a & b;       // AND
            2'b11: cikti = a | b;       // OR
            default: cikti = 4'b0000;
        endcase
    end

endmodule
