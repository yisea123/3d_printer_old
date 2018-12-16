
module hps (
	arduino_io_external_connection_in_port,
	arduino_io_external_connection_out_port,
	arduino_io_reset_reset_n,
	clk_clk,
	gpio0_external_connection_in_port,
	gpio0_external_connection_out_port,
	gpio1_external_connection_in_port,
	gpio1_external_connection_out_port,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	keys_external_connection_export,
	led_external_connection_export,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	sw_external_connection_export);	

	input	[15:0]	arduino_io_external_connection_in_port;
	output	[15:0]	arduino_io_external_connection_out_port;
	input		arduino_io_reset_reset_n;
	input		clk_clk;
	input	[31:0]	gpio0_external_connection_in_port;
	output	[31:0]	gpio0_external_connection_out_port;
	input	[31:0]	gpio1_external_connection_in_port;
	output	[31:0]	gpio1_external_connection_out_port;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	input	[1:0]	keys_external_connection_export;
	output	[7:0]	led_external_connection_export;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout		memory_mem_dqs;
	inout		memory_mem_dqs_n;
	output		memory_mem_odt;
	output		memory_mem_dm;
	input		memory_oct_rzqin;
	input	[3:0]	sw_external_connection_export;
endmodule
