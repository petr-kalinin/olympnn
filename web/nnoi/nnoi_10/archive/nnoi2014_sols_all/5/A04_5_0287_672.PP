{Саша Дроздова, 8, Лицей №165,free pascal}
var n,m,ko,k1,l:int64;
    i,k,j:longint;
begin
assign(input,'powersum.in'); reset(input);
assign(output,'powersum.out'); rewrite(output);
readln(n,m,k);
ko:=0;
l:=n div m;
for i:=1 to m-1 do begin
    k1:=1;
    for j:=1 to k do
        k1:=(k1*i)mod m;
    if n mod m>=i then inc(ko,k1);
    ko:=(ko+l*k1) mod m;
end;
writeln(ko);
close(input);
close(output);
end.
