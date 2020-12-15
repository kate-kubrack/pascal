{ https://acmp.ru/index.asp?main=task&id_task=62 }
const
    ascii_code_of_pre_0 = 48;
    ascii_code_of_pre_A = 64;
var
	str_data: string;
	horizontal, vertical: integer;
	f_input, f_output: text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

	read(f_input, str_data);

    horizontal := ord(str_data[1]) - ascii_code_of_pre_A;
    vertical := ord(str_data[2]) - ascii_code_of_pre_0;

    if (horizontal mod 2) = (vertical mod 2) then
    write(f_output, 'BLACK')
    else write(f_output, 'WHITE');

	close(f_input);
	close(f_output);
end.