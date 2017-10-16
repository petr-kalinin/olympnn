var f,f1:text;
k,i:integer;
m,n,s,p:int64;
begin
assign(f,'powersum.in');
reset(f);
readln(f,n,m,k);

s:=0;

for i:=1 to n do
        s:=s+trunc(exp(ln(i)*k));

p:=s mod m;


assign(f1,'powersum.out');
rewrite(f1);
write(f1,p);
close(f);
close(f1);

end.
