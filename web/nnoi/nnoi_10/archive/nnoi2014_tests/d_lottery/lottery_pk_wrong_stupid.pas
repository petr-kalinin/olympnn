{
  Задача: железнодорожная лотерея
  Решение: Петр Калинин
  Неверное решение: просто для каждого числа выводит +-1
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
    ans:array[1..200000] of integer;
    i:integer;
    
procedure addans(x:integer);
begin
inc(nans);
ans[nans]:=x;
end;
    
begin
assign(f,'lottery.in');reset(f);
read(f,l,r,n);
for i:=1 to n do begin
    read(f,a);
    addans(a-1);
    addans(a+1);
end;
close(f);
assign(f,'lottery.out');rewrite(f);
writeln(f,nans);
for i:=1 to nans do write(f,ans[i],' ');
close(f);
end.
        