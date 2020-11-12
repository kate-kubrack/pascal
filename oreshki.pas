{ https://acmp.ru/index.asp?main=task&id_task=766 }
var
	N, M, K: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

	read(f_input, N);
	read(f_input, M);
	read(f_input, K);

	if N*M<K then write(f_output, 'NO')
	else write(f_output, 'YES');

	close(f_input);
	close(f_output);
end.