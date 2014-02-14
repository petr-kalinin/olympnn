{Anna Kustareva 11 165 5 fpc}
var sum:int64;
    n,m,k,i:longint;

function st(a,k:longint):int64;
var tmp:int64;
    i:integer;
begin
tmp:=1;
for i:=1 to k do tmp:=tmp*a mod m;
st:=tmp;
end;

begin
assign(input,'powersum.in');
reset(input);
assign(output,'powersum.out');
rewrite(output);
readln(n,m,k);
for i:=1 to n do
    sum:=(sum+st(i,k)) mod m;
writeln(sum);
close(output);
end.