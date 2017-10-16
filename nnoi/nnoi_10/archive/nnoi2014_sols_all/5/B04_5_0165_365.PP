var
n,m,k: longint;
i: longint;
sum: int64;

function f(a,i: int64): int64;
var x: int64;
begin
if i=0 then begin f:=1; exit; end;

x:=f(a,i div 2);
if i mod 2=0 then f:=sqr(int64(x)) mod m
             else f:=(sqr(int64(x)) mod m)*a;
end;


begin
assign(input,'powersum.in');
reset(input);
assign(output,'powersum.out');
rewrite(output);

readln(n,m,k);
sum:=0;

for i:=1 to n do sum:=(sum+f(i,k)) mod m;

writeln(sum);
close(input);
close(output);
end.
