{ https://acmp.ru/index.asp?main=task&id_task=907 }
var
	W, H, R: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

    read(f_input, W, H, R);

    if (R*2>W) or (R*2>H) then write(f_output, 'NO')
    else write(f_output, 'YES');

	close(f_input);
	close(f_output);
end.