module latchRS (output q, output notq, input r, input s);
    wire wR, wS;
    wire wOut1, wOut2;

    or(wR,r,wOut2);
    or(wS,s,wOut1);

    not(wOut1,wR);
    not(wOut2,wS);

    assign q=wOut1;
    assign notq=wOut2;
    
endmodule