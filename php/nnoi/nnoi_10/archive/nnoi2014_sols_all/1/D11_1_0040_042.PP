{€à­ ãâ®¢ €«¥ªá¥©, 11, ‹¨æ¥© ü82, ‡€„€—€ ü1, Free Pascal}
var a,b,n,m,min1,min2,max1,max2,min,max:longint;
begin
assign(input,'classics.in'); reset(input);
assign(output,'classics.out'); rewrite(output);
readln(input,a,b);
readln(input,n,m);
min1:=1+a*(n-2);
min2:=1+b*(m-2);
max1:=a*n-1;
max2:=b*m-1;
if ((min1>max2) or (min2>max1)) then writeln(output,'0 0') else begin
if min1<=min2 then min:=min2 else min:=min1;
if max1<=max2 then max:=max1 else max:=max2;
writeln(output,min,' ',max); end;
readln;
end.
