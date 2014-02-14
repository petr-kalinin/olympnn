program pots;
var n,m,i,s,k,j:longint; a,b:array[1..1000] of longint;
begin
read(n,m);
for i:=1 to n do
read(a[i]);
for i:=1 to m do
read(b[i]);
for i:=1 to n-1 do
  begin
  for k:=i+1 to n do
  if a[i]>a[k] then
    begin
    s:=a[i];
    a[i]:=a[k];
    a[k]:=s;
    end;
  end;
for i:=1 to m-1 do
  begin
  for k:=i+1 to m do
  if b[i]>b[k] then
    begin
    s:=b[i];
    b[i]:=b[k];
    b[k]:=s;
    end;
  end;
{writeln(a[1],' ',b[m]);}
if a[1]<=b[m] then
  begin
  k:=1;
  if a[i]<=b[k] then
    begin
    s:=0;
    for i:=1 to n do
      begin
      if a[i]<=b[i] then s:=s+1;
      end;
    writeln(s);
    end
  else
    begin
    {while a[1]<=b[k] do}
    repeat k:=k+1 until a[1]>b[k];
    s:=k-1;
    for k:=1 to m-s do b[k]:=b[k+s];
    for i:=1 to m-s do writeln(b[i],' ');
    for i:=1 to n do
      begin
      if a[i]=b[i] then j:=j+1;
      end;
    writeln(j);
    end;
  end
else writeln('0');
end.