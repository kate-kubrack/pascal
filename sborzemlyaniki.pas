{ https://acmp.ru/index.asp?main=task&id_task=755 }
var
	X, Y, Z: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

	read(f_input, X);
    read(f_input, Y);
    read(f_input, Z);
    if X+Y-Z<0 then write(f_output, 'Impossible')
    else write (f_output, X+Y-Z);

	close(f_input);
	close(f_output);
end.