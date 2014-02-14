{$mode delphi}
{$o+}
var a,ans:array[0..110000] of longint;
    l,r,n,i,kol:longint;
begin
assign(input,'lottery.in');
reset(input);
assign(output,'lottery.out');
rewrite(output);
read(l,r,n);
if n=0 then begin
   writeln(1);
   write(l);
   halt;
end;
for i:=1 to n do read(a[i]);
a[0]:=l-1;
a[n+1]:=r+1;
for i:=1 to n do begin
    if (l<a[i]) and (a[i-1]<>a[i]-1) and (ans[kol]<a[i]-1) then begin
       inc(kol);
       ans[kol]:=a[i]-1;
    end;
    if (a[i]<r) and (a[i+1]<>a[i]+1) then begin
       inc(kol);
       ans[kol]:=a[i]+1;
    end;
end;

writeln(kol);
for i:=1 to kol do write(ans[i],' ');
close(input);
close(output);
end.
