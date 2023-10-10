`timescale 1 ps/ 1 ps

module debuger(
	JLINK_JTDI_TXD,
	JLINK_LED1,
	JLINK_LED2,
	JLINK_NCTL1,
	JLINK_NDAT7,
	JLINK_JTMS_SWDIO,
	JLINK_RESET,
	JLINK_JTCK_SWCLK,
	STLINK_LED_RUN,
	STLINK_JTCK_RESET,
	STLINK_TDI,
	STLINK_JTCK_SWCLK,
	DAPLINK_LED_RUN,
	DAPLINK_RESET,
	DAPLINK_TDI,
	DAPLINK_JTCK_SWCLK,
	DEBUG_JTCK_SWCLK,
	DEBUG_TDI,
	DEBUG_RESET,
	LINK_SEL1,
	LINK_SEL2,
	LED_B,
	LED_G,
	LED_R);
inout	JLINK_JTDI_TXD;
input	JLINK_LED1;
input	JLINK_LED2;
input	JLINK_NCTL1;
input	JLINK_NDAT7;
inout	JLINK_JTMS_SWDIO;
input	JLINK_RESET;
input	JLINK_JTCK_SWCLK;
input	STLINK_LED_RUN;
input	STLINK_JTCK_RESET;
input	STLINK_TDI;
input	STLINK_JTCK_SWCLK;
input	DAPLINK_LED_RUN;
input	DAPLINK_RESET;
input	DAPLINK_TDI;
input	DAPLINK_JTCK_SWCLK;
output	DEBUG_JTCK_SWCLK;
output	DEBUG_TDI;
output	DEBUG_RESET;
output	LINK_SEL1;
output	LINK_SEL2;
output	LED_B;
output	LED_G;
output	LED_R;

//wire	gnd;
//wire	vcc;
wire	\DAPLINK_JTCK_SWCLK~input_o ;
wire	\DAPLINK_LED_RUN~input_o ;
wire	\DAPLINK_RESET~input_o ;
wire	\DAPLINK_TDI~input_o ;
wire	\DEBUG_JTCK_SWCLK~0_combout ;
wire	\DEBUG_JTCK_SWCLK~1_combout ;
wire	\DEBUG_JTCK_SWCLK~2_combout ;
wire	\DEBUG_RESET~0_combout ;
wire	\DEBUG_RESET~1_combout ;
wire	\DEBUG_TDI$latch~combout ;
wire	\DEBUG_TDI~0_combout ;
wire	\DEBUG_TDI~1_combout ;
wire	\DEBUG_TDI~2_combout ;
wire	\Equal0~0_combout ;
wire	\Equal0~0clkctrl_outclk ;
wire	\Equal1~0_combout ;
wire	\JLINK_JTCK_SWCLK~input_o ;
wire	\JLINK_JTDI_TXD~input_o ;
wire	\JLINK_JTMS_SWDIO$latch~combout ;
wire	\JLINK_JTMS_SWDIO_117~combout ;
wire	\JLINK_JTMS_SWDIO~input_o ;
wire	\JLINK_LED1~input_o ;
wire	\JLINK_LED2~input_o ;
wire	\JLINK_NCTL1~input_o ;
wire	\JLINK_NDAT7~input_o ;
wire	\JLINK_RESET~input_o ;
wire	\LED_B~0_combout ;
wire	\LED_G~0_combout ;
wire	\LED_G~1_combout ;
wire	\LED_R~0_combout ;
wire	\LINK_SEL1$latch~combout ;
wire	\LINK_SEL2$latch~combout ;
wire	\STLINK_JTCK_RESET~input_o ;
wire	\STLINK_JTCK_SWCLK~input_o ;
wire	\STLINK_LED_RUN~input_o ;
wire	\STLINK_TDI~input_o ;
wire	\comb~0_combout ;
wire	\comb~1_combout ;
wire	\comb~2_combout ;
wire	\comb~2clkctrl_outclk ;
wire	[1:0] daplink_buf;
//wire	daplink_buf[0];
wire	\daplink_buf[0]~0_combout ;
wire	\daplink_buf[0]~1_combout ;
wire	\daplink_buf[0]~1clkctrl_outclk ;
//wire	daplink_buf[1];
wire	\debuger_type.TYPE_DAPLINK_192~combout ;
wire	\debuger_type.TYPE_DAPLINK~0_combout ;
wire	\debuger_type.TYPE_DAPLINK~1_combout ;
wire	\debuger_type.TYPE_JLINK_185~combout ;
wire	\debuger_type.TYPE_STLINK_178~combout ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	[1:0] jlink_buf;
//wire	jlink_buf[0];
wire	\jlink_buf[0]~0_combout ;
//wire	jlink_buf[1];
wire	[1:0] stlink_buf;
//wire	stlink_buf[0];
//wire	stlink_buf[1];
wire	unknown;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio \DAPLINK_JTCK_SWCLK~input (
	.padio(DAPLINK_JTCK_SWCLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DAPLINK_JTCK_SWCLK~input_o ),
	.regout());
defparam \DAPLINK_JTCK_SWCLK~input .coord_x = 6;
defparam \DAPLINK_JTCK_SWCLK~input .coord_y = 1;
defparam \DAPLINK_JTCK_SWCLK~input .coord_z = 3;
defparam \DAPLINK_JTCK_SWCLK~input .IN_ASYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .IN_SYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .IN_POWERUP = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OUT_REG_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OUT_SYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OUT_POWERUP = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OE_REG_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OE_ASYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OE_SYNC_MODE = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .OE_POWERUP = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_TRI_INPUT = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_PULL_UP = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_SLR = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_PDRCTRL = 4'b0010;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_KEEP = 2'b00;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \DAPLINK_JTCK_SWCLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .DPCLK_DELAY = 4'b0000;
defparam \DAPLINK_JTCK_SWCLK~input .OUT_DELAY = 1'b0;
defparam \DAPLINK_JTCK_SWCLK~input .IN_DATA_DELAY = 3'b000;
defparam \DAPLINK_JTCK_SWCLK~input .IN_REG_DELAY = 3'b000;

alta_rio \DAPLINK_LED_RUN~input (
	.padio(DAPLINK_LED_RUN),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DAPLINK_LED_RUN~input_o ),
	.regout());
defparam \DAPLINK_LED_RUN~input .coord_x = 9;
defparam \DAPLINK_LED_RUN~input .coord_y = 0;
defparam \DAPLINK_LED_RUN~input .coord_z = 3;
defparam \DAPLINK_LED_RUN~input .IN_ASYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .IN_SYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .IN_POWERUP = 1'b0;
defparam \DAPLINK_LED_RUN~input .OUT_REG_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OUT_ASYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OUT_SYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OUT_POWERUP = 1'b0;
defparam \DAPLINK_LED_RUN~input .OE_REG_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OE_ASYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OE_SYNC_MODE = 1'b0;
defparam \DAPLINK_LED_RUN~input .OE_POWERUP = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_TRI_INPUT = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_PULL_UP = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_SLR = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_OPEN_DRAIN = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_PDRCTRL = 4'b0010;
defparam \DAPLINK_LED_RUN~input .CFG_KEEP = 2'b00;
defparam \DAPLINK_LED_RUN~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \DAPLINK_LED_RUN~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DAPLINK_LED_RUN~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \DAPLINK_LED_RUN~input .CFG_LVDS_IN_EN = 1'b0;
defparam \DAPLINK_LED_RUN~input .DPCLK_DELAY = 4'b0000;
defparam \DAPLINK_LED_RUN~input .OUT_DELAY = 1'b0;
defparam \DAPLINK_LED_RUN~input .IN_DATA_DELAY = 3'b000;
defparam \DAPLINK_LED_RUN~input .IN_REG_DELAY = 3'b000;

alta_rio \DAPLINK_RESET~input (
	.padio(DAPLINK_RESET),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DAPLINK_RESET~input_o ),
	.regout());
defparam \DAPLINK_RESET~input .coord_x = 6;
defparam \DAPLINK_RESET~input .coord_y = 1;
defparam \DAPLINK_RESET~input .coord_z = 0;
defparam \DAPLINK_RESET~input .IN_ASYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .IN_SYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .IN_POWERUP = 1'b0;
defparam \DAPLINK_RESET~input .OUT_REG_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OUT_ASYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OUT_SYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OUT_POWERUP = 1'b0;
defparam \DAPLINK_RESET~input .OE_REG_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OE_ASYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OE_SYNC_MODE = 1'b0;
defparam \DAPLINK_RESET~input .OE_POWERUP = 1'b0;
defparam \DAPLINK_RESET~input .CFG_TRI_INPUT = 1'b0;
defparam \DAPLINK_RESET~input .CFG_PULL_UP = 1'b0;
defparam \DAPLINK_RESET~input .CFG_SLR = 1'b0;
defparam \DAPLINK_RESET~input .CFG_OPEN_DRAIN = 1'b0;
defparam \DAPLINK_RESET~input .CFG_PDRCTRL = 4'b0010;
defparam \DAPLINK_RESET~input .CFG_KEEP = 2'b00;
defparam \DAPLINK_RESET~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \DAPLINK_RESET~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DAPLINK_RESET~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \DAPLINK_RESET~input .CFG_LVDS_IN_EN = 1'b0;
defparam \DAPLINK_RESET~input .DPCLK_DELAY = 4'b0000;
defparam \DAPLINK_RESET~input .OUT_DELAY = 1'b0;
defparam \DAPLINK_RESET~input .IN_DATA_DELAY = 3'b000;
defparam \DAPLINK_RESET~input .IN_REG_DELAY = 3'b000;

alta_rio \DAPLINK_TDI~input (
	.padio(DAPLINK_TDI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DAPLINK_TDI~input_o ),
	.regout());
defparam \DAPLINK_TDI~input .coord_x = 6;
defparam \DAPLINK_TDI~input .coord_y = 1;
defparam \DAPLINK_TDI~input .coord_z = 1;
defparam \DAPLINK_TDI~input .IN_ASYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .IN_SYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .IN_POWERUP = 1'b0;
defparam \DAPLINK_TDI~input .OUT_REG_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OUT_ASYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OUT_SYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OUT_POWERUP = 1'b0;
defparam \DAPLINK_TDI~input .OE_REG_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OE_ASYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OE_SYNC_MODE = 1'b0;
defparam \DAPLINK_TDI~input .OE_POWERUP = 1'b0;
defparam \DAPLINK_TDI~input .CFG_TRI_INPUT = 1'b0;
defparam \DAPLINK_TDI~input .CFG_PULL_UP = 1'b0;
defparam \DAPLINK_TDI~input .CFG_SLR = 1'b0;
defparam \DAPLINK_TDI~input .CFG_OPEN_DRAIN = 1'b0;
defparam \DAPLINK_TDI~input .CFG_PDRCTRL = 4'b0010;
defparam \DAPLINK_TDI~input .CFG_KEEP = 2'b00;
defparam \DAPLINK_TDI~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \DAPLINK_TDI~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DAPLINK_TDI~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \DAPLINK_TDI~input .CFG_LVDS_IN_EN = 1'b0;
defparam \DAPLINK_TDI~input .DPCLK_DELAY = 4'b0000;
defparam \DAPLINK_TDI~input .OUT_DELAY = 1'b0;
defparam \DAPLINK_TDI~input .IN_DATA_DELAY = 3'b000;
defparam \DAPLINK_TDI~input .IN_REG_DELAY = 3'b000;

alta_slice \DEBUG_JTCK_SWCLK~0 (
	.A(\debuger_type.TYPE_STLINK_178~combout ),
	.B(\debuger_type.TYPE_JLINK_185~combout ),
	.C(\STLINK_JTCK_SWCLK~input_o ),
	.D(\JLINK_JTCK_SWCLK~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_JTCK_SWCLK~0_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_JTCK_SWCLK~0 .coord_x = 5;
defparam \DEBUG_JTCK_SWCLK~0 .coord_y = 2;
defparam \DEBUG_JTCK_SWCLK~0 .coord_z = 12;
defparam \DEBUG_JTCK_SWCLK~0 .mask = 16'hE4A0;
defparam \DEBUG_JTCK_SWCLK~0 .modeMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~0 .FeedbackMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~0 .ShiftMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~0 .BypassEn = 1'b0;
defparam \DEBUG_JTCK_SWCLK~0 .CarryEnb = 1'b1;

alta_slice \DEBUG_JTCK_SWCLK~1 (
	.A(vcc),
	.B(vcc),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\debuger_type.TYPE_JLINK_185~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_JTCK_SWCLK~1_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_JTCK_SWCLK~1 .coord_x = 4;
defparam \DEBUG_JTCK_SWCLK~1 .coord_y = 2;
defparam \DEBUG_JTCK_SWCLK~1 .coord_z = 10;
defparam \DEBUG_JTCK_SWCLK~1 .mask = 16'h000F;
defparam \DEBUG_JTCK_SWCLK~1 .modeMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~1 .FeedbackMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~1 .ShiftMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~1 .BypassEn = 1'b0;
defparam \DEBUG_JTCK_SWCLK~1 .CarryEnb = 1'b1;

alta_slice \DEBUG_JTCK_SWCLK~2 (
	.A(\DEBUG_JTCK_SWCLK~0_combout ),
	.B(\DEBUG_JTCK_SWCLK~1_combout ),
	.C(\debuger_type.TYPE_DAPLINK_192~combout ),
	.D(\DAPLINK_JTCK_SWCLK~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_JTCK_SWCLK~2_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_JTCK_SWCLK~2 .coord_x = 5;
defparam \DEBUG_JTCK_SWCLK~2 .coord_y = 2;
defparam \DEBUG_JTCK_SWCLK~2 .coord_z = 4;
defparam \DEBUG_JTCK_SWCLK~2 .mask = 16'hEEAE;
defparam \DEBUG_JTCK_SWCLK~2 .modeMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~2 .FeedbackMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~2 .ShiftMux = 1'b0;
defparam \DEBUG_JTCK_SWCLK~2 .BypassEn = 1'b0;
defparam \DEBUG_JTCK_SWCLK~2 .CarryEnb = 1'b1;

alta_rio \DEBUG_JTCK_SWCLK~output (
	.padio(DEBUG_JTCK_SWCLK),
	.datain(\DEBUG_JTCK_SWCLK~2_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \DEBUG_JTCK_SWCLK~output .coord_x = 7;
defparam \DEBUG_JTCK_SWCLK~output .coord_y = 1;
defparam \DEBUG_JTCK_SWCLK~output .coord_z = 0;
defparam \DEBUG_JTCK_SWCLK~output .IN_ASYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .IN_SYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .IN_POWERUP = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OUT_REG_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OUT_ASYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OUT_SYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OUT_POWERUP = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OE_REG_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OE_ASYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OE_SYNC_MODE = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .OE_POWERUP = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_TRI_INPUT = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_PULL_UP = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_SLR = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_PDRCTRL = 4'b0010;
defparam \DEBUG_JTCK_SWCLK~output .CFG_KEEP = 2'b00;
defparam \DEBUG_JTCK_SWCLK~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DEBUG_JTCK_SWCLK~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DEBUG_JTCK_SWCLK~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .DPCLK_DELAY = 4'b0000;
defparam \DEBUG_JTCK_SWCLK~output .OUT_DELAY = 1'b0;
defparam \DEBUG_JTCK_SWCLK~output .IN_DATA_DELAY = 3'b000;
defparam \DEBUG_JTCK_SWCLK~output .IN_REG_DELAY = 3'b000;

alta_slice \DEBUG_RESET~0 (
	.A(\JLINK_RESET~input_o ),
	.B(\STLINK_JTCK_RESET~input_o ),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\debuger_type.TYPE_JLINK_185~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_RESET~0_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_RESET~0 .coord_x = 5;
defparam \DEBUG_RESET~0 .coord_y = 2;
defparam \DEBUG_RESET~0 .coord_z = 15;
defparam \DEBUG_RESET~0 .mask = 16'hCAC0;
defparam \DEBUG_RESET~0 .modeMux = 1'b0;
defparam \DEBUG_RESET~0 .FeedbackMux = 1'b0;
defparam \DEBUG_RESET~0 .ShiftMux = 1'b0;
defparam \DEBUG_RESET~0 .BypassEn = 1'b0;
defparam \DEBUG_RESET~0 .CarryEnb = 1'b1;

alta_slice \DEBUG_RESET~1 (
	.A(\DEBUG_RESET~0_combout ),
	.B(\DEBUG_JTCK_SWCLK~1_combout ),
	.C(\debuger_type.TYPE_DAPLINK_192~combout ),
	.D(\DAPLINK_RESET~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_RESET~1_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_RESET~1 .coord_x = 5;
defparam \DEBUG_RESET~1 .coord_y = 2;
defparam \DEBUG_RESET~1 .coord_z = 14;
defparam \DEBUG_RESET~1 .mask = 16'hEEAE;
defparam \DEBUG_RESET~1 .modeMux = 1'b0;
defparam \DEBUG_RESET~1 .FeedbackMux = 1'b0;
defparam \DEBUG_RESET~1 .ShiftMux = 1'b0;
defparam \DEBUG_RESET~1 .BypassEn = 1'b0;
defparam \DEBUG_RESET~1 .CarryEnb = 1'b1;

alta_rio \DEBUG_RESET~output (
	.padio(DEBUG_RESET),
	.datain(\DEBUG_RESET~1_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \DEBUG_RESET~output .coord_x = 6;
defparam \DEBUG_RESET~output .coord_y = 9;
defparam \DEBUG_RESET~output .coord_z = 2;
defparam \DEBUG_RESET~output .IN_ASYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .IN_SYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .IN_POWERUP = 1'b0;
defparam \DEBUG_RESET~output .OUT_REG_MODE = 1'b0;
defparam \DEBUG_RESET~output .OUT_ASYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .OUT_SYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .OUT_POWERUP = 1'b0;
defparam \DEBUG_RESET~output .OE_REG_MODE = 1'b0;
defparam \DEBUG_RESET~output .OE_ASYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .OE_SYNC_MODE = 1'b0;
defparam \DEBUG_RESET~output .OE_POWERUP = 1'b0;
defparam \DEBUG_RESET~output .CFG_TRI_INPUT = 1'b0;
defparam \DEBUG_RESET~output .CFG_PULL_UP = 1'b0;
defparam \DEBUG_RESET~output .CFG_SLR = 1'b0;
defparam \DEBUG_RESET~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DEBUG_RESET~output .CFG_PDRCTRL = 4'b0010;
defparam \DEBUG_RESET~output .CFG_KEEP = 2'b00;
defparam \DEBUG_RESET~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DEBUG_RESET~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DEBUG_RESET~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DEBUG_RESET~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DEBUG_RESET~output .DPCLK_DELAY = 4'b0000;
defparam \DEBUG_RESET~output .OUT_DELAY = 1'b0;
defparam \DEBUG_RESET~output .IN_DATA_DELAY = 3'b000;
defparam \DEBUG_RESET~output .IN_REG_DELAY = 3'b000;

alta_slice DEBUG_TDI$latch(
	.A(\DEBUG_TDI~2_combout ),
	.B(vcc),
	.C(\DEBUG_TDI$latch~combout ),
	.D(\DEBUG_TDI~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_TDI$latch~combout ),
	.Cout(),
	.Q());
defparam DEBUG_TDI$latch.coord_x = 4;
defparam DEBUG_TDI$latch.coord_y = 2;
defparam DEBUG_TDI$latch.coord_z = 3;
defparam DEBUG_TDI$latch.mask = 16'hFA50;
defparam DEBUG_TDI$latch.modeMux = 1'b0;
defparam DEBUG_TDI$latch.FeedbackMux = 1'b0;
defparam DEBUG_TDI$latch.ShiftMux = 1'b0;
defparam DEBUG_TDI$latch.BypassEn = 1'b0;
defparam DEBUG_TDI$latch.CarryEnb = 1'b1;

alta_slice \DEBUG_TDI~0 (
	.A(\JLINK_JTDI_TXD~input_o ),
	.B(\debuger_type.TYPE_JLINK_185~combout ),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\DAPLINK_TDI~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_TDI~0_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_TDI~0 .coord_x = 4;
defparam \DEBUG_TDI~0 .coord_y = 2;
defparam \DEBUG_TDI~0 .coord_z = 1;
defparam \DEBUG_TDI~0 .mask = 16'h0B08;
defparam \DEBUG_TDI~0 .modeMux = 1'b0;
defparam \DEBUG_TDI~0 .FeedbackMux = 1'b0;
defparam \DEBUG_TDI~0 .ShiftMux = 1'b0;
defparam \DEBUG_TDI~0 .BypassEn = 1'b0;
defparam \DEBUG_TDI~0 .CarryEnb = 1'b1;

alta_slice \DEBUG_TDI~1 (
	.A(\STLINK_TDI~input_o ),
	.B(vcc),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\DEBUG_TDI~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_TDI~1_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_TDI~1 .coord_x = 4;
defparam \DEBUG_TDI~1 .coord_y = 2;
defparam \DEBUG_TDI~1 .coord_z = 15;
defparam \DEBUG_TDI~1 .mask = 16'hFFA0;
defparam \DEBUG_TDI~1 .modeMux = 1'b0;
defparam \DEBUG_TDI~1 .FeedbackMux = 1'b0;
defparam \DEBUG_TDI~1 .ShiftMux = 1'b0;
defparam \DEBUG_TDI~1 .BypassEn = 1'b0;
defparam \DEBUG_TDI~1 .CarryEnb = 1'b1;

alta_slice \DEBUG_TDI~2 (
	.A(vcc),
	.B(\debuger_type.TYPE_JLINK_185~combout ),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\debuger_type.TYPE_DAPLINK_192~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DEBUG_TDI~2_combout ),
	.Cout(),
	.Q());
defparam \DEBUG_TDI~2 .coord_x = 4;
defparam \DEBUG_TDI~2 .coord_y = 2;
defparam \DEBUG_TDI~2 .coord_z = 8;
defparam \DEBUG_TDI~2 .mask = 16'hFFFC;
defparam \DEBUG_TDI~2 .modeMux = 1'b0;
defparam \DEBUG_TDI~2 .FeedbackMux = 1'b0;
defparam \DEBUG_TDI~2 .ShiftMux = 1'b0;
defparam \DEBUG_TDI~2 .BypassEn = 1'b0;
defparam \DEBUG_TDI~2 .CarryEnb = 1'b1;

alta_rio \DEBUG_TDI~output (
	.padio(DEBUG_TDI),
	.datain(\DEBUG_TDI$latch~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \DEBUG_TDI~output .coord_x = 4;
defparam \DEBUG_TDI~output .coord_y = 1;
defparam \DEBUG_TDI~output .coord_z = 0;
defparam \DEBUG_TDI~output .IN_ASYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .IN_SYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .IN_POWERUP = 1'b0;
defparam \DEBUG_TDI~output .OUT_REG_MODE = 1'b0;
defparam \DEBUG_TDI~output .OUT_ASYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .OUT_SYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .OUT_POWERUP = 1'b0;
defparam \DEBUG_TDI~output .OE_REG_MODE = 1'b0;
defparam \DEBUG_TDI~output .OE_ASYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .OE_SYNC_MODE = 1'b0;
defparam \DEBUG_TDI~output .OE_POWERUP = 1'b0;
defparam \DEBUG_TDI~output .CFG_TRI_INPUT = 1'b0;
defparam \DEBUG_TDI~output .CFG_PULL_UP = 1'b0;
defparam \DEBUG_TDI~output .CFG_SLR = 1'b0;
defparam \DEBUG_TDI~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DEBUG_TDI~output .CFG_PDRCTRL = 4'b0010;
defparam \DEBUG_TDI~output .CFG_KEEP = 2'b00;
defparam \DEBUG_TDI~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DEBUG_TDI~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DEBUG_TDI~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DEBUG_TDI~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DEBUG_TDI~output .DPCLK_DELAY = 4'b0000;
defparam \DEBUG_TDI~output .OUT_DELAY = 1'b0;
defparam \DEBUG_TDI~output .IN_DATA_DELAY = 3'b000;
defparam \DEBUG_TDI~output .IN_REG_DELAY = 3'b000;

alta_slice \Equal0~0 (
	.A(stlink_buf[1]),
	.B(\STLINK_JTCK_SWCLK~input_o ),
	.C(\STLINK_JTCK_RESET~input_o ),
	.D(stlink_buf[0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \Equal0~0 .coord_x = 5;
defparam \Equal0~0 .coord_y = 2;
defparam \Equal0~0 .coord_z = 10;
defparam \Equal0~0 .mask = 16'h7BDE;
defparam \Equal0~0 .modeMux = 1'b0;
defparam \Equal0~0 .FeedbackMux = 1'b0;
defparam \Equal0~0 .ShiftMux = 1'b0;
defparam \Equal0~0 .BypassEn = 1'b0;
defparam \Equal0~0 .CarryEnb = 1'b1;

alta_io_gclk \Equal0~0clkctrl (
	.inclk(\Equal0~0_combout ),
	.outclk(\Equal0~0clkctrl_outclk ));
defparam \Equal0~0clkctrl .coord_x = 5;
defparam \Equal0~0clkctrl .coord_y = 1;
defparam \Equal0~0clkctrl .coord_z = 0;

alta_slice \Equal1~0 (
	.A(\JLINK_RESET~input_o ),
	.B(\JLINK_JTCK_SWCLK~input_o ),
	.C(jlink_buf[0]),
	.D(jlink_buf[1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal1~0_combout ),
	.Cout(),
	.Q());
defparam \Equal1~0 .coord_x = 5;
defparam \Equal1~0 .coord_y = 2;
defparam \Equal1~0 .coord_z = 7;
defparam \Equal1~0 .mask = 16'h7DBE;
defparam \Equal1~0 .modeMux = 1'b0;
defparam \Equal1~0 .FeedbackMux = 1'b0;
defparam \Equal1~0 .ShiftMux = 1'b0;
defparam \Equal1~0 .BypassEn = 1'b0;
defparam \Equal1~0 .CarryEnb = 1'b1;

alta_rio \JLINK_JTCK_SWCLK~input (
	.padio(JLINK_JTCK_SWCLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_JTCK_SWCLK~input_o ),
	.regout());
defparam \JLINK_JTCK_SWCLK~input .coord_x = 2;
defparam \JLINK_JTCK_SWCLK~input .coord_y = 9;
defparam \JLINK_JTCK_SWCLK~input .coord_z = 0;
defparam \JLINK_JTCK_SWCLK~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .IN_POWERUP = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OUT_POWERUP = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OE_REG_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .OE_POWERUP = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_SLR = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_JTCK_SWCLK~input .CFG_KEEP = 2'b00;
defparam \JLINK_JTCK_SWCLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_JTCK_SWCLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_JTCK_SWCLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_JTCK_SWCLK~input .OUT_DELAY = 1'b0;
defparam \JLINK_JTCK_SWCLK~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_JTCK_SWCLK~input .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_JTDI_TXD~output (
	.padio(JLINK_JTDI_TXD),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_JTDI_TXD~input_o ),
	.regout());
defparam \JLINK_JTDI_TXD~output .coord_x = 2;
defparam \JLINK_JTDI_TXD~output .coord_y = 9;
defparam \JLINK_JTDI_TXD~output .coord_z = 2;
defparam \JLINK_JTDI_TXD~output .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .IN_SYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .IN_POWERUP = 1'b0;
defparam \JLINK_JTDI_TXD~output .OUT_REG_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OUT_POWERUP = 1'b0;
defparam \JLINK_JTDI_TXD~output .OE_REG_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OE_SYNC_MODE = 1'b0;
defparam \JLINK_JTDI_TXD~output .OE_POWERUP = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_PULL_UP = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_SLR = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_JTDI_TXD~output .CFG_KEEP = 2'b00;
defparam \JLINK_JTDI_TXD~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_JTDI_TXD~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_JTDI_TXD~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_JTDI_TXD~output .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_JTDI_TXD~output .DPCLK_DELAY = 4'b0000;
defparam \JLINK_JTDI_TXD~output .OUT_DELAY = 1'b0;
defparam \JLINK_JTDI_TXD~output .IN_DATA_DELAY = 3'b000;
defparam \JLINK_JTDI_TXD~output .IN_REG_DELAY = 3'b000;

alta_slice JLINK_JTMS_SWDIO$latch(
	.A(\JLINK_NDAT7~input_o ),
	.B(vcc),
	.C(\JLINK_JTMS_SWDIO$latch~combout ),
	.D(\comb~2clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\JLINK_JTMS_SWDIO$latch~combout ),
	.Cout(),
	.Q());
defparam JLINK_JTMS_SWDIO$latch.coord_x = 6;
defparam JLINK_JTMS_SWDIO$latch.coord_y = 6;
defparam JLINK_JTMS_SWDIO$latch.coord_z = 11;
defparam JLINK_JTMS_SWDIO$latch.mask = 16'hAAF0;
defparam JLINK_JTMS_SWDIO$latch.modeMux = 1'b0;
defparam JLINK_JTMS_SWDIO$latch.FeedbackMux = 1'b0;
defparam JLINK_JTMS_SWDIO$latch.ShiftMux = 1'b0;
defparam JLINK_JTMS_SWDIO$latch.BypassEn = 1'b0;
defparam JLINK_JTMS_SWDIO$latch.CarryEnb = 1'b1;

alta_slice JLINK_JTMS_SWDIO_117(
	.A(\JLINK_NCTL1~input_o ),
	.B(vcc),
	.C(\JLINK_JTMS_SWDIO_117~combout ),
	.D(\comb~2clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\JLINK_JTMS_SWDIO_117~combout ),
	.Cout(),
	.Q());
defparam JLINK_JTMS_SWDIO_117.coord_x = 6;
defparam JLINK_JTMS_SWDIO_117.coord_y = 6;
defparam JLINK_JTMS_SWDIO_117.coord_z = 13;
defparam JLINK_JTMS_SWDIO_117.mask = 16'hAAF0;
defparam JLINK_JTMS_SWDIO_117.modeMux = 1'b0;
defparam JLINK_JTMS_SWDIO_117.FeedbackMux = 1'b0;
defparam JLINK_JTMS_SWDIO_117.ShiftMux = 1'b0;
defparam JLINK_JTMS_SWDIO_117.BypassEn = 1'b0;
defparam JLINK_JTMS_SWDIO_117.CarryEnb = 1'b1;

alta_rio \JLINK_JTMS_SWDIO~output (
	.padio(JLINK_JTMS_SWDIO),
	.datain(\JLINK_JTMS_SWDIO$latch~combout ),
	.oe(\JLINK_JTMS_SWDIO_117~combout ),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_JTMS_SWDIO~input_o ),
	.regout());
defparam \JLINK_JTMS_SWDIO~output .coord_x = 6;
defparam \JLINK_JTMS_SWDIO~output .coord_y = 1;
defparam \JLINK_JTMS_SWDIO~output .coord_z = 2;
defparam \JLINK_JTMS_SWDIO~output .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .IN_SYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .IN_POWERUP = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OUT_REG_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OUT_POWERUP = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OE_REG_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OE_SYNC_MODE = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .OE_POWERUP = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_PULL_UP = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_SLR = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_JTMS_SWDIO~output .CFG_KEEP = 2'b00;
defparam \JLINK_JTMS_SWDIO~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_JTMS_SWDIO~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_JTMS_SWDIO~output .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .DPCLK_DELAY = 4'b0000;
defparam \JLINK_JTMS_SWDIO~output .OUT_DELAY = 1'b0;
defparam \JLINK_JTMS_SWDIO~output .IN_DATA_DELAY = 3'b000;
defparam \JLINK_JTMS_SWDIO~output .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_LED1~input (
	.padio(JLINK_LED1),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_LED1~input_o ),
	.regout());
defparam \JLINK_LED1~input .coord_x = 5;
defparam \JLINK_LED1~input .coord_y = 1;
defparam \JLINK_LED1~input .coord_z = 2;
defparam \JLINK_LED1~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .IN_POWERUP = 1'b0;
defparam \JLINK_LED1~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_LED1~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .OUT_POWERUP = 1'b0;
defparam \JLINK_LED1~input .OE_REG_MODE = 1'b0;
defparam \JLINK_LED1~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_LED1~input .OE_POWERUP = 1'b0;
defparam \JLINK_LED1~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_LED1~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_LED1~input .CFG_SLR = 1'b0;
defparam \JLINK_LED1~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_LED1~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_LED1~input .CFG_KEEP = 2'b00;
defparam \JLINK_LED1~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_LED1~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_LED1~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_LED1~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_LED1~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_LED1~input .OUT_DELAY = 1'b0;
defparam \JLINK_LED1~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_LED1~input .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_LED2~input (
	.padio(JLINK_LED2),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_LED2~input_o ),
	.regout());
defparam \JLINK_LED2~input .coord_x = 4;
defparam \JLINK_LED2~input .coord_y = 9;
defparam \JLINK_LED2~input .coord_z = 2;
defparam \JLINK_LED2~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .IN_POWERUP = 1'b0;
defparam \JLINK_LED2~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_LED2~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .OUT_POWERUP = 1'b0;
defparam \JLINK_LED2~input .OE_REG_MODE = 1'b0;
defparam \JLINK_LED2~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_LED2~input .OE_POWERUP = 1'b0;
defparam \JLINK_LED2~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_LED2~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_LED2~input .CFG_SLR = 1'b0;
defparam \JLINK_LED2~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_LED2~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_LED2~input .CFG_KEEP = 2'b00;
defparam \JLINK_LED2~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_LED2~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_LED2~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_LED2~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_LED2~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_LED2~input .OUT_DELAY = 1'b0;
defparam \JLINK_LED2~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_LED2~input .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_NCTL1~input (
	.padio(JLINK_NCTL1),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_NCTL1~input_o ),
	.regout());
defparam \JLINK_NCTL1~input .coord_x = 1;
defparam \JLINK_NCTL1~input .coord_y = 9;
defparam \JLINK_NCTL1~input .coord_z = 3;
defparam \JLINK_NCTL1~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .IN_POWERUP = 1'b0;
defparam \JLINK_NCTL1~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OUT_POWERUP = 1'b0;
defparam \JLINK_NCTL1~input .OE_REG_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_NCTL1~input .OE_POWERUP = 1'b0;
defparam \JLINK_NCTL1~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_NCTL1~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_NCTL1~input .CFG_SLR = 1'b0;
defparam \JLINK_NCTL1~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_NCTL1~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_NCTL1~input .CFG_KEEP = 2'b00;
defparam \JLINK_NCTL1~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_NCTL1~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_NCTL1~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_NCTL1~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_NCTL1~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_NCTL1~input .OUT_DELAY = 1'b0;
defparam \JLINK_NCTL1~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_NCTL1~input .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_NDAT7~input (
	.padio(JLINK_NDAT7),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_NDAT7~input_o ),
	.regout());
defparam \JLINK_NDAT7~input .coord_x = 5;
defparam \JLINK_NDAT7~input .coord_y = 9;
defparam \JLINK_NDAT7~input .coord_z = 0;
defparam \JLINK_NDAT7~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .IN_POWERUP = 1'b0;
defparam \JLINK_NDAT7~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OUT_POWERUP = 1'b0;
defparam \JLINK_NDAT7~input .OE_REG_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_NDAT7~input .OE_POWERUP = 1'b0;
defparam \JLINK_NDAT7~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_NDAT7~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_NDAT7~input .CFG_SLR = 1'b0;
defparam \JLINK_NDAT7~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_NDAT7~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_NDAT7~input .CFG_KEEP = 2'b00;
defparam \JLINK_NDAT7~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_NDAT7~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_NDAT7~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_NDAT7~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_NDAT7~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_NDAT7~input .OUT_DELAY = 1'b0;
defparam \JLINK_NDAT7~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_NDAT7~input .IN_REG_DELAY = 3'b000;

alta_rio \JLINK_RESET~input (
	.padio(JLINK_RESET),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\JLINK_RESET~input_o ),
	.regout());
defparam \JLINK_RESET~input .coord_x = 4;
defparam \JLINK_RESET~input .coord_y = 9;
defparam \JLINK_RESET~input .coord_z = 0;
defparam \JLINK_RESET~input .IN_ASYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .IN_SYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .IN_POWERUP = 1'b0;
defparam \JLINK_RESET~input .OUT_REG_MODE = 1'b0;
defparam \JLINK_RESET~input .OUT_ASYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .OUT_SYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .OUT_POWERUP = 1'b0;
defparam \JLINK_RESET~input .OE_REG_MODE = 1'b0;
defparam \JLINK_RESET~input .OE_ASYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .OE_SYNC_MODE = 1'b0;
defparam \JLINK_RESET~input .OE_POWERUP = 1'b0;
defparam \JLINK_RESET~input .CFG_TRI_INPUT = 1'b0;
defparam \JLINK_RESET~input .CFG_PULL_UP = 1'b0;
defparam \JLINK_RESET~input .CFG_SLR = 1'b0;
defparam \JLINK_RESET~input .CFG_OPEN_DRAIN = 1'b0;
defparam \JLINK_RESET~input .CFG_PDRCTRL = 4'b0010;
defparam \JLINK_RESET~input .CFG_KEEP = 2'b00;
defparam \JLINK_RESET~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \JLINK_RESET~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \JLINK_RESET~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \JLINK_RESET~input .CFG_LVDS_IN_EN = 1'b0;
defparam \JLINK_RESET~input .DPCLK_DELAY = 4'b0000;
defparam \JLINK_RESET~input .OUT_DELAY = 1'b0;
defparam \JLINK_RESET~input .IN_DATA_DELAY = 3'b000;
defparam \JLINK_RESET~input .IN_REG_DELAY = 3'b000;

alta_slice \LED_B~0 (
	.A(\debuger_type.TYPE_STLINK_178~combout ),
	.B(\debuger_type.TYPE_JLINK_185~combout ),
	.C(\JLINK_LED2~input_o ),
	.D(\debuger_type.TYPE_DAPLINK_192~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_B~0_combout ),
	.Cout(),
	.Q());
defparam \LED_B~0 .coord_x = 4;
defparam \LED_B~0 .coord_y = 3;
defparam \LED_B~0 .coord_z = 1;
defparam \LED_B~0 .mask = 16'hEAFB;
defparam \LED_B~0 .modeMux = 1'b0;
defparam \LED_B~0 .FeedbackMux = 1'b0;
defparam \LED_B~0 .ShiftMux = 1'b0;
defparam \LED_B~0 .BypassEn = 1'b0;
defparam \LED_B~0 .CarryEnb = 1'b1;

alta_rio \LED_B~output (
	.padio(LED_B),
	.datain(\LED_B~0_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED_B~output .coord_x = 0;
defparam \LED_B~output .coord_y = 9;
defparam \LED_B~output .coord_z = 2;
defparam \LED_B~output .IN_ASYNC_MODE = 1'b0;
defparam \LED_B~output .IN_SYNC_MODE = 1'b0;
defparam \LED_B~output .IN_POWERUP = 1'b0;
defparam \LED_B~output .OUT_REG_MODE = 1'b0;
defparam \LED_B~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED_B~output .OUT_SYNC_MODE = 1'b0;
defparam \LED_B~output .OUT_POWERUP = 1'b0;
defparam \LED_B~output .OE_REG_MODE = 1'b0;
defparam \LED_B~output .OE_ASYNC_MODE = 1'b0;
defparam \LED_B~output .OE_SYNC_MODE = 1'b0;
defparam \LED_B~output .OE_POWERUP = 1'b0;
defparam \LED_B~output .CFG_TRI_INPUT = 1'b0;
defparam \LED_B~output .CFG_PULL_UP = 1'b0;
defparam \LED_B~output .CFG_SLR = 1'b0;
defparam \LED_B~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED_B~output .CFG_PDRCTRL = 4'b0010;
defparam \LED_B~output .CFG_KEEP = 2'b00;
defparam \LED_B~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED_B~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED_B~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED_B~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED_B~output .DPCLK_DELAY = 4'b0000;
defparam \LED_B~output .OUT_DELAY = 1'b0;
defparam \LED_B~output .IN_DATA_DELAY = 3'b000;
defparam \LED_B~output .IN_REG_DELAY = 3'b000;

alta_slice \LED_G~0 (
	.A(\debuger_type.TYPE_STLINK_178~combout ),
	.B(\debuger_type.TYPE_JLINK_185~combout ),
	.C(\STLINK_LED_RUN~input_o ),
	.D(\JLINK_LED1~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_G~0_combout ),
	.Cout(),
	.Q());
defparam \LED_G~0 .coord_x = 4;
defparam \LED_G~0 .coord_y = 3;
defparam \LED_G~0 .coord_z = 15;
defparam \LED_G~0 .mask = 16'hE4A0;
defparam \LED_G~0 .modeMux = 1'b0;
defparam \LED_G~0 .FeedbackMux = 1'b0;
defparam \LED_G~0 .ShiftMux = 1'b0;
defparam \LED_G~0 .BypassEn = 1'b0;
defparam \LED_G~0 .CarryEnb = 1'b1;

alta_slice \LED_G~1 (
	.A(\DEBUG_JTCK_SWCLK~1_combout ),
	.B(\LED_G~0_combout ),
	.C(\DAPLINK_LED_RUN~input_o ),
	.D(\debuger_type.TYPE_DAPLINK_192~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_G~1_combout ),
	.Cout(),
	.Q());
defparam \LED_G~1 .coord_x = 4;
defparam \LED_G~1 .coord_y = 3;
defparam \LED_G~1 .coord_z = 5;
defparam \LED_G~1 .mask = 16'hECEE;
defparam \LED_G~1 .modeMux = 1'b0;
defparam \LED_G~1 .FeedbackMux = 1'b0;
defparam \LED_G~1 .ShiftMux = 1'b0;
defparam \LED_G~1 .BypassEn = 1'b0;
defparam \LED_G~1 .CarryEnb = 1'b1;

alta_rio \LED_G~output (
	.padio(LED_G),
	.datain(\LED_G~1_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED_G~output .coord_x = 0;
defparam \LED_G~output .coord_y = 9;
defparam \LED_G~output .coord_z = 0;
defparam \LED_G~output .IN_ASYNC_MODE = 1'b0;
defparam \LED_G~output .IN_SYNC_MODE = 1'b0;
defparam \LED_G~output .IN_POWERUP = 1'b0;
defparam \LED_G~output .OUT_REG_MODE = 1'b0;
defparam \LED_G~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED_G~output .OUT_SYNC_MODE = 1'b0;
defparam \LED_G~output .OUT_POWERUP = 1'b0;
defparam \LED_G~output .OE_REG_MODE = 1'b0;
defparam \LED_G~output .OE_ASYNC_MODE = 1'b0;
defparam \LED_G~output .OE_SYNC_MODE = 1'b0;
defparam \LED_G~output .OE_POWERUP = 1'b0;
defparam \LED_G~output .CFG_TRI_INPUT = 1'b0;
defparam \LED_G~output .CFG_PULL_UP = 1'b0;
defparam \LED_G~output .CFG_SLR = 1'b0;
defparam \LED_G~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED_G~output .CFG_PDRCTRL = 4'b0010;
defparam \LED_G~output .CFG_KEEP = 2'b00;
defparam \LED_G~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED_G~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED_G~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED_G~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED_G~output .DPCLK_DELAY = 4'b0000;
defparam \LED_G~output .OUT_DELAY = 1'b0;
defparam \LED_G~output .IN_DATA_DELAY = 3'b000;
defparam \LED_G~output .IN_REG_DELAY = 3'b000;

alta_slice \LED_R~0 (
	.A(vcc),
	.B(\debuger_type.TYPE_DAPLINK_192~combout ),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\debuger_type.TYPE_JLINK_185~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_R~0_combout ),
	.Cout(),
	.Q());
defparam \LED_R~0 .coord_x = 4;
defparam \LED_R~0 .coord_y = 2;
defparam \LED_R~0 .coord_z = 11;
defparam \LED_R~0 .mask = 16'h000C;
defparam \LED_R~0 .modeMux = 1'b0;
defparam \LED_R~0 .FeedbackMux = 1'b0;
defparam \LED_R~0 .ShiftMux = 1'b0;
defparam \LED_R~0 .BypassEn = 1'b0;
defparam \LED_R~0 .CarryEnb = 1'b1;

alta_rio \LED_R~output (
	.padio(LED_R),
	.datain(\LED_R~0_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED_R~output .coord_x = 1;
defparam \LED_R~output .coord_y = 9;
defparam \LED_R~output .coord_z = 1;
defparam \LED_R~output .IN_ASYNC_MODE = 1'b0;
defparam \LED_R~output .IN_SYNC_MODE = 1'b0;
defparam \LED_R~output .IN_POWERUP = 1'b0;
defparam \LED_R~output .OUT_REG_MODE = 1'b0;
defparam \LED_R~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED_R~output .OUT_SYNC_MODE = 1'b0;
defparam \LED_R~output .OUT_POWERUP = 1'b0;
defparam \LED_R~output .OE_REG_MODE = 1'b0;
defparam \LED_R~output .OE_ASYNC_MODE = 1'b0;
defparam \LED_R~output .OE_SYNC_MODE = 1'b0;
defparam \LED_R~output .OE_POWERUP = 1'b0;
defparam \LED_R~output .CFG_TRI_INPUT = 1'b0;
defparam \LED_R~output .CFG_PULL_UP = 1'b0;
defparam \LED_R~output .CFG_SLR = 1'b0;
defparam \LED_R~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED_R~output .CFG_PDRCTRL = 4'b0010;
defparam \LED_R~output .CFG_KEEP = 2'b00;
defparam \LED_R~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED_R~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED_R~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED_R~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED_R~output .DPCLK_DELAY = 4'b0000;
defparam \LED_R~output .OUT_DELAY = 1'b0;
defparam \LED_R~output .IN_DATA_DELAY = 3'b000;
defparam \LED_R~output .IN_REG_DELAY = 3'b000;

alta_slice LINK_SEL1$latch(
	.A(\DEBUG_TDI~2_combout ),
	.B(vcc),
	.C(\comb~2_combout ),
	.D(\LINK_SEL1$latch~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LINK_SEL1$latch~combout ),
	.Cout(),
	.Q());
defparam LINK_SEL1$latch.coord_x = 4;
defparam LINK_SEL1$latch.coord_y = 2;
defparam LINK_SEL1$latch.coord_z = 13;
defparam LINK_SEL1$latch.mask = 16'h0F0A;
defparam LINK_SEL1$latch.modeMux = 1'b0;
defparam LINK_SEL1$latch.FeedbackMux = 1'b0;
defparam LINK_SEL1$latch.ShiftMux = 1'b0;
defparam LINK_SEL1$latch.BypassEn = 1'b0;
defparam LINK_SEL1$latch.CarryEnb = 1'b1;

alta_rio \LINK_SEL1~output (
	.padio(LINK_SEL1),
	.datain(\LINK_SEL1$latch~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LINK_SEL1~output .coord_x = 5;
defparam \LINK_SEL1~output .coord_y = 9;
defparam \LINK_SEL1~output .coord_z = 2;
defparam \LINK_SEL1~output .IN_ASYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .IN_SYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .IN_POWERUP = 1'b0;
defparam \LINK_SEL1~output .OUT_REG_MODE = 1'b0;
defparam \LINK_SEL1~output .OUT_ASYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .OUT_SYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .OUT_POWERUP = 1'b0;
defparam \LINK_SEL1~output .OE_REG_MODE = 1'b0;
defparam \LINK_SEL1~output .OE_ASYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .OE_SYNC_MODE = 1'b0;
defparam \LINK_SEL1~output .OE_POWERUP = 1'b0;
defparam \LINK_SEL1~output .CFG_TRI_INPUT = 1'b0;
defparam \LINK_SEL1~output .CFG_PULL_UP = 1'b0;
defparam \LINK_SEL1~output .CFG_SLR = 1'b0;
defparam \LINK_SEL1~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LINK_SEL1~output .CFG_PDRCTRL = 4'b0010;
defparam \LINK_SEL1~output .CFG_KEEP = 2'b00;
defparam \LINK_SEL1~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LINK_SEL1~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LINK_SEL1~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LINK_SEL1~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LINK_SEL1~output .DPCLK_DELAY = 4'b0000;
defparam \LINK_SEL1~output .OUT_DELAY = 1'b0;
defparam \LINK_SEL1~output .IN_DATA_DELAY = 3'b000;
defparam \LINK_SEL1~output .IN_REG_DELAY = 3'b000;

alta_slice LINK_SEL2$latch(
	.A(vcc),
	.B(\LED_R~0_combout ),
	.C(\DEBUG_JTCK_SWCLK~1_combout ),
	.D(\LINK_SEL2$latch~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LINK_SEL2$latch~combout ),
	.Cout(),
	.Q());
defparam LINK_SEL2$latch.coord_x = 4;
defparam LINK_SEL2$latch.coord_y = 2;
defparam LINK_SEL2$latch.coord_z = 5;
defparam LINK_SEL2$latch.mask = 16'h3303;
defparam LINK_SEL2$latch.modeMux = 1'b0;
defparam LINK_SEL2$latch.FeedbackMux = 1'b0;
defparam LINK_SEL2$latch.ShiftMux = 1'b0;
defparam LINK_SEL2$latch.BypassEn = 1'b0;
defparam LINK_SEL2$latch.CarryEnb = 1'b1;

alta_rio \LINK_SEL2~output (
	.padio(LINK_SEL2),
	.datain(\LINK_SEL2$latch~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LINK_SEL2~output .coord_x = 6;
defparam \LINK_SEL2~output .coord_y = 9;
defparam \LINK_SEL2~output .coord_z = 0;
defparam \LINK_SEL2~output .IN_ASYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .IN_SYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .IN_POWERUP = 1'b0;
defparam \LINK_SEL2~output .OUT_REG_MODE = 1'b0;
defparam \LINK_SEL2~output .OUT_ASYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .OUT_SYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .OUT_POWERUP = 1'b0;
defparam \LINK_SEL2~output .OE_REG_MODE = 1'b0;
defparam \LINK_SEL2~output .OE_ASYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .OE_SYNC_MODE = 1'b0;
defparam \LINK_SEL2~output .OE_POWERUP = 1'b0;
defparam \LINK_SEL2~output .CFG_TRI_INPUT = 1'b0;
defparam \LINK_SEL2~output .CFG_PULL_UP = 1'b0;
defparam \LINK_SEL2~output .CFG_SLR = 1'b0;
defparam \LINK_SEL2~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LINK_SEL2~output .CFG_PDRCTRL = 4'b0010;
defparam \LINK_SEL2~output .CFG_KEEP = 2'b00;
defparam \LINK_SEL2~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LINK_SEL2~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LINK_SEL2~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LINK_SEL2~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LINK_SEL2~output .DPCLK_DELAY = 4'b0000;
defparam \LINK_SEL2~output .OUT_DELAY = 1'b0;
defparam \LINK_SEL2~output .IN_DATA_DELAY = 3'b000;
defparam \LINK_SEL2~output .IN_REG_DELAY = 3'b000;

alta_rio \STLINK_JTCK_RESET~input (
	.padio(STLINK_JTCK_RESET),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\STLINK_JTCK_RESET~input_o ),
	.regout());
defparam \STLINK_JTCK_RESET~input .coord_x = 5;
defparam \STLINK_JTCK_RESET~input .coord_y = 1;
defparam \STLINK_JTCK_RESET~input .coord_z = 0;
defparam \STLINK_JTCK_RESET~input .IN_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .IN_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .IN_POWERUP = 1'b0;
defparam \STLINK_JTCK_RESET~input .OUT_REG_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OUT_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OUT_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OUT_POWERUP = 1'b0;
defparam \STLINK_JTCK_RESET~input .OE_REG_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OE_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OE_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_RESET~input .OE_POWERUP = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_TRI_INPUT = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_PULL_UP = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_SLR = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_OPEN_DRAIN = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_PDRCTRL = 4'b0010;
defparam \STLINK_JTCK_RESET~input .CFG_KEEP = 2'b00;
defparam \STLINK_JTCK_RESET~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \STLINK_JTCK_RESET~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \STLINK_JTCK_RESET~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \STLINK_JTCK_RESET~input .CFG_LVDS_IN_EN = 1'b0;
defparam \STLINK_JTCK_RESET~input .DPCLK_DELAY = 4'b0000;
defparam \STLINK_JTCK_RESET~input .OUT_DELAY = 1'b0;
defparam \STLINK_JTCK_RESET~input .IN_DATA_DELAY = 3'b000;
defparam \STLINK_JTCK_RESET~input .IN_REG_DELAY = 3'b000;

alta_rio \STLINK_JTCK_SWCLK~input (
	.padio(STLINK_JTCK_SWCLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\STLINK_JTCK_SWCLK~input_o ),
	.regout());
defparam \STLINK_JTCK_SWCLK~input .coord_x = 5;
defparam \STLINK_JTCK_SWCLK~input .coord_y = 1;
defparam \STLINK_JTCK_SWCLK~input .coord_z = 1;
defparam \STLINK_JTCK_SWCLK~input .IN_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .IN_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .IN_POWERUP = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OUT_REG_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OUT_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OUT_POWERUP = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OE_REG_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OE_ASYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OE_SYNC_MODE = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .OE_POWERUP = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_TRI_INPUT = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_PULL_UP = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_SLR = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_PDRCTRL = 4'b0010;
defparam \STLINK_JTCK_SWCLK~input .CFG_KEEP = 2'b00;
defparam \STLINK_JTCK_SWCLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \STLINK_JTCK_SWCLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \STLINK_JTCK_SWCLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .DPCLK_DELAY = 4'b0000;
defparam \STLINK_JTCK_SWCLK~input .OUT_DELAY = 1'b0;
defparam \STLINK_JTCK_SWCLK~input .IN_DATA_DELAY = 3'b000;
defparam \STLINK_JTCK_SWCLK~input .IN_REG_DELAY = 3'b000;

alta_rio \STLINK_LED_RUN~input (
	.padio(STLINK_LED_RUN),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\STLINK_LED_RUN~input_o ),
	.regout());
defparam \STLINK_LED_RUN~input .coord_x = 4;
defparam \STLINK_LED_RUN~input .coord_y = 1;
defparam \STLINK_LED_RUN~input .coord_z = 2;
defparam \STLINK_LED_RUN~input .IN_ASYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .IN_SYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .IN_POWERUP = 1'b0;
defparam \STLINK_LED_RUN~input .OUT_REG_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OUT_ASYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OUT_SYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OUT_POWERUP = 1'b0;
defparam \STLINK_LED_RUN~input .OE_REG_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OE_ASYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OE_SYNC_MODE = 1'b0;
defparam \STLINK_LED_RUN~input .OE_POWERUP = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_TRI_INPUT = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_PULL_UP = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_SLR = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_OPEN_DRAIN = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_PDRCTRL = 4'b0010;
defparam \STLINK_LED_RUN~input .CFG_KEEP = 2'b00;
defparam \STLINK_LED_RUN~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \STLINK_LED_RUN~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \STLINK_LED_RUN~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \STLINK_LED_RUN~input .CFG_LVDS_IN_EN = 1'b0;
defparam \STLINK_LED_RUN~input .DPCLK_DELAY = 4'b0000;
defparam \STLINK_LED_RUN~input .OUT_DELAY = 1'b0;
defparam \STLINK_LED_RUN~input .IN_DATA_DELAY = 3'b000;
defparam \STLINK_LED_RUN~input .IN_REG_DELAY = 3'b000;

alta_rio \STLINK_TDI~input (
	.padio(STLINK_TDI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\STLINK_TDI~input_o ),
	.regout());
defparam \STLINK_TDI~input .coord_x = 5;
defparam \STLINK_TDI~input .coord_y = 1;
defparam \STLINK_TDI~input .coord_z = 3;
defparam \STLINK_TDI~input .IN_ASYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .IN_SYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .IN_POWERUP = 1'b0;
defparam \STLINK_TDI~input .OUT_REG_MODE = 1'b0;
defparam \STLINK_TDI~input .OUT_ASYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .OUT_SYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .OUT_POWERUP = 1'b0;
defparam \STLINK_TDI~input .OE_REG_MODE = 1'b0;
defparam \STLINK_TDI~input .OE_ASYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .OE_SYNC_MODE = 1'b0;
defparam \STLINK_TDI~input .OE_POWERUP = 1'b0;
defparam \STLINK_TDI~input .CFG_TRI_INPUT = 1'b0;
defparam \STLINK_TDI~input .CFG_PULL_UP = 1'b0;
defparam \STLINK_TDI~input .CFG_SLR = 1'b0;
defparam \STLINK_TDI~input .CFG_OPEN_DRAIN = 1'b0;
defparam \STLINK_TDI~input .CFG_PDRCTRL = 4'b0010;
defparam \STLINK_TDI~input .CFG_KEEP = 2'b00;
defparam \STLINK_TDI~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \STLINK_TDI~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \STLINK_TDI~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \STLINK_TDI~input .CFG_LVDS_IN_EN = 1'b0;
defparam \STLINK_TDI~input .DPCLK_DELAY = 4'b0000;
defparam \STLINK_TDI~input .OUT_DELAY = 1'b0;
defparam \STLINK_TDI~input .IN_DATA_DELAY = 3'b000;
defparam \STLINK_TDI~input .IN_REG_DELAY = 3'b000;

alta_slice \comb~0 (
	.A(vcc),
	.B(\debuger_type.TYPE_DAPLINK~0_combout ),
	.C(\Equal1~0_combout ),
	.D(\Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\comb~0_combout ),
	.Cout(),
	.Q());
defparam \comb~0 .coord_x = 4;
defparam \comb~0 .coord_y = 2;
defparam \comb~0 .coord_z = 4;
defparam \comb~0 .mask = 16'hFF03;
defparam \comb~0 .modeMux = 1'b0;
defparam \comb~0 .FeedbackMux = 1'b0;
defparam \comb~0 .ShiftMux = 1'b0;
defparam \comb~0 .BypassEn = 1'b0;
defparam \comb~0 .CarryEnb = 1'b1;

alta_slice \comb~1 (
	.A(vcc),
	.B(\debuger_type.TYPE_DAPLINK~0_combout ),
	.C(\Equal1~0_combout ),
	.D(\Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\comb~1_combout ),
	.Cout(),
	.Q());
defparam \comb~1 .coord_x = 4;
defparam \comb~1 .coord_y = 2;
defparam \comb~1 .coord_z = 2;
defparam \comb~1 .mask = 16'h00F3;
defparam \comb~1 .modeMux = 1'b0;
defparam \comb~1 .FeedbackMux = 1'b0;
defparam \comb~1 .ShiftMux = 1'b0;
defparam \comb~1 .BypassEn = 1'b0;
defparam \comb~1 .CarryEnb = 1'b1;

alta_slice \comb~2 (
	.A(vcc),
	.B(vcc),
	.C(\debuger_type.TYPE_STLINK_178~combout ),
	.D(\debuger_type.TYPE_JLINK_185~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\comb~2_combout ),
	.Cout(),
	.Q());
defparam \comb~2 .coord_x = 4;
defparam \comb~2 .coord_y = 2;
defparam \comb~2 .coord_z = 12;
defparam \comb~2 .mask = 16'h0F00;
defparam \comb~2 .modeMux = 1'b0;
defparam \comb~2 .FeedbackMux = 1'b0;
defparam \comb~2 .ShiftMux = 1'b0;
defparam \comb~2 .BypassEn = 1'b0;
defparam \comb~2 .CarryEnb = 1'b1;

alta_io_gclk \comb~2clkctrl (
	.inclk(\comb~2_combout ),
	.outclk(\comb~2clkctrl_outclk ));
defparam \comb~2clkctrl .coord_x = 7;
defparam \comb~2clkctrl .coord_y = 1;
defparam \comb~2clkctrl .coord_z = 0;

alta_slice \daplink_buf[0] (
	.A(vcc),
	.B(\DAPLINK_JTCK_SWCLK~input_o ),
	.C(daplink_buf[0]),
	.D(\daplink_buf[0]~1clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(daplink_buf[0]),
	.Cout(),
	.Q());
defparam \daplink_buf[0] .coord_x = 5;
defparam \daplink_buf[0] .coord_y = 2;
defparam \daplink_buf[0] .coord_z = 8;
defparam \daplink_buf[0] .mask = 16'hCCF0;
defparam \daplink_buf[0] .modeMux = 1'b0;
defparam \daplink_buf[0] .FeedbackMux = 1'b0;
defparam \daplink_buf[0] .ShiftMux = 1'b0;
defparam \daplink_buf[0] .BypassEn = 1'b0;
defparam \daplink_buf[0] .CarryEnb = 1'b1;

alta_slice \daplink_buf[0]~0 (
	.A(vcc),
	.B(vcc),
	.C(\Equal1~0_combout ),
	.D(\Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\daplink_buf[0]~0_combout ),
	.Cout(),
	.Q());
defparam \daplink_buf[0]~0 .coord_x = 4;
defparam \daplink_buf[0]~0 .coord_y = 2;
defparam \daplink_buf[0]~0 .coord_z = 6;
defparam \daplink_buf[0]~0 .mask = 16'h000F;
defparam \daplink_buf[0]~0 .modeMux = 1'b0;
defparam \daplink_buf[0]~0 .FeedbackMux = 1'b0;
defparam \daplink_buf[0]~0 .ShiftMux = 1'b0;
defparam \daplink_buf[0]~0 .BypassEn = 1'b0;
defparam \daplink_buf[0]~0 .CarryEnb = 1'b1;

alta_slice \daplink_buf[0]~1 (
	.A(\Equal0~0_combout ),
	.B(vcc),
	.C(\debuger_type.TYPE_DAPLINK~0_combout ),
	.D(\Equal1~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\daplink_buf[0]~1_combout ),
	.Cout(),
	.Q());
defparam \daplink_buf[0]~1 .coord_x = 5;
defparam \daplink_buf[0]~1 .coord_y = 2;
defparam \daplink_buf[0]~1 .coord_z = 9;
defparam \daplink_buf[0]~1 .mask = 16'h0005;
defparam \daplink_buf[0]~1 .modeMux = 1'b0;
defparam \daplink_buf[0]~1 .FeedbackMux = 1'b0;
defparam \daplink_buf[0]~1 .ShiftMux = 1'b0;
defparam \daplink_buf[0]~1 .BypassEn = 1'b0;
defparam \daplink_buf[0]~1 .CarryEnb = 1'b1;

alta_io_gclk \daplink_buf[0]~1clkctrl (
	.inclk(\daplink_buf[0]~1_combout ),
	.outclk(\daplink_buf[0]~1clkctrl_outclk ));
defparam \daplink_buf[0]~1clkctrl .coord_x = 6;
defparam \daplink_buf[0]~1clkctrl .coord_y = 1;
defparam \daplink_buf[0]~1clkctrl .coord_z = 0;

alta_slice \daplink_buf[1] (
	.A(\DAPLINK_RESET~input_o ),
	.B(vcc),
	.C(daplink_buf[1]),
	.D(\daplink_buf[0]~1clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(daplink_buf[1]),
	.Cout(),
	.Q());
defparam \daplink_buf[1] .coord_x = 5;
defparam \daplink_buf[1] .coord_y = 2;
defparam \daplink_buf[1] .coord_z = 0;
defparam \daplink_buf[1] .mask = 16'hAAF0;
defparam \daplink_buf[1] .modeMux = 1'b0;
defparam \daplink_buf[1] .FeedbackMux = 1'b0;
defparam \daplink_buf[1] .ShiftMux = 1'b0;
defparam \daplink_buf[1] .BypassEn = 1'b0;
defparam \daplink_buf[1] .CarryEnb = 1'b1;

alta_slice \debuger_type.TYPE_DAPLINK_192 (
	.A(\debuger_type.TYPE_DAPLINK~1_combout ),
	.B(vcc),
	.C(\daplink_buf[0]~0_combout ),
	.D(\debuger_type.TYPE_DAPLINK_192~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\debuger_type.TYPE_DAPLINK_192~combout ),
	.Cout(),
	.Q());
defparam \debuger_type.TYPE_DAPLINK_192 .coord_x = 4;
defparam \debuger_type.TYPE_DAPLINK_192 .coord_y = 2;
defparam \debuger_type.TYPE_DAPLINK_192 .coord_z = 7;
defparam \debuger_type.TYPE_DAPLINK_192 .mask = 16'hF0A0;
defparam \debuger_type.TYPE_DAPLINK_192 .modeMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK_192 .FeedbackMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK_192 .ShiftMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK_192 .BypassEn = 1'b0;
defparam \debuger_type.TYPE_DAPLINK_192 .CarryEnb = 1'b1;

alta_slice \debuger_type.TYPE_DAPLINK~0 (
	.A(daplink_buf[1]),
	.B(\DAPLINK_RESET~input_o ),
	.C(daplink_buf[0]),
	.D(\DAPLINK_JTCK_SWCLK~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\debuger_type.TYPE_DAPLINK~0_combout ),
	.Cout(),
	.Q());
defparam \debuger_type.TYPE_DAPLINK~0 .coord_x = 5;
defparam \debuger_type.TYPE_DAPLINK~0 .coord_y = 2;
defparam \debuger_type.TYPE_DAPLINK~0 .coord_z = 6;
defparam \debuger_type.TYPE_DAPLINK~0 .mask = 16'h9009;
defparam \debuger_type.TYPE_DAPLINK~0 .modeMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~0 .FeedbackMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~0 .ShiftMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~0 .BypassEn = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~0 .CarryEnb = 1'b1;

alta_slice \debuger_type.TYPE_DAPLINK~1 (
	.A(vcc),
	.B(vcc),
	.C(\Equal1~0_combout ),
	.D(\debuger_type.TYPE_DAPLINK~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\debuger_type.TYPE_DAPLINK~1_combout ),
	.Cout(),
	.Q());
defparam \debuger_type.TYPE_DAPLINK~1 .coord_x = 4;
defparam \debuger_type.TYPE_DAPLINK~1 .coord_y = 2;
defparam \debuger_type.TYPE_DAPLINK~1 .coord_z = 14;
defparam \debuger_type.TYPE_DAPLINK~1 .mask = 16'hF0FF;
defparam \debuger_type.TYPE_DAPLINK~1 .modeMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~1 .FeedbackMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~1 .ShiftMux = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~1 .BypassEn = 1'b0;
defparam \debuger_type.TYPE_DAPLINK~1 .CarryEnb = 1'b1;

alta_slice \debuger_type.TYPE_JLINK_185 (
	.A(\Equal1~0_combout ),
	.B(vcc),
	.C(\comb~0_combout ),
	.D(\debuger_type.TYPE_JLINK_185~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\debuger_type.TYPE_JLINK_185~combout ),
	.Cout(),
	.Q());
defparam \debuger_type.TYPE_JLINK_185 .coord_x = 4;
defparam \debuger_type.TYPE_JLINK_185 .coord_y = 2;
defparam \debuger_type.TYPE_JLINK_185 .coord_z = 9;
defparam \debuger_type.TYPE_JLINK_185 .mask = 16'h0F0A;
defparam \debuger_type.TYPE_JLINK_185 .modeMux = 1'b0;
defparam \debuger_type.TYPE_JLINK_185 .FeedbackMux = 1'b0;
defparam \debuger_type.TYPE_JLINK_185 .ShiftMux = 1'b0;
defparam \debuger_type.TYPE_JLINK_185 .BypassEn = 1'b0;
defparam \debuger_type.TYPE_JLINK_185 .CarryEnb = 1'b1;

alta_slice \debuger_type.TYPE_STLINK_178 (
	.A(\Equal0~0_combout ),
	.B(vcc),
	.C(\comb~1_combout ),
	.D(\debuger_type.TYPE_STLINK_178~combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\debuger_type.TYPE_STLINK_178~combout ),
	.Cout(),
	.Q());
defparam \debuger_type.TYPE_STLINK_178 .coord_x = 4;
defparam \debuger_type.TYPE_STLINK_178 .coord_y = 2;
defparam \debuger_type.TYPE_STLINK_178 .coord_z = 0;
defparam \debuger_type.TYPE_STLINK_178 .mask = 16'h0F0A;
defparam \debuger_type.TYPE_STLINK_178 .modeMux = 1'b0;
defparam \debuger_type.TYPE_STLINK_178 .FeedbackMux = 1'b0;
defparam \debuger_type.TYPE_STLINK_178 .ShiftMux = 1'b0;
defparam \debuger_type.TYPE_STLINK_178 .BypassEn = 1'b0;
defparam \debuger_type.TYPE_STLINK_178 .CarryEnb = 1'b1;

alta_slice \jlink_buf[0] (
	.A(vcc),
	.B(\JLINK_JTCK_SWCLK~input_o ),
	.C(jlink_buf[0]),
	.D(\jlink_buf[0]~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(jlink_buf[0]),
	.Cout(),
	.Q());
defparam \jlink_buf[0] .coord_x = 5;
defparam \jlink_buf[0] .coord_y = 2;
defparam \jlink_buf[0] .coord_z = 2;
defparam \jlink_buf[0] .mask = 16'hCCF0;
defparam \jlink_buf[0] .modeMux = 1'b0;
defparam \jlink_buf[0] .FeedbackMux = 1'b0;
defparam \jlink_buf[0] .ShiftMux = 1'b0;
defparam \jlink_buf[0] .BypassEn = 1'b0;
defparam \jlink_buf[0] .CarryEnb = 1'b1;

alta_slice \jlink_buf[0]~0 (
	.A(vcc),
	.B(vcc),
	.C(\Equal0~0_combout ),
	.D(\Equal1~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\jlink_buf[0]~0_combout ),
	.Cout(),
	.Q());
defparam \jlink_buf[0]~0 .coord_x = 5;
defparam \jlink_buf[0]~0 .coord_y = 2;
defparam \jlink_buf[0]~0 .coord_z = 1;
defparam \jlink_buf[0]~0 .mask = 16'h0F00;
defparam \jlink_buf[0]~0 .modeMux = 1'b0;
defparam \jlink_buf[0]~0 .FeedbackMux = 1'b0;
defparam \jlink_buf[0]~0 .ShiftMux = 1'b0;
defparam \jlink_buf[0]~0 .BypassEn = 1'b0;
defparam \jlink_buf[0]~0 .CarryEnb = 1'b1;

alta_slice \jlink_buf[1] (
	.A(\JLINK_RESET~input_o ),
	.B(jlink_buf[1]),
	.C(vcc),
	.D(\jlink_buf[0]~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(jlink_buf[1]),
	.Cout(),
	.Q());
defparam \jlink_buf[1] .coord_x = 5;
defparam \jlink_buf[1] .coord_y = 2;
defparam \jlink_buf[1] .coord_z = 13;
defparam \jlink_buf[1] .mask = 16'hAACC;
defparam \jlink_buf[1] .modeMux = 1'b0;
defparam \jlink_buf[1] .FeedbackMux = 1'b0;
defparam \jlink_buf[1] .ShiftMux = 1'b0;
defparam \jlink_buf[1] .BypassEn = 1'b0;
defparam \jlink_buf[1] .CarryEnb = 1'b1;

alta_slice \stlink_buf[0] (
	.A(\STLINK_JTCK_SWCLK~input_o ),
	.B(vcc),
	.C(stlink_buf[0]),
	.D(\Equal0~0clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(stlink_buf[0]),
	.Cout(),
	.Q());
defparam \stlink_buf[0] .coord_x = 5;
defparam \stlink_buf[0] .coord_y = 2;
defparam \stlink_buf[0] .coord_z = 3;
defparam \stlink_buf[0] .mask = 16'hAAF0;
defparam \stlink_buf[0] .modeMux = 1'b0;
defparam \stlink_buf[0] .FeedbackMux = 1'b0;
defparam \stlink_buf[0] .ShiftMux = 1'b0;
defparam \stlink_buf[0] .BypassEn = 1'b0;
defparam \stlink_buf[0] .CarryEnb = 1'b1;

alta_slice \stlink_buf[1] (
	.A(vcc),
	.B(\STLINK_JTCK_RESET~input_o ),
	.C(stlink_buf[1]),
	.D(\Equal0~0clkctrl_outclk ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(stlink_buf[1]),
	.Cout(),
	.Q());
defparam \stlink_buf[1] .coord_x = 5;
defparam \stlink_buf[1] .coord_y = 2;
defparam \stlink_buf[1] .coord_z = 11;
defparam \stlink_buf[1] .mask = 16'hCCF0;
defparam \stlink_buf[1] .modeMux = 1'b0;
defparam \stlink_buf[1] .FeedbackMux = 1'b0;
defparam \stlink_buf[1] .ShiftMux = 1'b0;
defparam \stlink_buf[1] .BypassEn = 1'b0;
defparam \stlink_buf[1] .CarryEnb = 1'b1;

endmodule
