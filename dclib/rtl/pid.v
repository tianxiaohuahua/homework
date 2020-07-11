module pid(
				clk,
				rstn,
				value_in,
				value_out,
				clk_10M,
				value_taget,
				//Error,
				Error_new,
				Error_adder,
				Error_old,
				Error_sub,
				
				Kp,
				Ki,
				Kd
			);

	input clk;
	input rstn;
	input value_in;
	input value_taget;
	input Kp;
	input	Ki;
	input	Kd;
	
	output value_out;
	output clk_10M;
	//output Error;
	output Error_new;
	output Error_adder;
	output Error_old;
	output Error_sub;
	
	wire [7:0] value_taget;
	wire [7:0] value_in;
	wire [7:0] Kp;
	wire [7:0] Ki;
	wire [7:0] Kd;
	reg [7:0]value_out;
	reg clk_10M; //5分频时钟信号
	reg [4:0] adder5; //5分频电路的计数器
	
	//reg [7:0] Error;
	reg [7:0] Error_new;
	reg [7:0] Error_adder;
	reg [7:0] Error_old;
	reg [7:0] Error_sub;
	
	//板载基本50M时钟信号处理
	always@(posedge clk or negedge rstn)
		begin
			if(!rstn)
				adder5 <= 0;
			else if (adder5 == 5'd4)
				adder5 <= 0;
			else
				adder5 <= adder5 + 1'b1;
		end
		
	//5分频电路
	always@(posedge clk or negedge rstn)
		begin
			if (!rstn)
				clk_10M <= 0;
			else if (adder5 == 5'd4)
				clk_10M <=~ clk_10M;
			else
				clk_10M <= clk_10M;
		end
		
	//检测误差			
	/*always@(posedge clk_10M or negedge rstn)
		begin
			if (!rstn)
				Error <= 0;
			else
				Error <= value_in - value_taget;
		end*/
		
	////检测误差			
	always@(posedge clk_10M or negedge rstn)
		begin
			if (!rstn)
				Error_new <= 0;
			else
				Error_new <= value_in - value_taget;
		end
		
	//积分
	always@(posedge clk_10M or negedge rstn)
		begin 
			if (!rstn)
				Error_adder <= 0;
			else 
				Error_adder <= value_in - value_taget + Error_adder;
		end
	
	//差分
	always@(posedge clk_10M or negedge rstn)
		begin 
			if (!rstn)
				Error_old <= 0;
			else 
				begin
					Error_old <= value_in - value_taget;
					Error_sub <= value_in - value_taget - Error_old;
				end
		end
		
	//PID结果输出	
	always@(posedge clk_10M or negedge rstn)
		begin 
			if (!rstn)
				value_out <= 0;
			else 
				value_out <= Kp*Error_new + Ki*Error_adder + Kd*Error_sub;
		end
		
endmodule
