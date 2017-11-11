var a,b,n,m,max,min:int64;
begin
assign(input,'classics.in'); reset(input);
assign(output,'classics.out'); rewrite(output);
readln(a,b);
readln(n,m);
min:=1+(n-2)*a;
if min<(1+(m-2)*b) then min:=1+(m-2)*b;
max:=n*a-1;
if max>(m*b-1) then max:=m*b-1;
if max<min then write(0,' ',0)
           else write(min,' ',max);
close(output);
close(input);
end.
