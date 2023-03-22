module Freq_Divider_by_3(
    input clk,
    input start,
    output reg [1:0]count
);
    always@(posedge clk) begin
        if(start) begin
            count<=count+1;     
            if(count==2)
                count<=0;
        end
        else begin 
            count<=0; 
        end   
    end   
endmodule
//Let F be the frequency of input clock
//Then, both count[0] and count[1] Signals have Same F/3 frequency(but different Phase) with the duty Cycle of 33.3% 
