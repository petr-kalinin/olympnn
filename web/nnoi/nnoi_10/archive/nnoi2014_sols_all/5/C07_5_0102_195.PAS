program powersum;
var n,m,s,otv:longint;
    k:byte;
    a,b:text;
    n1:array[1..10000] of longint;
    m1:array[1..6000] of longint;
    i,p:integer;
begin
assign(a,'powersum.in');
reset(a);
read(a,n,m,k);
for i:=1 to n do
begin
n1[i]:=i;
m1[i]:=i;
end;
for i:=1 to n do
begin
for p:=1 to k-1 do
begin
n1[i]:=n1[i]*m1[i];
end;
end;
for i:=1 to n do
begin
s:=s+n1[i];
end;
otv:=s mod m;
assign(b,'powersum.out');
rewrite(b);
write(b,otv);
close(a);
close(b);
end.