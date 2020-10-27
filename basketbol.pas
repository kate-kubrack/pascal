program sum;
var
	a, a1, a2, a3, a4, b, b1, b2, b3, b4: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');
	
	reset(f_input);
	rewrite(f_output);
	
	read(f_input, a1, b1, a2, b2, a3, b3, a4, b4);
	
	a:=a1+a2+a3+a4;
	b:=b1+b2+b3+b4;
	
	if a>b then write (f_output,'1');
	if a<b then write (f_output,'2');
	if a=b then write (f_output,'DRAW');
	
	close(f_input);
	close(f_output);
	
end.