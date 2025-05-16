module demux_1x2(input s,d,output reg y1,y0);
  assign y1=!s&d;
  assign y0=s&d;
endmodule	
