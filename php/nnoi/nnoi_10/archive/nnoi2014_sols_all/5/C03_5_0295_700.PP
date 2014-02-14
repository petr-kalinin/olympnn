program a5;   {мизонова надежда 11кл 48шк}
uses crt;
var
i,j,u,z,s,m,n,k:longint;
f,o:text;
procedure x(u:longint; var j:longint);
begin
j:=1;
for i:=1 to k do j:=j*u;
end;
begin
clrscr;
assign(f,'powersum.in');
assign(o,'powersum.out');
reset(f);
read(f,n,m,k);
for i:=1 to n do begin
x(i,j);
s:=s+j;end;
z:=s mod m;
close(f);
rewrite(o);
write(o,z);
close(o);
end.


