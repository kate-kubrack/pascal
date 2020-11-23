{ https://acmp.ru/index.asp?main=task&id_task=754 }
const
    min=94;
    max=727;
var
	M1, M2, M3: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

    read(f_input, M1, M2, M3);

    if (M1<min) or (M1>max)
    or (M2<min) or (M2>max)
    or (M3<min) or (M3>max) then write(f_output, 'Error')

    else if (M1>=M2) and (M1>=M3) then write(f_output, M1)
    else if (M2>=M1) and (M2>=M3) then write(f_output, M2)
    else if (M3>=M2) and (M3>=M1) then write(f_output, M3);

	close(f_input);
	close(f_output);
end.