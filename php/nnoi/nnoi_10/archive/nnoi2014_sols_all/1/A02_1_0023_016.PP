var
A,B,N,M:real;
buf,bufo:text;
begin
assign(buf,'classics.in');
reset(buf);
read(buf,A,B);
assign(bufo,'classics.out');
re write(bufo);
writeln(bufo,a+b);
close(buf);
close(bufo);
end.
