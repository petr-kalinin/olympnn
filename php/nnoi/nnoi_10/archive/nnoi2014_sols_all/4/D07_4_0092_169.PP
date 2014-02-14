{$mode delphi}
{$q+,r+,s+,i+}
type ar=array[1..1002] of longint;
var a,b:ar;
    i,n,m,kol:longint;

procedure swap(var a1,a2:longint);
var a3:longint;
begin
a3:=a1;
a1:=a2;
a2:=a3;
end;

procedure sort(var mas:ar;num:longint);
var i,k,j:longint;
begin
for i:=1 to num-1 do begin
    k:=i;
    for j:=i+1 to num do if mas[j]<mas[k] then k:=j;
    swap(mas[i],mas[k]);
end;
end;


begin
assign(input,'pots.in');
reset(input);
assign(output,'pots.out');
rewrite(output);
read(n,m);
for i:=1 to n do read(a[i]);
for i:=1 to m do read(b[i]);

sort(a,n);
for i:=1 to n do write(a[i],' ');
writeln;
sort(b,m);
for i:=1 to m do write(b[i],' ');
writeln;

kol:=0;
while (n>0) and (m>0) do begin
      while  (n>0) and (a[n]>b[m]) do dec(n);
      if n>0 then begin
         inc(kol);
         dec(m);
         dec(n);
      end
      else break;
end;
write(kol);
close(input);
close(output);
end.
