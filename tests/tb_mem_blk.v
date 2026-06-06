module tb_mem_blk();
    //Entradas e saidas do sistema
    reg  clk, rst;    
    reg [3:0] in;
    wire [3:0] out;
    reg [5:0] address;
    
	//Variaveis da iteracao    
    integer i;
    integer j; 
    
    //Instanciacao do bloco de memoria
    mem_blk blk(
    	.clk(clk),
    	.reset(rst),
    	.data_in(in),
    	.data_out(out),
    	.address(address)
    );

    initial begin
    	clk = 0;
    	rst = 1;
    	#10;
    	rst = 0;
        $display("Inicializando blocos de memoria...");
        $display("------------------------");
        //linha
        for (i = 0; i < 8; i = i + 1) begin
        	//coluna
            for (j = 0; j < 8; j = j + 1) begin
            	address = (i * 8) + j;
            	in = address;
            	$display("(L: %d, C: %d) = %d", i, j, in);
            	#10;
            	clk = 1;
            	#10;
            	clk = 0;
            	#10;
            end
        end
        $display("Memoria inicializada...");
        
        $display("Testando acesso:");
        //linha
        for (i = 0; i < 8; i = i + 1) begin
        	//coluna
            for (j = 0; j < 8; j = j + 1) begin
            	address = (i * 8) + j;
            	#10;
            	$display("(L: %d, C: %d) = %d", i, j, out);
            	#10;
            end
        end        

        $finish; 
    end
endmodule
