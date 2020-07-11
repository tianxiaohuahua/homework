# 使用命令行模式进行DC的配置过程，具体文本如下：

## 1 DC配置部分
#载入配置
source /home/tianxiaohua/Program/Designcompiler/TestProject4-PID-1/dclib/work/.synopsys_dc.setup

#读取Verilog文件
read_file -format verilog {../rtl/pid.v}

#检查
check_design

link

set current_design	

check_design

## 2 进行约束
创建一个时钟，周期20ns
create_clock -name my_clk -period 20 [get_ports clk]

set_clock_uncertainty -setup  0.3 [get_clocks my_clk]

set_clock_latency -source -max  0.3 [get_clocks my_clk]

set_clock_latency  -max  0.5 [get_clocks my_clk]

set_clock_transition  -max  0.2 [get_clocks my_clk]

	
#不对时钟复位信号优化
set_dont_touch_network [get_ports "clk rstn"]

#延时分析时认为时钟复位无延时
set_ideal_network [get_ports "clk rstn"] 


#输入信号裕量
set_input_delay -max 12 -clock my_clk [get_ports "value_taget* value_in* Kp* Ki* kd*"]

#输出时间裕量
set_output_delay -max 12 -clock my_clk [get_ports "value_out* clk_10M Error_new* Error_adder* Error_old* Error_sub*"]

#设置不接触网络
set_dont_touch_network [get_ports "clk"]

#设置理想的网络
set_ideal_network [get_ports "clk"]  


#设置不接触网络
set_dont_touch_network [get_ports rstn]


#设置理想网络
set_ideal_network [get_ports rstn]

#设置verilogout不正确
set verilogout_no_tri ture


#更改名称-层次结构-规则名称规则
change_names -hierarchy -rules name_rule

#设置多端口网络-所有缓冲区常数
set_fix_multiple_port_nets -all -buffer_constants

完成时序约束后,要对设计的工作环境、设计规则等进行约束,如下约束语句:

#设定线载模型的模式
set_wire_load_mode top

#线载模型,要粗略综合一下估出面积,再设定
set wire_load umc_wl20


以下是设计规则的约束:
set_driving_cell -lib_cell FFEDQHD4X -pin Q [get_ports "value_taget* value_in* Kp* Ki* kd*"]

#驱动能力的约束
set max_cap [expr [load_of slow/AND2HD4XSPG/A] * 5]
set_load [expr 3 * $max_cap] [get_ports "value_out* clk_10M Error_new* Error_adder* Error_old* Error_sub*"]

#扇出负载
set_fanout_load 10 [get_ports "value_out* clk_10M Error_new* Error_adder* Error_old* Error_sub*"] 

set_max_fanout 20 [get_ports "value_taget* value_in* Kp* Ki* kd*"]
set_max_transition 2 [get_ports "value_taget* value_in* Kp* Ki* kd*"]
set_max_fanout 20 [get_ports "value_out* clk_10M Error_new* Error_adder* Error_old* Error_sub*"] 
set_max_transition 2 [get_ports "value_out* clk_10M Error_new* Error_adder* Error_old* Error_sub*"]

## 3 输出结果

#开始仿真
compile -map high

#输出结果
rc > ../outfile/rc.log

#输出网表
write -f verilog -hier -out ../outfile/dcLabTop.sv 

#综合数据文件
write -f ddc -hier -out ../outfile/dcLabTop.ddc

#标准延时文件
write_sdf -version 2.1 ../outfile/light_controller.sdf




