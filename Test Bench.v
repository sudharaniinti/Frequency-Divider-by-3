module Freq_Div_Tb();
  
    reg clk,start;
    wire [1:0] count;
    Freq_Divider_by_3 DUT(clk,start,count);
  
    initial begin
        clk=0;
        start=0;
    end
  
    always #5 clk=~clk;   
    initial #7 start=1;
  
endmodule
