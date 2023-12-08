module test;
    reg clock,d;
    wire q, nq;

    latchD l(clock,d,q,nq);

    always
    begin
        #2 clock=0;
        #2 clock=1;
    end

    initial
    begin
        $dumpfile("latchD.vcd");
        $dumpvars;
        clock=1;
        d=0;

        #10d=0;
        #10d=1;
        #10d=0;
        #10d=0;
        #10d=1;
        #10d=0;
        #10d=0;

        $finish;    
    end

endmodule