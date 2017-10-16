uses crt;
var n,m,k,h,i,j,so,sk:integer;
f,f1:text;
begin
assign(f,'powersum.in'); assign(f1,'powersum.out');
reset(f); rewrite(f1);
read(f,n,m,k);  so:=0; sk:=0;
for i:=1 to n do begin
h:=i mod m;
for j:=1 to k-1 do
h:=(h*i) mod m;

so:=(so+h); sk:=so+sk;
end;
write(f1,(sk) mod m);
close(f); close(f1);
end.

