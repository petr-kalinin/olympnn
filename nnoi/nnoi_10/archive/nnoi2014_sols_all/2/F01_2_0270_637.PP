{$mode delphi}
{sorokin arseniy}
var n,l,r,i,j:integer;
    a,b:array[0..100002] of integer;
begin
assign(input,'lottery.in');
assign(output,'lottery.out');
reset(input);
rewrite(output);
read(l,r,n);
a[0]:=-11;
a[n+1]:=r+11;
for i:=1 to n do begin
        read(a[i]);
end;
j:=0;
for i:=1 to n do begin
         if (a[i]<>l) and (a[i-1]<>a[i]-2) and (a[i-1]<>a[i]-1) then
                          begin
                          inc(j);
                          b[j]:=a[i]-1;
                          end;
         if (a[i]<>r) and (a[i+1]<>a[i]+1) then
                          begin
                          inc(j);
                          b[j]:=a[i]+1;
                          end;
end;
if n=0 then begin j:=1; b[1]:=l; end;
writeln(j);
for i:=1 to j do write(b[i],' ');
end.
