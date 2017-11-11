{Шульпин Степан
 id e09
 лицей 87, 11 класс}
var f,f1:text;
    a:array[1..100000] of integer;
    l,r,n,i,k:integer;
begin
  assign(f,'lottery.in');
  reset(f);
  read(f,l,r,n);
  readln;
  for i:=1 to n do
  read(f,a[i]);
  assign(f1,'lottery.out');
  rewrite(f1);
  k:=0;
  for i:=1 to n do begin
     if (i=1) and ((a[i]-1)<>a[i]) and ((a[i]-1)>=l) then k:=k+1;
     if (i>=2) and ((a[i]-1)<>a[i-1]) and ((a[i]-1)<>a[i]) and ((a[i]-1)>=l) then k:=k+1;
     if (i<=n-1) and ((a[i]+1)<>a[i+1]) and ((a[i]+1)<>a[i]) and ((a[i]+1)<=r) then k:=k+1;
     if (i=n) and ((a[i]+1)<>a[i]) and ((a[i]+1)<=r) then k:=k+1;
  end;
  writeln(f1,k);
 { for i:=1 to n do begin
     if (i=1) and ((a[i]-1)<>a[i]) and ((a[i]-1)>=l) then write(f1,a[i]-1,' ');
     if (i>=2) and ((a[i]-1)<>a[i-1]) and ((a[i]-1)<>a[i]) and ((a[i]-1)>=l) then write(f1,a[i]-1,' ');
     if (i<=n-1) and ((a[i]+1)<>a[i+1]) and ((a[i]+1)<>a[i]) and ((a[i]+1)<=r) then write(f1,a[i]+1,' ');
     if (i=n) and ((a[i]+1)<>a[i]) and ((a[i]+1)<=r) then write(f1,a[i]+1,' ');
  end; }
  close(f);
  close(f1);
end.
