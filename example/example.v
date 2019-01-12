module example();
	reg 	[3:0] a = 4'b0000;
	reg 	[3:0] b = 4'b0000;
	wire 	[3:0] c = 4'b1111;
	
	initial 
	begin
		#1 	a = 4'b1000;		
		#10 a = 4'b0011;
	end

	initial 
	begin
		#1 	b = 4'b0011;		
	end

	assign c = a | b;
	
endmodule
