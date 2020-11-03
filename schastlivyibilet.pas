{ https://acmp.ru/index.asp?main=task&id_task=52 }
const
	ascii_code_of_zero = 48;
var
	f_input, f_output : text;
	s: string;
begin
	assign(f_input, 'INPUT.TXT');
	assign(f_output, 'OUTPUT.TXT');
	
	reset(f_input);
	rewrite(f_output);
	
    read(f_input, s);
    
    if ( ord(s[1]) - ascii_code_of_zero 
       + ord(s[2]) - ascii_code_of_zero 
       + ord(s[3]) - ascii_code_of_zero = ord(s[4]) - ascii_code_of_zero 
       									+ ord(s[5]) - ascii_code_of_zero 
       									+ ord(s[6]) - ascii_code_of_zero)
    	then write(f_output, 'YES') 
    	else write(f_output, 'NO');
	
	close(f_input);
	close(f_output);
	
end.