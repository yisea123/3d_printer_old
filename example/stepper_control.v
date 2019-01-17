module stepper_control();

	reg 	[4:0]	reset_step = 5'b00000;
	wire 	[31:0] 	stepper_1_speed;
	wire 	[31:0] 	stepper_1_step_in;
	wire 	[31:0] 	stepper_1_step_out;
	wire 	[4:0] 	step_signal;
	wire	[4:0] 	fin;
	wire	[31:0]	flags_in; 
	wire	[31:0]	flags_out = {32{1'b0}};
	reg 	[31:0] 	flags = {32{1'b0}};
	wire 		fpga_clk;
	reg 	[31:0] 	stepper_step[4:0];


	clk_gen clk_gen1	(	//input
							.clk 			(fpga_clk), 
							.reduction 	(stepper_1_speed),
							.count 		(stepper_1_step_out[30:0]),
							.reset 		(reset_step[0]),
							
							//output
							.clk_out 	(step_signal[0]),
							.finish 		(fin[0])
						);		
 
	always @(fpga_clk)
	begin
		reset_step[0] = 1'b0;
		if (flags[1] == 1'b0)
		begin
			if (stepper_1_step_out != 0)
			begin
				flags[1] = 1'b1;
				reset_step[0] = 1'b1;			
			end
		end
		else
		begin
			if (fin[0] == 1'b1)
			begin	
				stepper_step[0] = 1'b0;
				flags[1] = 1'b0;
				reset_step[0] = 1'b0;
			end
		end
	end

	assign flags_out = flags;
	assign stepper_1_step_in = stepper_step[0];
	assign stepper_1_step_out = stepper_1_step_in;
endmodule
