module test;
    reg  v1,v2,v3,v4;

    wire out1,out2;

    integer i;

    encoder enc(v4,v3,v2,v1,out1,out2);
    initial 
    begin
        v1=0;
        v2=0;
        v3=0;
        v4=1;

        $dumpfile("encoder.vcd");
        $dumpvars;

        #1 $display("%b %b %b %b -> %b %b",v1,v2,v3,v4,out1,out2);
        
        #20
        v1=0;
        v2=0;
        v3=1;
        v4=0;

        #1 $display("%b %b %b %b -> %b %b",v1,v2,v3,v4,out1,out2);
        #20
        v1=0;
        v2=1;
        v3=0;
        v4=0;

        #1 $display("%b %b %b %b -> %b %b",v1,v2,v3,v4,out1,out2);
        #20
        v1=1;
        v2=0;
        v3=0;
        v4=0;
        #20

        #1 $display("%b %b %b %b -> %b %b",v1,v2,v3,v4,out1,out2);
    
        #3 $finish;
    end
endmodule