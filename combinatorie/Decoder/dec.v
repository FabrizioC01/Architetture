module decoder (input i0, input i1, output out0, output out1, output out2, output out3);
    assign out0= !i0 && !i1;
    assign out1= !i0 && i1;
    assign out2= i0 && !i1;
    assign out3= i0 && i1;
endmodule