{ https://acmp.ru/index.asp?main=task&id_task=92 }
var
	S, a, c: integer;
	f_input, f_output : text;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');

	reset(f_input);
	rewrite(f_output);

    read(f_input, S);

    a:=S div 6;
    c:=(a+a)*2;

	write(f_output, a, ' ', c, ' ', a);

	close(f_input);
	close(f_output);
end.