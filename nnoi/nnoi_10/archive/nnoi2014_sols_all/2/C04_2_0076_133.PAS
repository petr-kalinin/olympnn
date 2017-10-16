var l,r,n,s: longint;
i,j: integer;
a,b: array [0..1000] of longint;
begin
assign(input,'lottery.in');
assign(output,'lottery.out');
reset(input);
rewrite(output);
readln(l,r,n);
a[0]:=0;
for i:=1 to n do read(a[i]);
a[i+1]:=0;
s:=0;
j:=1;
for i:=1 to n do begin
if (a[i]-1>=l) and (a[i-1]<a[i]-1) then begin inc(s); b[j]:=a[i]-1; inc(j); end;
if (a[i]+1<=r) and ((a[i+1]>a[i]+1) or (i=n)) then begin inc(s); b[j]:=a[i]+1; inc(j); end;
end;
writeln(s);
for i:=1 to j-1 do write (b[i],' ');
end.