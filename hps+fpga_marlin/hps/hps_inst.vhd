	component hps is
		port (
			arduino_io_external_connection_in_port  : in    std_logic_vector(15 downto 0) := (others => 'X'); -- in_port
			arduino_io_external_connection_out_port : out   std_logic_vector(15 downto 0);                    -- out_port
			arduino_io_reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
			clk_clk                                 : in    std_logic                     := 'X';             -- clk
			gpio0_external_connection_in_port       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
			gpio0_external_connection_out_port      : out   std_logic_vector(31 downto 0);                    -- out_port
			gpio1_external_connection_in_port       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
			gpio1_external_connection_out_port      : out   std_logic_vector(31 downto 0);                    -- out_port
			hps_io_hps_io_sdio_inst_CMD             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK             : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3              : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_uart0_inst_RX             : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX             : out   std_logic;                                        -- hps_io_uart0_inst_TX
			keys_external_connection_export         : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			led_external_connection_export          : out   std_logic_vector(7 downto 0);                     -- export
			memory_mem_a                            : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba                           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                           : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                         : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                          : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                         : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                        : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                        : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                         : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                      : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                           : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs                          : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n                        : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt                          : out   std_logic;                                        -- mem_odt
			memory_mem_dm                           : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin                        : in    std_logic                     := 'X';             -- oct_rzqin
			sw_external_connection_export           : in    std_logic_vector(3 downto 0)  := (others => 'X')  -- export
		);
	end component hps;

	u0 : component hps
		port map (
			arduino_io_external_connection_in_port  => CONNECTED_TO_arduino_io_external_connection_in_port,  -- arduino_io_external_connection.in_port
			arduino_io_external_connection_out_port => CONNECTED_TO_arduino_io_external_connection_out_port, --                               .out_port
			arduino_io_reset_reset_n                => CONNECTED_TO_arduino_io_reset_reset_n,                --               arduino_io_reset.reset_n
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                            clk.clk
			gpio0_external_connection_in_port       => CONNECTED_TO_gpio0_external_connection_in_port,       --      gpio0_external_connection.in_port
			gpio0_external_connection_out_port      => CONNECTED_TO_gpio0_external_connection_out_port,      --                               .out_port
			gpio1_external_connection_in_port       => CONNECTED_TO_gpio1_external_connection_in_port,       --      gpio1_external_connection.in_port
			gpio1_external_connection_out_port      => CONNECTED_TO_gpio1_external_connection_out_port,      --                               .out_port
			hps_io_hps_io_sdio_inst_CMD             => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,             --                         hps_io.hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,              --                               .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,              --                               .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK             => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,             --                               .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,              --                               .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3              => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,              --                               .hps_io_sdio_inst_D3
			hps_io_hps_io_uart0_inst_RX             => CONNECTED_TO_hps_io_hps_io_uart0_inst_RX,             --                               .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX             => CONNECTED_TO_hps_io_hps_io_uart0_inst_TX,             --                               .hps_io_uart0_inst_TX
			keys_external_connection_export         => CONNECTED_TO_keys_external_connection_export,         --       keys_external_connection.export
			led_external_connection_export          => CONNECTED_TO_led_external_connection_export,          --        led_external_connection.export
			memory_mem_a                            => CONNECTED_TO_memory_mem_a,                            --                         memory.mem_a
			memory_mem_ba                           => CONNECTED_TO_memory_mem_ba,                           --                               .mem_ba
			memory_mem_ck                           => CONNECTED_TO_memory_mem_ck,                           --                               .mem_ck
			memory_mem_ck_n                         => CONNECTED_TO_memory_mem_ck_n,                         --                               .mem_ck_n
			memory_mem_cke                          => CONNECTED_TO_memory_mem_cke,                          --                               .mem_cke
			memory_mem_cs_n                         => CONNECTED_TO_memory_mem_cs_n,                         --                               .mem_cs_n
			memory_mem_ras_n                        => CONNECTED_TO_memory_mem_ras_n,                        --                               .mem_ras_n
			memory_mem_cas_n                        => CONNECTED_TO_memory_mem_cas_n,                        --                               .mem_cas_n
			memory_mem_we_n                         => CONNECTED_TO_memory_mem_we_n,                         --                               .mem_we_n
			memory_mem_reset_n                      => CONNECTED_TO_memory_mem_reset_n,                      --                               .mem_reset_n
			memory_mem_dq                           => CONNECTED_TO_memory_mem_dq,                           --                               .mem_dq
			memory_mem_dqs                          => CONNECTED_TO_memory_mem_dqs,                          --                               .mem_dqs
			memory_mem_dqs_n                        => CONNECTED_TO_memory_mem_dqs_n,                        --                               .mem_dqs_n
			memory_mem_odt                          => CONNECTED_TO_memory_mem_odt,                          --                               .mem_odt
			memory_mem_dm                           => CONNECTED_TO_memory_mem_dm,                           --                               .mem_dm
			memory_oct_rzqin                        => CONNECTED_TO_memory_oct_rzqin,                        --                               .oct_rzqin
			sw_external_connection_export           => CONNECTED_TO_sw_external_connection_export            --         sw_external_connection.export
		);

