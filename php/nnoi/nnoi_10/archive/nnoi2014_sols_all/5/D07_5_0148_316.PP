{$mode delphi}
{$o+}
var n,m,k,i,j:longint;
    sum,s:int64;
begin
assign(input,'powersum.in');
reset(input);
assign(output,'powersum.out');
rewrite(output);
read(n,m,k);
sum:=1;
for i:=2 to n do begin
    s:=1;
    for j:=1 to k do begin
        s:=(s*(i mod m)) mod m;
    end;
sum:=(sum+s) mod m;
end;
write(sum);
close(input);
close(output);
end.
