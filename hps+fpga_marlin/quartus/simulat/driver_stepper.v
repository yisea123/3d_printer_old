 module driver_stepper(
								input wire 	FPGA_CLK1_50,
								input wire 	[31:0] stepper_1_step_out,
								input wire 	[31:0] stepper_1_speed,
								
								output wire [31:0] stepper_1_step_in,
								output wire [2:0] flags1,
								output wire [1:0] reset_step1,
								output wire [4:0] fin,
								output wire step_signal
								);
 
 

reg 	[31:0] 	stepper_step [4:0];
reg 	[1:0] 	reset_step 				= 2'b00;
reg 	[2:0] 	flags 					= 3'b000;


clk_gen clk_gen1	(	//input
							.clk 			(FPGA_CLK1_50), 
							.reduction 	(stepper_1_speed),
							.count 		(stepper_1_step_out[30:0]),
							.reset 		(reset_step[0]),
							
							//output
							.clk_out 	(step_signal),
							.finish 		(fin[0])
						);	


always @(posedge FPGA_CLK1_50)
begin
	stepper_step[0] = stepper_1_step_out;
	if (flags[1] == 1'b0)
	begin
		if (stepper_step[0] != 0)
		begin
			flags[1] = 1'b1;
			reset_step[0] = 1'b1;			
		end
	end
	else
	begin
		if (fin[0] == 1'b1)
		begin	
			stepper_step[0] = 0;
			flags[1] = 1'b0;
			reset_step[0] = 1'b0;
		end
	end
end


assign stepper_1_step_in = stepper_step[0];
assign reset_step1 = reset_step;
assign flags1 = flags;

endmodule
