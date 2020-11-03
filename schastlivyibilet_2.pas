{ https://acmp.ru/index.asp?main=task&id_task=52 }
var
	x: longint;
	x1, x2, x3, x4, x5, x6: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');
	
	reset(f_input);
	rewrite(f_output);
	
	read(f_input, x);
	
	x1:=x div 100000 mod 10;
	x2:=x div 10000 mod 10;
	x3:=x div 1000 mod 10;
	x4:=x div 100 mod 10;
	x5:=x div 10 mod 10;
	x6:=x mod 10;
	
	if x1+x2+x3=x4+x5+x6
		then write(f_output, 'YES') 
    	else write(f_output, 'NO');
	
	close(f_input);
	close(f_output);
	
end.