module demux_1x2_tb;
  reg s;
  reg d;
  wire y1,y0;
  demux_1x2 dut( .s(s), .d(d),.y1(y1),.y0(y0));
  initial begin
    $dumpfile("demux_1x2.vcd");
    $dumpvars(1);
    $monitor("s=%b,d=%b,y0=%b,y1=%b",s,d,y0,y1);
    d=0;s=0;
    #2 d=1;s=0;
    #2 d=0;s=1;
    #2 d=1;s=1;
    #9 $finish;
  end
endmodule
