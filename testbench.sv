`timescale 1ns/100ps
module testbench;

parameter M_WIDTH = 4;
parameter N_WIDTH = 2;

        logic             i_clk;
        logic             i_reset;

        logic [M_WIDTH-1:0] i_arg_A_s;	
        logic [M_WIDTH-1:0] i_arg_B_s;
        logic [N_WIDTH-1:0] i_op_s;
        
	    logic [M_WIDTH-1:0] o_result_s, o_result_ss;
		logic [3:0] o_status_s;
		logic [3:0] o_status_ss;


arith_unit_26 	#(.WIDTH_M(M_WIDTH), .WIDTH_N(N_WIDTH))	arith_model	(.i_arg_A(i_arg_A_s), .i_arg_B(i_arg_B_s), .i_op(i_op_s), .o_result(o_result_s)	, .i_clk, .i_reset, .o_status(o_status_s));		
arith_unit_26_rtl 				arith_synth 	(.i_arg_A(i_arg_A_s), .i_arg_B(i_arg_B_s), .i_op(i_op_s), .o_result(o_result_ss), .i_clk, .i_reset, .o_status(o_status_ss));	

initial
        begin
                $dumpfile("signals.vcd");
                $dumpvars(0,testbench);
	
		i_clk = 0; i_reset = 1;               
		i_op_s = 'b00;
		i_arg_A_s = 'b0001;  i_arg_B_s = 'b0000;
		i_clk = 0;
		#1 
		i_clk = 1;#1
		i_clk= 0; i_arg_B_s = 'b1000;
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_B_s = 'b0010;
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_B_s = 'b0011;
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_B_s = 'b0100;
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_A_s = 'b1110;  i_arg_B_s = 'b0001;
		#1  
		i_clk = 1;#1				// end 00
		i_clk = 0; i_op_s = 01; i_arg_A_s ='b0001; i_arg_B_s = 'b0000;
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_A_s = 'b1000;
		#1
		i_clk = 1;#1 
		i_clk = 0; i_arg_B_s = 'b0010; 
		#1
		i_clk = 1;#1
		i_clk = 0; i_arg_A_s ='b0101; i_arg_B_s = 'b0100; 
		#1
		i_clk = 1; #1
		i_clk = 0; i_arg_B_s = 'b1111;
	    #1
		i_clk = 1; #1
		i_clk = 0; i_arg_A_s = 'b1010; 	i_arg_B_s = 'b0001; 
		#1
		i_clk = 1;#1				// end 01
		i_clk = 0; i_op_s = 'b10; i_arg_A_s = 'b0110; i_arg_B_s = 'b1111;  		
		#1 
		i_clk = 1;#1
		i_clk = 0; i_arg_B_s = 'b0001;
		#1
		i_clk = 1;#1
        i_clk = 0; i_arg_A_s = 'b1011; i_arg_B_s = 'b1011;
		#1
		i_clk = 1;#1
        i_clk = 0; i_arg_A_s = 'b0100; i_arg_B_s = 'b1101;
		#1
		i_clk = 1;#1
        i_clk = 0; i_arg_A_s = 'b0110; i_arg_B_s = 'b1100;
		#1				
		i_clk = 1;#1				// end 10
        i_clk = 0; i_arg_A_s = 'b0000; i_op_s = 'b11;
		#1
		i_clk = 1;#1                            
        i_clk = 0; i_arg_A_s = 'b0001; 
        #1
		i_clk = 1;#1                                     
        i_clk = 0; i_arg_A_s = 'b1000;
        #1
		i_clk = 1;#1                                     
        i_clk = 0; i_arg_A_s = 'b1110;
        #1
		i_clk = 1;#1                                     
        i_clk = 0;
        #1
		i_clk = 1;#1
		i_clk = 0; i_reset = 0; 
		#1

                $finish;
        end
endmodule
