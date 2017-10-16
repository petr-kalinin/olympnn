{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
var n,m:integer;
    a,b:array[1..1000] of integer;
    i,j:integer;
    f:text;
    t:integer;
    ans:integer;
    
begin
assign(f,'pots.in');reset(f);
read(f,n,m);
for i:=1 to n do read(f,a[i]);
for i:=1 to m do read(f,b[i]);
for i:=1 to n do
    for j:=2 to n do
        if a[j-1]>a[j] then begin
           t:=a[j-1];
           a[j-1]:=a[j];
           a[j]:=t;
        end;
for i:=1 to m do
    for j:=2 to m do
        if b[j-1]>b[j] then begin
           t:=b[j-1];
           b[j-1]:=b[j];
           b[j]:=t;
        end;
j:=1;
for i:=1 to n do begin
    while (j<=m)and(b[j]<a[i]) do
          inc(j);
    if j>m then break;
    inc(ans);
    inc(j);
end;
assign(f,'pots.out');rewrite(f);
writeln(f,ans);
close(f);
end.