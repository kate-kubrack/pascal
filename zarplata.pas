{ https://acmp.ru/index.asp?main=task&id_task=21 }
const
	number_of_zp = 3;
var
	max, min: longint;
	i : integer; 
	zp : array [1 .. number_of_zp] of longint;
	f_input, f_output : text;
begin
	assign (f_input, 'INPUT.TXT');
	assign (f_output, 'OUTPUT.TXT');
	
	reset (f_input);
	rewrite (f_output);
	
	for i :=1 to number_of_zp do read (f_input, zp[i]);
	
	min := 100000;
	max := 0;
	
	for i := 1 to number_of_zp do begin
		if zp[i] < min then min := zp[i];
		if zp[i] > max then max := zp[i];
	end;
	
	write (f_output, max - min);

	close (f_input);
	close (f_output);
	
end.