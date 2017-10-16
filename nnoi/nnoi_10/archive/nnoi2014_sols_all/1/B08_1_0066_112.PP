var buf: text;
a,b,n,m,min,max:integer;
begin
assign(buf,'classics.in');
reset(buf);
read(buf,a,b,n,m);
close(buf);
if(a*(n-2)+1>=b*(m-2)+1) then
min:= a*(n-2)+1
else
min:= b*(m-2)+1;
if(a*n-1<=b*m-1) then
max:= a*n-1
else
max:= b*m-1;
if(min > max) then
begin
min:=0;
max:=0;
end;
assign(buf,'classics.out');
rewrite(buf);
writeln(buf, min,' ',max);
close(buf);
end.

