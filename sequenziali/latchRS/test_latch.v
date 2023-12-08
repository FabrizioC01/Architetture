module test;
    reg set,reset;
    wire q, nq;
    
    latchRS latch(q,nq,reset,set);

    initial 
    begin
        set=1;
        reset=0;

        $dumpfile("latch.vcd");
        $dumpvars;
        
        #1$display("set: %b, reset:  %b -> out: %b",set,reset,q);

        #20
        set=0;
        reset=0;


        #1$display("set: %b, reset:  %b -> out: %b",set,reset,q);

        #20
        set=0;
        reset=1;


        #1$display("set: %b, reset:  %b -> out: %b",set,reset,q);

        #20
        set=0;
        reset=0;


        #1$display("set: %b, reset:  %b -> out: %b",set,reset,q);
        #20
        set=1;
        reset=0;


        #1$display("set: %b, reset:  %b -> out: %b",set,reset,q);
        #1 $finish;
    end
endmodule