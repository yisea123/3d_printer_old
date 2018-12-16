	hps u0 (
		.arduino_io_external_connection_in_port  (<connected-to-arduino_io_external_connection_in_port>),  // arduino_io_external_connection.in_port
		.arduino_io_external_connection_out_port (<connected-to-arduino_io_external_connection_out_port>), //                               .out_port
		.arduino_io_reset_reset_n                (<connected-to-arduino_io_reset_reset_n>),                //               arduino_io_reset.reset_n
		.clk_clk                                 (<connected-to-clk_clk>),                                 //                            clk.clk
		.gpio0_external_connection_in_port       (<connected-to-gpio0_external_connection_in_port>),       //      gpio0_external_connection.in_port
		.gpio0_external_connection_out_port      (<connected-to-gpio0_external_connection_out_port>),      //                               .out_port
		.gpio1_external_connection_in_port       (<connected-to-gpio1_external_connection_in_port>),       //      gpio1_external_connection.in_port
		.gpio1_external_connection_out_port      (<connected-to-gpio1_external_connection_out_port>),      //                               .out_port
		.hps_io_hps_io_sdio_inst_CMD             (<connected-to-hps_io_hps_io_sdio_inst_CMD>),             //                         hps_io.hps_io_sdio_inst_CMD
		.hps_io_hps_io_sdio_inst_D0              (<connected-to-hps_io_hps_io_sdio_inst_D0>),              //                               .hps_io_sdio_inst_D0
		.hps_io_hps_io_sdio_inst_D1              (<connected-to-hps_io_hps_io_sdio_inst_D1>),              //                               .hps_io_sdio_inst_D1
		.hps_io_hps_io_sdio_inst_CLK             (<connected-to-hps_io_hps_io_sdio_inst_CLK>),             //                               .hps_io_sdio_inst_CLK
		.hps_io_hps_io_sdio_inst_D2              (<connected-to-hps_io_hps_io_sdio_inst_D2>),              //                               .hps_io_sdio_inst_D2
		.hps_io_hps_io_sdio_inst_D3              (<connected-to-hps_io_hps_io_sdio_inst_D3>),              //                               .hps_io_sdio_inst_D3
		.hps_io_hps_io_uart0_inst_RX             (<connected-to-hps_io_hps_io_uart0_inst_RX>),             //                               .hps_io_uart0_inst_RX
		.hps_io_hps_io_uart0_inst_TX             (<connected-to-hps_io_hps_io_uart0_inst_TX>),             //                               .hps_io_uart0_inst_TX
		.keys_external_connection_export         (<connected-to-keys_external_connection_export>),         //       keys_external_connection.export
		.led_external_connection_export          (<connected-to-led_external_connection_export>),          //        led_external_connection.export
		.memory_mem_a                            (<connected-to-memory_mem_a>),                            //                         memory.mem_a
		.memory_mem_ba                           (<connected-to-memory_mem_ba>),                           //                               .mem_ba
		.memory_mem_ck                           (<connected-to-memory_mem_ck>),                           //                               .mem_ck
		.memory_mem_ck_n                         (<connected-to-memory_mem_ck_n>),                         //                               .mem_ck_n
		.memory_mem_cke                          (<connected-to-memory_mem_cke>),                          //                               .mem_cke
		.memory_mem_cs_n                         (<connected-to-memory_mem_cs_n>),                         //                               .mem_cs_n
		.memory_mem_ras_n                        (<connected-to-memory_mem_ras_n>),                        //                               .mem_ras_n
		.memory_mem_cas_n                        (<connected-to-memory_mem_cas_n>),                        //                               .mem_cas_n
		.memory_mem_we_n                         (<connected-to-memory_mem_we_n>),                         //                               .mem_we_n
		.memory_mem_reset_n                      (<connected-to-memory_mem_reset_n>),                      //                               .mem_reset_n
		.memory_mem_dq                           (<connected-to-memory_mem_dq>),                           //                               .mem_dq
		.memory_mem_dqs                          (<connected-to-memory_mem_dqs>),                          //                               .mem_dqs
		.memory_mem_dqs_n                        (<connected-to-memory_mem_dqs_n>),                        //                               .mem_dqs_n
		.memory_mem_odt                          (<connected-to-memory_mem_odt>),                          //                               .mem_odt
		.memory_mem_dm                           (<connected-to-memory_mem_dm>),                           //                               .mem_dm
		.memory_oct_rzqin                        (<connected-to-memory_oct_rzqin>),                        //                               .oct_rzqin
		.sw_external_connection_export           (<connected-to-sw_external_connection_export>)            //         sw_external_connection.export
	);

