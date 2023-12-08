module encoder (input i0,input i1,input i2,input i3,output out0,output out1);
    assign out0 = !i0 && !i1 && i2 && !i3 || !i0 && !i1 && !i2 && i3;
    assign out1 = !i0 && i1 && !i2 && !i3 || !i0 && !i1 && !i2 && i3;
    
endmodule

