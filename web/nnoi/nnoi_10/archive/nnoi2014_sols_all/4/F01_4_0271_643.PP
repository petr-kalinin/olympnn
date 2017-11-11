{$mode delphi}
{sorokin arseniy}
var i,j,n,m:integer;
    a,b,c:array[1..2001] of integer;
procedure sortb(l,r:integer);
var middle,pl,pr,ii:integer;
begin
if (r-l)<1 then exit;
middle:=(l+r) div 2;
sortb(l,middle);
sortb(middle+1,r);
pl:=l;
pr:=middle+1;
for ii:=l to r do
             if ((b[pl]<b[pr]) and (pl<middle+1)) or (pr>r) then
                begin c[ii]:=b[pl]; inc(pl); end
             else
                begin c[ii]:=b[pr]; inc(pr); end;
for ii:=l to r do
             b[ii]:=c[ii];
end;
procedure sorta(l,r:integer);
var middle,pl,pr,ii:integer;
begin
if (r-l)<1 then exit;
middle:=(l+r) div 2;
sorta(l,middle);
sorta(middle+1,r);
pl:=l;
pr:=middle+1;
for ii:=l to r do
             if ((a[pl]<a[pr]) and (pl<middle+1)) or (pr>r) then
                begin c[ii]:=a[pl]; inc(pl); end
             else
                begin c[ii]:=a[pr]; inc(pr); end;
for ii:=l to r do
             a[ii]:=c[ii];
end;



begin
assign(input,'pots.in');
assign(output,'pots.out');
reset(input);
rewrite(output);

read(n,m);
for  i:=1 to n do read(a[i]);
sorta(1,n);
for i:=1 to m do read(b[i]);
sortb(1,m);
i:=1;
j:=1;
while (i<=n) and (j<=m) do begin
        if a[i]<=b[j] then inc(i);
        inc(j);
        end;
write(i-1);
end.
