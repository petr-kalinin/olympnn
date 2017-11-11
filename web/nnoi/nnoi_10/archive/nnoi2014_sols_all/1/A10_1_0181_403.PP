program zadacha1;
uses crt;
var
f,f1:text;
a,b,n,m:real;
p:integer;
begin
assign(f,'classics.in');
reset(f);
read(f,a,b);
readln(f,n,m);
close(f);
readln(n,m);
for P:=1 to n do
begin
a:=(a+2)-n;
end;
for P:=1 to m do
begin
b:=(a+2)-n;
end;
writeln(a,b);
assign(f1,'classics.out');
rewrite(f1);
write(f1,a,' ',b);
close(f1);
readkey;
end.
