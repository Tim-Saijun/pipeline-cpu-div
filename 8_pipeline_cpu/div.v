`timescale 1ns / 1ps
//整数算法模块
module division(
    input   [31:0] A,  //被除数
    input   [7:0]  B,       //除数
    output  [31:0] result,   //商
    output  [31:0] odd        //余数
    );

```verilog
reg         [31:0]                  a_reg;
reg         [7:0]                   b_reg;
reg         [63:0]                  temp_a;
reg         [63:0]                  temp_b;
integer                             i;
```

always @(*) begin
    a_reg = A;
    b_reg = B;
end

always @(*) begin
    temp_a = {32'h0,a_reg};
    temp_b = {b_reg,32'h0};

```verilog
for(i=0;i<32;i=i+1)
begin
    temp_a = temp_a <<1 ;
    if(temp_a >= temp_b)
    begin
        temp_a = temp_a - temp_b +1;
    end
    else
    begin
        temp_a = temp_a;
    end
end
```
end
assign odd    = temp_a[63:32];
assign result = temp_a[31:0]; 
endmodule