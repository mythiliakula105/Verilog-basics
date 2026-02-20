module tb_not_gate;
    reg a;
    wire y;

    not_gate uut (.a(a), .y(y));

    initial begin
        $dumpfile("dump_not.vcd");
        $dumpvars(0, tb_not_gate);

        a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 $finish;
    end
endmodule
