module mux81(Y,A,D);
	output Y;
	input[2:0] A;
	input[7:0] D;
	wire[7:0] T;
	wire[2:0] NA;
	
	not
	(NA[0],A[0]),
	(NA[1],A[1]),
	(NA[2],A[2]);
	
	and
	(T[0],D[0],NA[2],NA[1],NA[0]),
	(T[1],D[1],NA[2],NA[1],A[0]),
	(T[2],D[2],NA[2],A[1],NA[0]),
	(T[3],D[3],NA[2],A[1],A[0]),
	(T[4],D[4],A[2],NA[1],NA[0]),
	(T[5],D[5],A[2],NA[1],A[0]),
	(T[6],D[6],A[2],A[1],NA[0]),
	(T[7],D[7],A[2],A[1],A[0]);
	
	or
	(Y,T[0],T[1],T[2],T[3],T[4],T[5],T[6],T[7]);
endmodule