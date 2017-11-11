{$mode delphi}
{$q+,s+,r+,i+}
var a,b,n,m:longint;
    min1,max1,min2,max2:int64;

function min(a1,a2:longint):longint;
begin
if a1>a2 then min:=a2
         else min:=a1;
end;

function max(a1,a2:longint):longint;
begin
if a1>a2 then max:=a1
         else max:=a2;
end;

begin
assign(input,'classics.in');
reset(input);
read(a,b);
read(n,m);
close(input);
assign(output,'classics.out');
rewrite(output);
max1:=n*a-1;
max2:=m*b-1;
min1:=(n-2)*a+1;
min2:=(m-2)*b+1;
if (min1>max2) or (min2>max1) then begin
   write(0,' ',0);
   close(output);
   halt;
end;
write(max(min1,min2),' ',min(max1,max2));
close(output);
end.

