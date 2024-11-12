module arith_unit_26(
	i_op,
    i_arg_A,
    i_arg_B,
    i_clk,
    i_reset,
    o_result,
	o_status);

    parameter WIDTH_M = 4;
    parameter WIDTH_N = 2;

    input  logic  [WIDTH_N-1:0]    i_op;
    input  logic  [WIDTH_M-1:0]    i_arg_A;
    input  logic  [WIDTH_M-1:0]    i_arg_B;
    input  logic  [0:0]            i_clk;
    input  logic  [0:0]            i_reset;
    output logic  [WIDTH_M-1:0]    o_result;
    output logic  [3:0]            o_status;
    
    logic [WIDTH_M-1:0] s_result;
	logic 	ERROR;
	logic 	NOT_EVEN_1;
	logic 	ONES;
	logic 	OVERFLOW;


	int i;
	

    always_comb 

	begin
		OVERFLOW =  0;
		ERROR    =  0;
		NOT_EVEN_1 = 0;
		s_result = 'x;		
		case (i_op)
			2'b00 :	begin                       //  operacja n.1 prezsuniecie i_arg_A 
					    if (i_arg_B[WIDTH_M-1] != 1)
					    begin
							s_result = (i_arg_A << i_arg_B);
						end
					    else if ((i_arg_B[WIDTH_M-1] == 1) & ((i_arg_B << 1) == '0))
						begin 
							s_result = i_arg_A;
						end
						else if (i_arg_B[WIDTH_M-1] == 1)
					    begin
							ERROR = 1;
						    s_result = 'x;
					    end
					    else
					    begin
						    s_result = 'x;
					    end
				    end
			2'b01 : begin 						// operacja n.2 porownanie liczb A > B
					    if ((i_arg_A << 1) > (i_arg_B << 1))	// A>B (po modulu)
					    begin
						    if (i_arg_A[WIDTH_M-1] == 0)
						    begin
							    s_result = i_arg_A;
						    end
							else if (i_arg_A[WIDTH_M-1] == 1)
							begin
							    s_result = '0;
							end
						    else 
						    begin
							    s_result = '0;
						    end
					    end
					    else if ((i_arg_A << 1) < (i_arg_B << 1))	// A<B (po modulu)
					    begin 
						    if (((i_arg_A[WIDTH_M-1] == 1) & (i_arg_B[WIDTH_M-1] == 1)) | ((i_arg_A[WIDTH_M-1] == 0) & (i_arg_B[WIDTH_M-1] == 1)))
						    begin
							    s_result = ~i_arg_A;
						    end
							else if (((i_arg_A[WIDTH_M-1] == 1) & (i_arg_B[WIDTH_M-1] == 0)) | ((i_arg_A[WIDTH_M-1] == 0) & (i_arg_B[WIDTH_M-1] == 0)))
							begin
							    s_result = '0;
						    end
						    else 
						    begin	
							    s_result = '0;
						    end
					    end 
					    else 
					    begin
						    s_result = '0;
					    end
				    end
			2'b10 : begin
				        s_result =  'x;
						 // operacja n.3 Dzielenie A/~B
				        if ((((~i_arg_B) << 1) != '0) & ((i_arg_A << 1) != '0)) 
					    begin
							s_result = {(i_arg_A[WIDTH_M-1] ^ (~i_arg_B[WIDTH_M-1])), (i_arg_A[WIDTH_M-2:0] / (~i_arg_B[WIDTH_M-2:0]))};
							
						end 
						else if ((i_arg_A << 1) == '0)
						begin 
							s_result = '0; //0
						end 
						else if (((~i_arg_B) << 1) == '0)
					    begin
						    s_result = 'x;
							ERROR = 1;
					    end
					    else
					    begin
						    s_result = 'x;
					    end
				    end		
			2'b11 : begin 			
						    s_result = 'bx;			// operacja n.4 ZM(A) -> U2(A)
					    if (i_arg_A[WIDTH_M-1] == 0)  
						begin		
						    s_result = i_arg_A;  
						end   
					    else if ((i_arg_A[WIDTH_M-1] == 1) & ((i_arg_A << 1) == '0)) 
						    begin
						        s_result = 'bx;			
						        ERROR = 1;
								OVERFLOW = 1;			// blad i przepelnienie
						    end 
					    else if (i_arg_A[WIDTH_M-1] == 1)
						    begin
						        s_result = (i_arg_A - 'b1);
						        s_result[WIDTH_M-1] = ~i_arg_A[WIDTH_M-1];
						        s_result = ~s_result;
						    end
					    else 
						    begin
						        s_result = 'x;		     	// force else
						    end
				    end
		    default : s_result = 'x;  
		endcase
	

	if (s_result == '1 )
		begin 
		ONES = 1'b1;
		end
	else if (s_result != '0)
		begin
		ONES = 0;
		end
	else 
		begin
		ONES = 0; 
		end	


	for (i = 0; i <WIDTH_M; i = i+1)
	begin
		if (s_result[i] == 1)
			begin
			NOT_EVEN_1 = ~NOT_EVEN_1;	
			end
		else if (s_result[i] != 1)
			begin
			NOT_EVEN_1 = NOT_EVEN_1;
			end
		else 
			begin 
			NOT_EVEN_1 = NOT_EVEN_1;
			end
	end

	begin
		if (ERROR == 1)
			begin
			ONES = 0;
			NOT_EVEN_1 = 0;
			end
		else if (ERROR == 0)
			begin
			NOT_EVEN_1 = NOT_EVEN_1;
			ONES = ONES;
			end
		else 
			begin 
			NOT_EVEN_1 = NOT_EVEN_1;
			ONES = ONES;
			end
	end
	
	end
    

always @(posedge i_clk,negedge i_reset)
	begin 
		if (i_reset == 0) 
		begin 
			o_status = '0;
			o_result = '0;
		end 
		else 
		begin 
			o_result <= s_result;
			o_status <= {ERROR, NOT_EVEN_1, ONES, OVERFLOW};
		end
	end

endmodule 
