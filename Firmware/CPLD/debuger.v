module debuger(
input      JLINK_LED1,
input      JLINK_LED2,
input      JLINK_NCTL1,
input      JLINK_NDAT7,
inout  reg JLINK_JTMS_SWDIO,
input      JLINK_RESET,
inout  reg JLINK_JTDI_TXD,
input      JLINK_JTCK_SWCLK,

input      STLINK_LED_RUN,
input      STLINK_JTCK_RESET,
input      STLINK_TDI,
input      STLINK_JTCK_SWCLK,

input      DAPLINK_LED_RUN,
input      DAPLINK_RESET,
input      DAPLINK_TDI,
input      DAPLINK_JTCK_SWCLK,

output reg DEBUG_JTCK_SWCLK,
output reg DEBUG_TDI,
output reg DEBUG_RESET,

//模拟开关选择信号，切换SWDIO、SWO信号
output reg LINK_SEL1,
output reg LINK_SEL2,

output reg LED_B,
output reg LED_G,
output reg LED_R
);

parameter TYPE_STLINK   = 2'b11;
parameter TYPE_JLINK    = 2'b10;
parameter TYPE_DAPLINK  = 2'b01;

wire [1:0] stlink_state;
wire [1:0] jlink_state;
wire [1:0] daplink_state;

reg [1:0] debuger_type  = 2'b00;
reg [1:0] stlink_buf  = 2'b11;
reg [1:0] jlink_buf   = 2'b10;
reg [1:0] daplink_buf = 2'b11;

assign stlink_state[1:0]  = {STLINK_JTCK_RESET, STLINK_JTCK_SWCLK};
assign jlink_state[1:0]   = {JLINK_RESET,   JLINK_JTCK_SWCLK};
assign daplink_state[1:0] = {DAPLINK_RESET, DAPLINK_JTCK_SWCLK};

always @(*) begin
	if(stlink_buf != stlink_state) begin
		stlink_buf = stlink_state;
		debuger_type = TYPE_STLINK;
	end else if(jlink_buf != jlink_state) begin
		jlink_buf = jlink_state;
		debuger_type = TYPE_JLINK;
	end else if(daplink_buf != daplink_state) begin
		daplink_buf = daplink_state;
		debuger_type = TYPE_DAPLINK;
	end else begin
		debuger_type = debuger_type;
	end
end

always @(*) begin
	if(debuger_type == TYPE_STLINK) begin
		DEBUG_RESET      <= STLINK_JTCK_RESET;
		DEBUG_TDI        <= STLINK_TDI;
		DEBUG_JTCK_SWCLK <= STLINK_JTCK_SWCLK;
		{LINK_SEL2,LINK_SEL1} <= TYPE_STLINK;
		LED_R <= 1'b0;
		LED_G <= STLINK_LED_RUN;
		LED_B <= 1'b1;
	end else if(debuger_type == TYPE_JLINK) begin
		DEBUG_RESET      <= JLINK_RESET;
		DEBUG_TDI        <= JLINK_JTDI_TXD;
		DEBUG_JTCK_SWCLK <= JLINK_JTCK_SWCLK;
		{LINK_SEL2,LINK_SEL1} <= TYPE_JLINK;
		if(JLINK_NCTL1 == 1'b0) begin
			JLINK_JTMS_SWDIO <= 1'bz;//输入
		end else begin
			JLINK_JTMS_SWDIO <= JLINK_NDAT7;//输出
		end		
		LED_R <= 1'b0;
		LED_G <= JLINK_LED1;
		LED_B <= JLINK_LED2;
	end else if(debuger_type == TYPE_DAPLINK) begin
		DEBUG_RESET      <= DAPLINK_RESET;
		DEBUG_TDI        <= DAPLINK_TDI;
		DEBUG_JTCK_SWCLK <= DAPLINK_JTCK_SWCLK;
		{LINK_SEL2,LINK_SEL1} <= TYPE_DAPLINK;
		LED_R <= 1'b1;
		LED_G <= DAPLINK_LED_RUN;
		LED_B <= 1'b0;
	end else begin 
		DEBUG_RESET       <= 1'b1;
		DEBUG_JTCK_SWCLK  <= 1'b1;
		{LINK_SEL2,LINK_SEL1} <= {LINK_SEL2,LINK_SEL1};
		LED_R <= 1'b0;
		LED_G <= 1'b1;
		LED_B <= 1'b1;
	end
end

endmodule