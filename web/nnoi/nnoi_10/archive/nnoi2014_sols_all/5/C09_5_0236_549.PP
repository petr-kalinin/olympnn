//���񭮢 �਩ 8 ����� ��楩 87 ����� 5 Free Pascal
var n,m,k:longint;
function pownmod(x,y:longint):int64;
var a,a1:int64;j:longint;
begin
a:=1;a1:=x mod m;
for j:=1 to y do
a:=a1*a;
pownmod:=a mod m;
end;
function sol():int64;
var i:longint;r:int64;
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
