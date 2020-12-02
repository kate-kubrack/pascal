{ https://acmp.ru/index.asp?main=task&id_task=597 }
var
	r1, r2, r3: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

    read(f_input, r1, r2, r3);

    if (r1<r2+r3) then write(f_output, 'NO')
    else write(f_output, 'YES');

	close(f_input);
	close(f_output);
end.