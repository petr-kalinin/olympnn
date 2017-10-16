program a1;
uses crt;
var
f,o:text;
a,b,m,n,k,l:longint;
begin
assign(f,'classics.in');
assign(o,'classics.out');
reset(f);
read(f,a,b);
readln(f);
read(f,n,m);
close(f);
if a*n>b*m then k:=b*m else k:=a*n;
if a*(n-2)>b*(m-2) then l:=a*(n-2) else l:=b*(m-2);
rewrite(o);
write(o,k+1,' ',l-1);
close(o);
end.