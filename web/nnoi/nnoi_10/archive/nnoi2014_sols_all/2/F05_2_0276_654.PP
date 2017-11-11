{Ильичев Алексей}
program lot;
var f,f2:Text;
var l,r:int64;
var n,i:cardinal;
var k:longint;
var a: array of int64;
begin
assign(f,'lottery.in');
assign(f2,'lottery.out');
reset(f);
rewrite(f2);
k:=0;
read(f,l,r,n);
setlength(a,n+1);
if n > 0 then begin
for i:=1 to n do
read(f,a[i]);
if l=a[1] then
k:=k-1;
if r=a[n] then
k:=k-1;
for i:=1 to n-1 do
if a[i]+1=a[i+1] then
k:=k-2;
K:=k+n*2;
write(f2,k);
writeln(f2);
if a[1] <> l then begin
write(f2,a[1]-1);
write(f2,' ');
end;
for i:=1 to n-1 do
if a[i]+1 <> a[i+1] then begin
write(f2,a[i]+1);
write(f2,' ');
if a[i]+2 <> a[i+1] then begin
write(f2,a[i+1]-1);
write(f2,' ');
end;
end;
if a[n] <> r then
write(f2,a[n]+1);
end
else begin
write(f2,'1');
writeln(f2);
write(f2,l);
end;
close(f);
close(f2);
end.


