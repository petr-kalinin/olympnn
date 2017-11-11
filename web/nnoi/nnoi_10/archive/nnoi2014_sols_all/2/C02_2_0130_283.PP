var t:text; a,b:array of integer;  l,l1,r1,r,n,n1,i:word;

begin
assign(t,'lottery.in');
reset(t);
  readln(t,l,r,n);  setlength(a,n);
  for i:=0 to n-1 do
    read(t,a[i]);
close(t);
assign(t,'lottery.out');
rewrite(t);
setlength(b,n*2);
  n1:=n*2;
  if a[0]>l then
    begin
      b[0]:=a[0]-1;
      inc(n1);
      l1:=0;
    end
  else l1:=1;
  for i := 0 to n-1 do begin
    if (i>0) and (a[i]>l) and (a[i-1]<>a[i]-1) then
    b[i*2+1]:=a[i]-1 else dec(n1);
    if (i<n-1) and (a[i]<r) and (a[i+1]<>a[i]+1) then
    b[i*2+2]:=a[i]+1 else dec(n1);
  end;
  if a[n-1]<r then
    begin
      b[n*2-1]:=a[n-1]+1;
      inc(n1);
      r1:=n*2-1;
    end
  else r1:=n*2-2;
  writeln(t,n1);
  for i:=0 to 2*n-1 do
    if b[i]<>0 then write(t,b[i],' ');
close(t);
end.


