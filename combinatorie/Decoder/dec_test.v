module test;
    reg in0,in1;
    wire v0,v1,v2,v3;

    decoder d(in0,in1,v0,v1,v2,v3);

    initial
    begin
        $dumpfile("decoder.vcd");
        $dumpvars;

        in0=0;
        in1=0;
        #10
        in0=1;
        in1=0;
        #10
        in0=0;
        in1=1;
        #10
        in0=1;
        in1=1;
        
        #10 $finish;
    end
endmodule