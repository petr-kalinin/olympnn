{Алексей Горьков,
9 "А" класс, лицей №40,
задача 5, FPC 2.6.2}
{$mode delphi}
var so,m,k:int64;
n,i:integer;

function modpow(a,x,y:int64):int64;
var zz,q:integer;
res:int64;
begin
res:=1;
zz:=a mod y;
for q:=1 to x do res:=(res*zz) mod y;
result:=res;
end;
begin
assign(input,'powersum.in');
assign(output,'powersum.out');
reset(input);
rewrite(output);
read(input,n,m,k);
so:=0;
for i:=1 to n do
    so:=(so+modpow(i,k,m))mod m;

write(output,so);
close(input);
close(output);
end.
