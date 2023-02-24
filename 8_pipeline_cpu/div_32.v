module div //移位相减

( 

 input[31:0] dividend,//被除数

 input[31:0] divisor, //除数

 output reg [31:0] result, //结果

 output reg [31:0] r //余数

); 

reg[31:0] tempa; //被除数

reg[31:0] tempb; //除数

reg[63:0] temp_a; 

reg[63:0] temp_b; 

integer i; 

always @(dividend or divisor) 

begin 

  tempa <= dividend; //被除数

  tempb <= divisor;  //除数

end 

always @(tempa or tempb) 

begin 

  temp_a = {32'h00000000,tempa}; //加载被除数

  temp_b = {tempb,32'h00000000};  //加载除数

  for(i = 0;i < 32;i = i + 1)  

​    begin 

​      temp_a = {temp_a[62:0],1'b0}; //被除数左移一位，一位一位的加载被除数

​      if(temp_a[63:32] >= tempb)   //加载后的被除数大于除数

​        temp_a = temp_a - temp_b + 1'b1; //减去被除数，商1

​      else 

​        temp_a = temp_a; 

​    end 

  result <= temp_a[31:0]; 

  r <= temp_a[63:32]; 

end 

endmodule 