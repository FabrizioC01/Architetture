module latchD (input clock, input D, output Q, output nQ);
    wire w1,w2;
    
    assign w1= clock && !D;

    assign w2= clock && D;

    latchRS l(Q,nQ,w1,w2);

endmodule