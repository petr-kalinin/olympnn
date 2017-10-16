{$mode delphi}
{sorokin arseniy}
var ans,n,m,k:int64;
    i:integer;
function pow(x,y:int64):int64;
var answer:int64;
    jj:integer;
begin
answer:=1;
for jj:=1 to y do answer:=(answer*x) mod m;
pow:=answer;
end;
begin
assign(input,'powersum.in');
assign(output,'powersum.out');
reset(input);
rewrite(output);
read(n,m,k);
ans:=0;
if n div m<>0 then begin
        for i:=1 to m do ans:=(ans + pow(i mod m,k)) mod m;
        ans:=(ans*(n div m))mod m;
        for i:=(n-n mod m) to n do ans:=(ans + pow(i mod m,k)) mod m;
end
else for i:=1 to n do ans:=(ans + pow(i mod m,k)) mod m;

write(ans);
end.