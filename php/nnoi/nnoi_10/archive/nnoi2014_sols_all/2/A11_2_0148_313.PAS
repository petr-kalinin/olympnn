program a11_lottery;
uses crt;
var
d:file of integer;
f:file of integer;
r,l,k,t,i,j,n: integer;
a:array [1..1000] of integer;
b:array [1..1000] of integer;
begin
assign(d,'lottery.in');
assign(f,'lottery.out');
reset(d);
read(d,l,r,n);
for i:=1 to n
do begin read(d,a[i]);
b[2*i-1]:=a[i]-1;
b[2*i]:=a[i]+1
end;
k:=2*n;
if a[1]=l then k:=k-1;
for i:=2 to n-1 do
begin if a[i]-a[i+1]=2 then k:=k-1;
if a[i]-a[i+1]=1 then k:=k-2
end;
if a[n]=r then k:=k-1;
for i:=1 to 2*n do begin
for t:=1 to n do
if (b[i]=b[i+1])or(b[i]<l)or(b[i]>r)or(b[i]=a[k]) then for j:=i to 2*n do b[j]:=b[j+1] end;
rewrite (f);
write (f,k);
i:=2;
if k>0 then begin writeln(f,b[1]);
repeat write(f,b[i],' ')
until b[i+1]=0;
i:=i+1
end;
close(d);
close(f)
end.