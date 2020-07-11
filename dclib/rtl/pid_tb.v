`timescale 1ns/1ns

module pid_tb();

	reg clk;
	reg rstn;
	reg [7:0] value_in;
	reg [7:0] value_taget;
	reg [7:0] Kp;
	reg [7:0] Ki;
	reg [7:0] Kd;
	wire [7:0] value_out;
	wire clk_10M;
	//wire [7:0] Error;
	wire [7:0] Error_new;
	wire [7:0] Error_adder;
	wire [7:0] Error_old;
	wire [7:0] Error_sub;
	pid pid(
					.clk(clk),
					.rstn(rstn),
					.value_in(value_in),
					.Kp(Kp),
					.Ki(Ki),
					.Kd(Kd),
					.value_out(value_out),
					.clk_10M(clk_10M),
					//.Error(Error),
					.Error_new(Error_new),
					.value_taget(value_taget),
					.Error_adder(Error_adder),
					.Error_old(Error_old),
					.Error_sub(Error_sub)
				);
	
	
	initial begin
		rstn = 0;
		clk = 0;
		value_taget = 0;
		Kp = 8'd1;
		Ki = 8'd1;
		Kd = 8'd1;
		#10 rstn = 1'b1;
		value_in = 8'd0;
	end
	
	//模拟50M时钟输入
	always#10 clk =~clk;
	always@(posedge clk_10M) value_in = value_in + 8'd1;
endmodule
