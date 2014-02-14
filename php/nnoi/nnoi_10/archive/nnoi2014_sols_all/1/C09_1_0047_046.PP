//Семёнов Юрий 8 класс лицей 87 задача 1 Free Pascal
var a,b,n,m,max1,max2,min1,min2,tmax,tmin:longint;
begin
assign(input,'classics.in');reset(input);
assign(output,'classics.out');rewrite(output);
read(a,b,n,m);
tmax:=0;tmin:=0;
max1:=a*n-1;max2:=b*m-1;
min1:=1+(n-2)*a;min2:=1+(m-2)*b;
if max1<max2 then
if not (max1<min2) then tmax:=max1;
if max1=max2 then tmax:=max1;
if max1>max2 then
if not (max2<min1) then tmax:=max2;
if min1>min2 then
if not (min1>max2) then tmin:=min1;
if min1=min2 then tmin:=min2;
if min1<min2 then
if not (min2>max1) then tmin:=min2;
write(tmin,' ',tmax);
end.