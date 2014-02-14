var i,c,n,k,m:integer;
    s,a:longint;
    f,f1:text;
begin
  assign(f,'powersum.in');
  assign(f1,'powersum.out');
  reset(f);
  rewrite(f1);
  read(f,n,m,k);
  s:=0;
  a:=1;
  for i:=1 to n do begin
    a:=i;
    for c:=2 to k do begin
      a:=a*i;
    end;
    s:=s+a;
  end;
  s:=s mod m;
  write(f1,s);
  close(f);
  close(f1);
end.
