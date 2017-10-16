var
n,m,i,j,c:longint;
a,b:array[1..1001] of word;
begin
assign (input,'pots.in');
reset (input);
assign (output,'pots.out');
rewrite (output);
read(n,m);
for i:=1 to n do
read(a[i]);
for i:=1 to m do
read(b[i]);
for j:=1 to n-1 do
for i:=1 to n-1 do
if a[i]>a[i+1] then
begin
c:=a[i];
a[i]:=a[i+1];
a[i+1]:=c
end;
for j:=1 to m-1 do
for i:=1 to m-1 do
if b[i]>b[i+1] then
begin
c:=b[i];
b[i]:=b[i+1];
b[i+1]:=c
end;


c:=0;
while (a[1]>0) and (b[1]>0)  do
begin
if b[1]>=a[1] then
begin
c:=c+1;
for i:=1 to n do
a[i]:=a[i+1];
end;
for i:=1 to m do
b[i]:=b[i+1]
end;
writeln(c)
end.
