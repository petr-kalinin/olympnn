{Шульпин Степан
 id e09
 лицей 87, 11 класс}
var f,f1:text;
    a,b,n,m,min,max,m1,m2:integer;
begin
  assign(f,'classics.in');
  reset(f);
  read(f,a,b);
  readln(f);
  read(f,n,m);
  assign(f1,'classics.out');
  rewrite(f1);
  m1:=(n-2)*a+1;
  m2:=(m-2)*b+1;
  if m2>m1 then min:=m2 else min:=m1;
  m1:=a*n-1;
  m2:=b*m-1;
  if m2<m1 then max:=m2 else max:=m1;
  if ((a*n) div 10>b*m) or ((b*m) div 10>a*n) then begin min:=0; max:=0; end;
  write(f1,min,' ',max);
  close(f);
  close(f1);
end.