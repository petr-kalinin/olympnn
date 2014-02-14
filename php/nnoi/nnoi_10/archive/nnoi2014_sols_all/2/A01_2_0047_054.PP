var l,r,n,i,f: longint;
    a,m: array [0..100000] of longint;
    pin,pout: text;
procedure wo(a: longint);
begin
 inc(f);
 m[f]:=a;
end;
Begin
 assign(pin,'lottery.in');
 assign(pout,'lottery.out');
 reset(pin);
 rewrite(pout);
 read(pin,l,r,n);
 for i:=1 to n do read(pin,a[i]);
 if (a[1]>l) then wo(a[1]-1);
 if (a[2]<>a[1]+1) and (a[2]<>a[1]+2) then wo(a[1]+1);
 for i:=2 to n-1 do
 begin
  if (a[i-1]<>a[i]-1) then wo(a[i]-1);
  if (a[i+1]<>a[i]+1) and (a[i+1]<>a[i]+2) then wo(a[i]+1);
 end;
 if (a[n-1]<>a[n]-1) then wo(a[n]-1);
 if (a[n]<r) then wo(a[n]+1);
 writeln(pout,f);
 for i:=1 to f do write(pout,m[i],' ');
 close(pin);
 close(pout);
end.