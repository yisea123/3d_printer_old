module clk_gen(
	input 	wire 				clk, 
	input		wire	[31:0]	reduction,
	input 	wire 	[30:0] 	count,
	output 	wire 				clk_out);
	
	reg [31:0] 	m		 = {32{1'b0}};

	reg 			signal = 1'b1;
	
	reg [31:0] 	n		 = {32{1'b0}};
	
	reg 			check	 = 1'b1;

	reg Clk_r;
	reg [32:0] red_r;
	reg [31:0] count_r;
	parameter period = 20;

	initial 
begin
	red_r = 2;
end

	initial 
begin
	count_r = 3;
end
	
initial
  begin
    Clk_r = 1'b0;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r;
    #(period/2) Clk_r = ~Clk_r; 
  end

	always @(clk)
	begin
		if (check)
		begin
			n = count + count + 1;
			check = 1'b0;
		end
		if (n!=0)
		begin
			if (m!=0)
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
		end
	end

	assign count = count_r;
	assign reduction = red_r;
	assign clk = Clk_r;
	assign clk_out = signal;
	
endmodule
