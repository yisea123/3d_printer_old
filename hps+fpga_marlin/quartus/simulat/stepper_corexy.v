 module stepper_corexy(
						input 	wire 				clk, 
						input		wire	[31:0]	stepper_step_in_1,						
						input		wire	[31:0]	stepper_speed_1,
						input		wire	[31:0]	stepper_step_in_2,						
						input		wire	[31:0]	stepper_speed_2,
						input		wire				stepper_enable,
						input		wire				xmin,
						input		wire				xmax,
						input		wire				ymin,
						input		wire				ymax,
						input		wire 				start_driving,
						
						
						output 	wire 				step_signal_1, //Максимально 25 MHz при reduction = 1
						output 	wire 				enable_1,
						output	wire				dir_1,
						
						output 	wire 				step_signal_2, //Максимально 25 MHz при reduction = 1
						output 	wire 				enable_2,
						output	wire				dir_2,
						
						output	wire				steppers_driving,
						
						output	wire				correction_x,
						output	wire				correction_y,
						
						output 	wire 	[31:0] 	stepper_step_out_1,
						output 	wire 	[31:0] 	stepper_step_out_2);
		
		
	reg [30:0] 	n_1	 						= 0;
	reg [31:0] 	m_1	 						= 0;
	reg [30:0] 	n_2	 						= 0;
	reg [31:0] 	m_2	 						= 0;
	reg 			signal_1						= 0;
	reg 			signal_2						= 0;	
	reg 			direction_1					= 0;
	reg 			direction_2					= 0;		
	reg			stepper_driving_reg_1 	= 0;
	reg			stepper_driving_reg_2 	= 0;
	reg [31:0]	stepper_step_1				= 0;
	reg [31:0]	stepper_step_2				= 0;	
	reg [31:0]	stepper_speed_reg_1		= 0;
	reg [31:0]	stepper_speed_reg_2		= 0;
	reg 			step_changed	 			= 0;
	reg [31:0]	recount						= 0;
	reg			remainder_x					= 0;
	reg			remainder_y					= 0;
	
	
	assign steppers_driving = stepper_driving_reg_1 | stepper_driving_reg_2;	
	
	assign step_signal_1 = signal_1;	
	assign step_signal_2 = signal_2;	
	
	assign enable_1 = ~stepper_enable;	
	assign enable_2 = ~stepper_enable;	
	
	assign dir_1 = direction_1;
	assign dir_2 = direction_2;
	
	assign stepper_step_out_1 = stepper_step_1;
	assign stepper_step_out_2 = stepper_step_2;
		
	assign correction_x = remainder_x;
	assign correction_y = remainder_y;
	
	
	always @(posedge clk)
	begin		
		if (~stepper_driving_reg_1 & ~stepper_driving_reg_2)
		begin
			if (start_driving == 1'b1)
				if ((stepper_step_in_1[30:0] != 0) | (stepper_step_in_2[30:0] != 0))
				begin
					stepper_step_1 = stepper_step_in_1;
					stepper_step_2 = stepper_step_in_2;
					
					stepper_speed_reg_1 = stepper_speed_1;
					stepper_speed_reg_2 = stepper_speed_2;
					
					stepper_driving_reg_1 = 1'b1;
					stepper_driving_reg_2 = 1'b1;
					
					signal_1 = 1'b1;	
					signal_2 = 1'b1;	
					
					n_1 = stepper_step_1[30:0];
					n_2 = stepper_step_2[30:0];
					
					direction_1 = stepper_step_1[31];
					direction_2 = stepper_step_2[31];
					
					if (stepper_step_1[31])
						n_1 = ~n_1 + 1;
					m_1 = stepper_speed_reg_1 - 1;
					
					if (stepper_step_2[31])
						n_2 = ~n_2 + 1;
					m_2 = stepper_speed_reg_2 - 1;
					
					step_changed = 0;
					remainder_x = 0;
					remainder_y = 0;					
				end
		end
		else
		begin	
			if (stepper_driving_reg_1)
				if (n_1 != 0)
				begin
					if (m_1 != 0)
						m_1 = m_1 - 1;
					else
						begin
							signal_1 = ~signal_1;
							m_1 = stepper_speed_reg_1 - 1;
							if (signal_1 == 0)
								n_1 = n_1 - 1;
							if (direction_1 == 1'b0)
								stepper_step_1 = {direction_1, n_1};
							else
								stepper_step_1 = {direction_1, ~n_1 + 1};
						end				
				end
				else
				begin
					if (signal_1 == 1)
						n_1 = n_1 - 1;
					signal_1 = 1'b0;
					stepper_driving_reg_1 = 1'b0;
					if (direction_1 == 1'b0)
						stepper_step_1 = {direction_1, n_1};
					else
						stepper_step_1 = {direction_1, ~n_1 + 1};
				end
			
			
			if (stepper_driving_reg_2)
				if (n_2 != 0)
				begin
					if (m_2 != 0)
						m_2 = m_2 - 1;
					else
						begin
							signal_2 = ~signal_2;
							m_2 = stepper_speed_reg_2 - 1;
							if (signal_2 == 0)
								n_2 = n_2 - 1;
							if (direction_2 == 1'b0)
								stepper_step_2 = {direction_2, n_2};
							else
								stepper_step_2 = {direction_2, ~n_2 + 1};
						end
					
				end
				else
				begin
					if (signal_2 == 1)
						n_2 = n_2 - 1;
					signal_2 = 1'b0;
					stepper_driving_reg_2 = 1'b0;
					if (direction_2 == 1'b0)
						stepper_step_2 = {direction_2, n_2};
					else
						stepper_step_2 = {direction_2, ~n_2 + 1};
				end
			
			
			
			if (~step_changed)
			begin
				if (xmin | xmax)
				begin					
					if (signal_1 == 1)
					begin
						signal_1 = 0;
						n_1 = n_1 - 1;
					end
						
					if (signal_2 == 1)
					begin
						signal_2 = 0;
						n_2 = n_2 - 1;
					end
					
					if (direction_1 == 1'b0)
						stepper_step_1 = {direction_1, n_1};
					else
						stepper_step_1 = {direction_1, ~n_1 + 1};	
						
					if (direction_2 == 1'b0)
						stepper_step_2 = {direction_2, n_2};
					else
						stepper_step_2 = {direction_2, ~n_2 + 1};
			
					recount = (stepper_step_1 - stepper_step_2);
					remainder_y = recount[0]; //Показывает ечть ли остаток от деления
					recount = recount >> 1;
					recount[31] = recount[30];
											
					if (recount[31])
					begin
						n_1 = ~recount[30:0] + 1;
						n_2 = ~recount[30:0] + 1;
					end
					else
					begin
						n_1 = recount[30:0];
						n_2 = recount[30:0];
					end
					
					direction_1 = recount[31];
					direction_2 = ~recount[31];
					
					stepper_driving_reg_1 = 1'b1;
					stepper_driving_reg_2 = 1'b1;
					
					if (stepper_speed_reg_1 > stepper_speed_reg_2)
						stepper_speed_reg_1 = stepper_speed_reg_2;
					else
						stepper_speed_reg_2 = stepper_speed_reg_1;
					
					step_changed = 1'b1;	
					
					m_1 = stepper_speed_reg_1 - 1;
					m_2 = stepper_speed_reg_2 - 1;
		
					if (direction_1 == 1'b0)
						stepper_step_1 = {direction_1, n_1};
					else
						stepper_step_1 = {direction_1, ~n_1 + 1};	
						
					if (direction_2 == 1'b0)
						stepper_step_2 = {direction_2, n_2};
					else
						stepper_step_2 = {direction_2, ~n_2 + 1};
				end
				
				if (ymin | ymax)
				begin
					if (signal_1 == 1)
					begin
						signal_1 = 0;
						n_1 = n_1 - 1;
					end
						
					if (signal_2 == 1)
					begin
						signal_2 = 0;
						n_2 = n_2 - 1;
					end
					
					if (direction_1 == 1'b0)
						stepper_step_1 = {direction_1, n_1};
					else
						stepper_step_1 = {direction_1, ~n_1 + 1};						
					if (direction_2 == 1'b0)
						stepper_step_2 = {direction_2, n_2};
					else
						stepper_step_2 = {direction_2, ~n_2 + 1};
					
					recount = (stepper_step_1 + stepper_step_2);
					remainder_x = recount[0]; //Показывает ечть ли остаток от деления
					recount = recount >> 1;
					recount[31] = recount[30];
																
					if (recount[31])
					begin
						n_1 = ~recount[30:0] + 1;
						n_2 = ~recount[30:0] + 1;
					end
					else
					begin
						n_1 = recount[30:0];
						n_2 = recount[30:0];
					end
					
					direction_1 = recount[31];
					direction_2 = ~recount[31];
					
					stepper_driving_reg_1 = 1'b1;
					stepper_driving_reg_2 = 1'b1;
					
					if (stepper_speed_reg_1 > stepper_speed_reg_2)
						stepper_speed_reg_1 = stepper_speed_reg_2;
					else
						stepper_speed_reg_2 = stepper_speed_reg_1;
					
					step_changed = 1'b1;
					
					m_1 = stepper_speed_reg_1 - 1;
					m_2 = stepper_speed_reg_2 - 1;
					
					if (direction_1 == 1'b0)
						stepper_step_1 = {direction_1, n_1};
					else
						stepper_step_1 = {direction_1, ~n_1 + 1};	
						
					if (direction_2 == 1'b0)
						stepper_step_2 = {direction_2, n_2};
					else
						stepper_step_2 = {direction_2, ~n_2 + 1};
				end
			end
			
			if ((xmin | xmax) & (ymin | ymax))
			begin
				if (signal_1 == 1)
					n_1 = n_1 - 1;
				signal_1 = 1'b0;
				stepper_driving_reg_1 = 1'b0;
				if (stepper_step_1[31] == 1'b0)
					stepper_step_1 = {direction_1, n_1};
				else
					stepper_step_1 = {direction_1, ~n_1 + 1};
					
				if (signal_2 == 1)
					n_2 = n_2 - 1;
				signal_2 = 1'b0;
				stepper_driving_reg_2 = 1'b0;
				if (stepper_step_2[31] == 1'b0)
					stepper_step_2 = {direction_2, n_2};
				else
					stepper_step_2 = {direction_2, ~n_2 + 1};
			end
		end	
	end
	
	
	
endmodule
