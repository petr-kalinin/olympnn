{Доронин Максим id d09}
var buf, bufo:text; min1,min2,min,max1,max2,max,a,b,n,m:longint;
begin
assign(buf, 'classics.in');
reset(buf);
readln(buf, a,b,n,m);
assign(bufo, 'classics.out');
rewrite(bufo);

min1:=1+(n-2)*a;
min2:=1+(m-2)*b;
max1:=a*n-1;
max2:=b*m-1;
if (min1>=min2) and (min1<=max2) then min:=min1;
if (min1<=min2) and (min2<=max1) then min:=min2;
if (max1>=max2) and (max2>=min1) then max:=max2;
if (max1<=max2) and (max1>=min2) then max:=max1;
write(bufo,min, ' ', max);
close(buf); close(bufo);
end.