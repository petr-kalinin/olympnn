{Алексей Горьков,
9 "А" класс, лицей №40,
задача 1, FPC 2.6.2}
{$mode delphi}
var a,b,n,m,max,max1,max2,min,min1,min2:int64;
begin
assign(input,'classics.in');
assign(output,'classics.out');
reset(input);
rewrite(output);
readln(input,a,b);
read(input,n,m);
max1:=a*n-1;
min1:=a*(n-2)+1;
max2:=b*m-1;
min2:=b*(m-2)+1;
if max1>max2 then max:=max2
             else max:=max1;
if min1<min2 then min:=min2
             else min:=min1;
if min>max then begin
  min:=0;
  max:=0;
  end;

write(output,min,' ',max);
close(input);
close(output);
end.