uses crt;
var i,j,k,g,n,m:integer;
a,b: array [1..1000] of integer;
f,f1:text;
begin
clrscr;
assign(f,'pots.in'); assign(f1,'pots.out');
reset(f); rewrite(f1);
read(f,n); readln(f,m);

for i:=1 to n do
read(f,a[i]);
readln(f);
for i:=1 to m do
read(f,b[i]);

for i:= 1 to n-1 do
for j:= i to n do

if a[i]>a[j] then
begin
k:=a[i]; a[i]:=a[j]; a[j]:=k;
end;


g:=0;
for i:=n downto 1 do
for j:=1 to m do
if b[j]>=a[i] then begin
g:=g+1; b[j]:=0; break;
end;
write(f1,g);
close(f); close(f1);
end.





