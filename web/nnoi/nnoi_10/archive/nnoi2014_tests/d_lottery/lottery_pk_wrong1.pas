{
  Задача: железнодорожная лотерея
  Решение: Петр Калинин
  Неправильное решение: может выводить лишнее число в начале
}
{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
var f:text;
    l,r:integer;
    n:integer;
    a:integer;
    prev:integer;
    nans:integer;
    ans:array[1..200001] of integer;
    i:integer;
    
procedure addans(x:integer);
begin
inc(nans);
ans[nans]:=x;
end;
    
begin
assign(f,'lottery.in');reset(f);
read(f,l,r,n);
prev:=l-1;
for i:=1 to n do begin
    read(f,a);
    if a<>prev+1 then begin
        if (prev<>a-2) then addans(prev+1);
        addans(a-1);
    end;
    prev:=a;
end;
close(f);
if prev<r then
    addans(prev+1);
assign(f,'lottery.out');rewrite(f);
writeln(f,nans);
for i:=1 to nans do write(f,ans[i],' ');
close(f);
end.
        