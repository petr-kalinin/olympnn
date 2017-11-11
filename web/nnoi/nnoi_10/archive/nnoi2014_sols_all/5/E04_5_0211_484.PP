uses crt;
var n,m,k,s,i:int64;

function step(i,k:int64):int64;
var j,st:int64;
begin
st:=1;
j:=0;
repeat
 inc(j);
 st:=st*i;
until j=k;
step:=st;
end;

begin
assign(input,'powersum.in'); reset(input);
assign(output,'powersum.out'); rewrite(output);
read(n,m,k);
s:=0;
i:=0;
repeat
 inc(i);
 s:=s+step(i,k);
until i=n;
write(s mod m);
end.