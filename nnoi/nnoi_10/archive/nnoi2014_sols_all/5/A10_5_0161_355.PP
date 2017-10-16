program zadacha1;
uses crt;
var
f,f1:text;
snk,ch:integer;
p,k,m,n,r:integer;
begin
assign(f,'powersum.in');
reset(f);
read(f,n,m,k);
close(f);
for p:=1 to k do
begin
ch:=n*n;
end;
snk:=1;
for P:=1 to n do
snk:=ch+snk;
writeln('snk=',snk);
writeln(snk);
r:=snk div  m;
assign(f1,'powersum.out');
rewrite(f1);
write(f1,r);
close(f1);
readkey;
end.


