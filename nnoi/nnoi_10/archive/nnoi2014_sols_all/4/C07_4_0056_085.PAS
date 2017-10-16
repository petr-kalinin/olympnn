program pots;
var a,b:text;
    n,m:longint;
    n1,m1:array[1..1000] of integer;
    i,s,k,x:longint;
begin
assign(a,'pots.in');
reset(a);
read(a,n,m);
for i:=1 to n do
begin
read(a,n1[i]);
end;
for i:=1 to m do
begin
read(a,m1[i]);
end;
for i:=1 to n do
begin
for k:=1 to m do
begin
if n1[i]<=m1[k] then x:=x+1;
end;
if x>=1 then s:=s+1;
x:=0;
end;
assign(b,'pots.out');
rewrite(b);
write(b,s);
close(a);
close(b);
end.