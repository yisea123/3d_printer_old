 module clk_gen(
	input 	wire 				clk, 
	input		wire	[31:0]	reduction,
	input 	wire 	[30:0] 	count,
	input 	wire 				reset,
	output 	wire 				clk_out,
	output 	reg 				finish);
	
	reg [31:0] 	m		 = {32{1'b0}};

	reg 			signal = 1'b1;
	
	reg [31:0] 	n		 = {32{1'b0}};
	
	reg 			check	 = 1'b1;
	
	
	always @(posedge clk or posedge reset)
	begin
		if (reset)
		begin
			finish 	= 1'b0;
			check		= 1'b1;
			signal 	= 1'b1;
		end
		else
		begin
			if (check == 1'b1)
			begin
				n = count + count + 1;
				check = 1'b0;
				finish  = 1'b0;
			end
			
			if (n != 1'b0)
			begin
				if (m != 1'b0)
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
				finish = 1'b1;
			end
		end
	end
	
	assign clk_out = signal;
	
endmodule
