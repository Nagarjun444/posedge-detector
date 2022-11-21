module posedge_detector_testbench();


reg clk;
reg data_in1;
reg data_in2;
wire data_out;

posedge_detector DUT (.clk(clk),.data_in1(data_in1),.data_in2(data_in2),.data_out(data_out));

initial
  begin
   clk=1'b0;
   forever #5 clk=~clk;
  end

initial
  begin
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b0;
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b0;
   #10;
   data_in1=1'b1;
   #10;
   data_in2=1'b1;
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b1;
   #10;
   data_in1=1'b1;
   #10;
   data_in2=1'b0;
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b0;
   #10;
   data_in1=1'b1;
   #10;
   data_in2=1'b0;
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b1;
   #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b1;
   #10;
   data_in1=1'b1;
   #10;
   data_in2=1'b0;
    #10;
   data_in1=1'b0;
   #10;
   data_in2=1'b0;
   #1000;
   $finish;
  
  end


endmodule