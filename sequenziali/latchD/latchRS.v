module latchRS (output q, output notq, input s, input r);
    wire wR, wS;
    wire wOut1, wOut2;

    or(wR,s,wOut2);
    or(wS,r,wOut1);

    not(wOut1,wR);
    not(wOut2,wS);

    assign q=wOut1;
    assign notq=wOut2;
    
endmodule