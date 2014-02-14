uses math;
var
a,b,n,m: int64;
x,y: int64;

begin
readln(a,b);
readln(n,m);

x:=max(1+a*(n-2),1+b*(m-2));
y:=min(a*n-1,b*m-1);

if y<x then writeln('0 0') else writeln(x,' ',y);
end.
