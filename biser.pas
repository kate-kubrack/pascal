{ https://acmp.ru/index.asp?main=task&id_task=903 }
var
	N: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

	read(f_input, N);
	write(f_output, N+1);

	close(f_input);
	close(f_output);
end.