var x,n,m,i,j: longint;
a,b: array [1..1000] of longint;
begin
assign(input,'pots.in');
assign(output,'pots.out');
reset(input);
rewrite(output);
read(n,m);
for i:=1 to n do read(a[i]);
for i:=1 to m do read(b[i]);
for j:=1 to n do
for i:=1 to n do
if a[i]>a[i+1] then begin x:=a[i];a[i]:=a[i+1];a[i+1]:=x; end;
for j:=1 to m do
for i:=1 to m do
if b[i]>b[i+1] then begin x:=b[i];b[i]:=b[i+1];b[i+1]:=x; end;
j:=1;
i:=1;
repeat
if a[i]>b[j] then inc(j) else begin inc(j);inc(i);end;
until j=m;
write(i-1);
end.