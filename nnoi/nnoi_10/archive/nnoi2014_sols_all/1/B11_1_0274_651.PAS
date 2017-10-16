var max,min,s,s1,a,b,m,n:integer;
f,f1:text;
begin
assign(f,'classics.in'); assign(f1,'classics.out');
reset(f); rewrite(f1);
read(f,a); readln(f,b); read(f,n); read(f,m);
s:=a*n;
s1:=b*m;
if abs(s-s1)>abs(a-b) then writeln(0,' ',0)
else begin
if s>s1 then max:=s1 else max:=s;
min:=max-abs(s-s1);
end;
write(f1,min,' ',max);
close(f); close(f1);
end.

