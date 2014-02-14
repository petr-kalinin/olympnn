//Семёнов Юрий 8 класс лицей 87 задача 5 Free Pascal
var n,m,k:longint;
function pownmod(x,y:longint):int64;
var a:int64;j:longint;
begin
a:=1;
for j:=1 to y do
a:=a*x;
pownmod:=a mod m;
end;
function sol():int64;
var i,r:longint;
begin
r:=0;
for i:=1 to n do
begin
r:=r+pownmod(i,k);
r:=r mod m;
end;
sol:=r;
end;
begin
assign(input,'powersum.in');reset(input);
assign(output,'powersum.out');rewrite(output);
read(n,m,k);
write(sol());
end.