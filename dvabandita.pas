{ https://acmp.ru/index.asp?main=task&id_task=33 }
var
	a, b, c: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

	read(f_input, a, b);

	c:=a+b-1;

	write(f_output, c-a, ' ', c-b);

	close(f_input);
	close(f_output);
end.