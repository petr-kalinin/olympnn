program z1win;
var f,f2:Text;
var a,b,n,m,k,k2,km,km2:int64;
begin
assign(f,'classics.in');
assign(f2,'classics.out');
reset(f);
rewrite(f2);
read(f,a,b,n,m);
if n > 1 then
k:=(n-2)*a+1
else
k:=1;
if m > 1 then
k2:=(m-2)*b+1
else
k2:=1;
km:=n*a-1;
km2:=m*b-1;
if k < k2 then
k:=k2;
if km2 < km then
km:=km2;
if k <= km then begin
write(f2,k);
write(f2,' ');
write(f2,k2);
end
else
write(f2,'0 0');
close(f);
close(f2);
end.





