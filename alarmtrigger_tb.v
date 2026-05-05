module timer_tb;
reg clk,rst,enable;
reg[3:0] preset;
wire[3:0] count;
wire alarm;
timer dut(
.clk(clk),
.rst(rst),
.enable(enable),
.preset(preset),
.count(count),
.alarm(alarm)
);
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
enable=0;
preset=4'd5;
#10 rst=0;
#10 enable=1;
#100 enable=0;
#10 preset=4'd8;
enable=1;
#100 $finish;
end
endmodule
