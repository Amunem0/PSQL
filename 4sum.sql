declare
	num int :=0;
	i int;
	s int :=0;
	r int;

begin
	num:=&num;
	while num > 0 loop
		r:= MOD(num, 10);
		s := s + r;
		num:=floor(num/10);
	end loop;

	dbms_output.put_line('  the sum of digits is '||s );

end;
/	