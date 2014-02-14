//Семёнов Юрий 8 класс лицей 87 задача 2
var l,r,n,i1:longint;
    a:array[1..100000] of longint;
    po:array[1..100000] of longint;
procedure sol();
var i,p:longint;
begin
p:=0;
for i:=1 to n do
begin
if (a[i]>l)and((i=1) or (a[i-1]<>a[i]-1)) then begin inc(p);po[p]:=a[i]-1;end;
if (p>1)and(po[p]=po[p-1])then begin po[p]:=0;dec(p);end;
if (a[i]<r)and((i=n) or (a[i+1]<>a[i]+1)) then begin inc(p);po[p]:=a[i]+1;end;
if (p>1)and(po[p]=po[p-1])then begin po[p]:=0;dec(p);end;
end;
writeln(p);
for i:=1 to p do
write(po[i],' ');
end;
begin
assign(input,'lottery.in');reset(input);
assign(output,'lottery.out');rewrite(output);
readln(l,r,n);
if n=0 then begin writeln('1');write(l);halt;end;
for i1:=1 to n do
read(a[i1]);
fillchar(po,sizeof(po),0);
sol();
end.