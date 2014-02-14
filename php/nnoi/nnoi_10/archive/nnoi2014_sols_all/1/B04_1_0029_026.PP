uses math;
var
a,b,n,m: int64;
x,y: int64;

begin
assign(input,'classics.in');
reset(input);
assign(output,'classics.out');
rewrite(output);

readln(a,b);
readln(n,m);

x:=max(1+a*(n-2),1+b*(m-2));
y:=min(a*n-1,b*m-1);

if (y<x) or (n=1) or (m=1) then writeln('0 0') else writeln(x,' ',y);

close(input);
close(output);
end.
