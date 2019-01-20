 module clk_gen(
	input 	wire 				clk, 
	input		wire	[31:0]	reduction,
	input 	wire 	[30:0] 	count,
	input 	wire 				reset,
	output 	wire 				clk_out,
	output 	wire 				finish);
	
	reg [31:0] 	m		 = {32{1'b0}};

	reg 			signal = 1'b1;
	
	reg [31:0] 	n		 = {32{1'b0}};
	
	reg 			check	 = 1'b1;
	
	reg fin = 1'b1;
	
	assign clk_out = signal;
	assign finish = fin;
	
	
	always @(posedge clk or posedge reset)
	begin
		
		if (reset)
		begin
			if (fin == 1'b1)
			begin
				fin 	= 1'b0;
				signal 	= 1'b1;
				n = count + count + 1;
			end		
			else
			begin
				if (n != 0)
				begin
					if (m != 0)
						m = m - 1;
					else
						begin
							signal = ~signal;
							m = reduction - 1;
							n = n - 1;
						end
				end
				else
				begin
					signal = 1'b0;
					fin = 1'b1;
				end
			end
		end
	end
	
	
	
endmodule
