program a2; {надежда мизонова 11кл 48шк}
uses crt;
var
f,o:text;
l,r,n,i,j,k,z,z1,z2,z3:longint;
b,c:array[1..100000]of longint;
procedure p(i:longint; var z:longint);
begin
z:=0;
for j:=1 to n do begin
if b[j]=i then z:=z+1;
end;end;
begin
clrscr;
assign(f,'lottery.in');
reset(f);
read(f,l,r,n);
readln(f);
for i:=1 to n do read(f,b[i]);
close(f);
k:=1;
assign(o,'lottery.out');
rewrite(o);
for i:=l to r do begin
p(i-1,z1);
p(i,z2);
p(i+1,z3);
if (z2=0) and ((z1>0) or (z3>0)) then begin
c[k]:=i; k:=k+1; end;end;
write(o,k-1);
writeln(o);
for i:=1 to k-1 do write(o,c[i],' ');
close(o);
readln;
end.

