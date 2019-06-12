module vote7(O,I);
	output O;
	input[6:0] I;
	
	integer T;
	reg O;
	always@(I) begin
		T=I[0]+I[1]+I[2]+I[3]+I[4]+I[5]+I[6];
		if(T>3) O=1'b1;
		else O=1'b0;
	end
endmodule