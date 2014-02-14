var a:array[1..1000] of integer;
    b:array[1..1000] of integer;
    n,m,k,i,x:integer;
    f,f1:text;
begin
  assign(f,'pots.in');
  assign(f1,'pots.out');
  reset(f);
  rewrite(f1);
  read(f,n,m);
  readln;
  for i:=1 to n do
    read(f,a[i]);
  readln;
  for i:=1 to m do
    read(f,b[i]);
  for k:=1 to n do
    for i:=1 to n-1 do
      if a[i]>a[i+1] then begin x:=a[i]; a[i]:=a[i+1]; a[i+1]:=x; end;
  for k:=1 to m do
    for i:=1 to m-1 do
      if b[i]>b[i+1] then begin x:=b[i]; b[i]:=b[i+1]; b[i+1]:=x; end;
  x:=1;
  i:=1;
  while i<=n do begin
    for k:=x to m do
      if b[k]<a[i] then begin i:=i+1; x:=x+1; end;
    i:=i+1;
  end;
  write(f1,x);
  close(f);
  close(f1);
end.