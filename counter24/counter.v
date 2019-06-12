module counter(qout,cout,cin);
	output[7:0] qout;
	output cout;
	input cin;
	
	reg[7:0] qout;
	reg cout;
	always@(posedge cin) begin
		cout<=0;
		if(qout[3:0]==9) begin
			qout[3:0]<=0;
			qout[7:4]<=qout[7:4]+1'b1;
		end
		else begin
			if(qout[3:0]==3 && qout[7:4]==2) begin
				qout<=0;
				cout<=1;
			end
			else
				qout[3:0]<=qout[3:0]+1'b1;
		end
	end
endmodule

