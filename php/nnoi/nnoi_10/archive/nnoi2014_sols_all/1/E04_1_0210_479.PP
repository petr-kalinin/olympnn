var a,b,n,m,mink,minm,min,maxk,maxm,max:int64;
begin
assign(input,'classics.in'); reset(input);
assign(output,'classics.out'); rewrite(output);
readln(a,b);
readln(n,m);
if n=1 then mink:=1
else mink:=(n-2)*a+1;
if m=1 then minm:=1
else minm:=(m-2)*b+1;
if mink>minm then min:=mink
else min:=minm;
maxk:=a*n-1;
maxm:=b*m-1;
if maxk<maxm then max:=maxk
else max:=maxm;
if (mink<maxm) and (minm<maxk) then write(min,' ',max)
else write('0 0');
end.
