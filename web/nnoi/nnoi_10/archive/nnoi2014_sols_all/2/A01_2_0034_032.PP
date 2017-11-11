var l,r,n,i: longint;
    a: array [0..100000] of longint;
    pin,pout: text;
Begin
 assign(pin,'lottery.in');
 assign(pout,'lottery.out');
 reset(pin);
 rewrite(pout);
 read(pin,l,r,n);
 for i:=1 to n do read(pin,a[i]);
 for i:=2 to n-1 do
 begin
  if (a[i-1]<>a[i]-1) then write(pout,a[i]-1,' ');
  if (a[i+1]<>a[i]+1) and (a[i+1]<>a[i]+2) then write(pout,a[i]+1,' ');
 end;
 if (a[1]>l) then write(pout,a[1]-1);
 if (a[2]<>a[1]+1) and (a[2]<>a[1]+2) then write(pout,a[1]+1);
 if (a[n-1]<>a[n]-1) then write(pout,a[n]-1);
 if (a[n]<r) then write(pout,a[n]+1);
 close(pin);
 close(pout);
end.