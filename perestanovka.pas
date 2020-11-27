{ https://acmp.ru/index.asp?main=task&id_task=970 }
var
	A1, A2, A3: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

    read(f_input, A1, A2, A3);

    if (A1+A2=A3) or (A1+A3=A2) or (A2+A3=A1) then write (f_output, 'YES')
    else write(f_output, 'NO');

	close(f_input);
	close(f_output);
end.