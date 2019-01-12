`timescale 1 ns / 10 ps

module genarator(
	input 	wire 				clk, 
	input 	reg		[7:0]	param,
	output 	wire 				clk_out);

	parameter period = 20;

	reg Clk_r;

	reg [7:0] m = 8'b00000000;

	reg signal = 1'b1;

	reg [7:0] n_r;
	initial n_r = 25;

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
		if (m!=0)
			m = m - 1;
		else
			begin
				signal = ~signal;
				m = param - 1;
			end
	end

	assign clk 			= Clk_r;
	assign param		= n_r;
	assign clk_out 	= signal;


endmodule
