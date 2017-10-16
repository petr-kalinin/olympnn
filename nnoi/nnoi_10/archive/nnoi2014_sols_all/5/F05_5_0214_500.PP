{Ильичев Алексей}
program bestest;
var f,f2:Text;
var n,m,k,i,u,res,save:cardinal;
var a: array of int64;
begin
assign(f,'powersum.in');
assign(f2,'powersum.out');
reset(f);
rewrite(f2);
res:=0;
read(f,n,m,k);
setlength(a,n+1);
for i:=1 to n do begin
a[i]:=i mod m;
save:=a[i];
for u:=2 to k do begin
a[i]:=(a[i]*save) mod m;
end;
end;
for k:=1 to n do
res:=(res+a[k]) mod m;
write(f2,res);
close(f);
close(f2);
end.