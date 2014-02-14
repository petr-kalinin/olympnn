program a03_1;
var f1,f2:text;
n,m,a,b,min,max,min1,min2,max1,max2:integer;
begin
assign(f1,'classics.in');
reset(f1);
assign(f2,'classics.out');
reset(f2);
read(f1,a,b);
readln(f1);
read(f1,n,m);
if (n=2) or (m=2) then min:=1 else
begin
min1:=a*(n-1)-1;
max1:=a*n -1;
end;
sr:=b+m;
min2:=sr-1;
max2:=sr+2;
if (min1=min2) or (min1=sr) then min:=min1;
if (max1=sr) or (max1=max2) then max:=max1;
write(f2,min,' ',max);
end.