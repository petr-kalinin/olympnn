{Доронин Максим id d09}
var buf, bufo:text; n,m,x,i,j,s,k,amin,bmin:longint;
a:array[1..1000] of integer;
b:array[1..1000] of integer;
begin
assign(buf, 'pots.in');
reset(buf);
readln(buf, n,m);
assign(bufo, 'pots.out');
rewrite(bufo);
amin:=1001;
bmin:=1001;

for i:=1 to n do
read(buf, a[i]);
readln(buf);
for i:=1 to m do
read(buf, b[i]);

if m>=n then s:=n else s:=m;

for x:=1 to s do begin
for i:=1 to n do
if amin>a[i] then if a[i]<>0 then begin amin:=a[i]; a[i]:=0; end;
for i:=1 to m do
if (bmin>b[i]) and (b[i]>=amin) then begin bmin:=b[i]; b[i]:=0; k:=1; j:=j+1; end;
if k<>1 then begin write(bufo, j); break; end;
k:=0;
end;
end.







