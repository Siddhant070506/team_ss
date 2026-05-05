module timer (
input clk,
input rst,
input enable,
input [3:0] preset,
output reg [3:0] count,
output reg alarm
);
always @(posedge clk or posedge rst)
begin 
if (rst) begin
count <= 0;
alarm <= 0;
end
else if (enable) begin 
count<=count+1;
if(count+1==preset)
alarm<=1;
else
alarm<=0;
end
end
endmodule


