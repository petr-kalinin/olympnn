var
n,m,a,b,x,y:qword;
buf,bufo:text;
begin
assign (buf,'classics.in');
reset (buf);
read(buf,a,b,n,m);
assign (bufo,'classics.out');
reset (bufo);
if a*(n-2)>b*(m-2) then x:=a*(n-2)+1 else x:=b*(m-2)+1;
if (a*n-1)>(b*m-1) then y:=b*m-1 else y:=a*n-1;
if x>y then writeln(bufo,'0 0') else writeln(bufo,x,' ',y)
close(buf);
close(bufo)
end.