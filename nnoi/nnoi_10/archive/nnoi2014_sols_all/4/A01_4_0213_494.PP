//Гежес Петр 11Ф класс Лицей 40 4-FreePascal
Var n,m,i,j,f: longint;
    a,b,an: array [0..1000] of longint;
    pin,pout: text;

procedure sort(x,y: longint);
var i,j,k,m: longint;
begin
 if (x=y) then exit;
 m:=(x+y) div 2;
 sort(x,m);
 sort(m+1,y);
 j:=m+1;
 i:=x;
 for k:=x to y do
 begin
  if ((a[i]>a[j]) or (j>y)) and (i<=m) then
  begin
   an[k]:=a[i];
   inc(i);
  end
  else begin
   an[k]:=a[j];
   inc(j);
  end;
 end;
 for k:=x to y do a[k]:=an[k];
end;
Begin
 assign(pin,'pots.in');
 assign(pout,'pots.out');
 reset(pin);
 rewrite(pout);
 read(pin,n);
 read(pin,m);
 for i:=1 to n do read(pin,a[i]);
 sort(1,n);
 for i:=1 to n do b[i]:=a[i];
 for i:=1 to m do read(pin,a[i]);
 sort(1,m);
 i:=1;
 j:=1;
 while (a[i]<>0) and (b[j]<>0) do
 begin
  if (a[i]>=b[j]) then
  begin
   inc(f);
   inc(i);
   inc(j);
  end
  else inc(j);
 end;
 write(pout,f);
 close(pin);
 close(pout);
end.
