{Anna Kustareva 11 165 4 fpc}
var n,m,i,j,kol:longint;
    a,b:array[1..1001] of longint;

procedure qsorta(l,r:longint);
var tmp,i,j,t:longint;
begin
i:=l; j:=r;
tmp:=a[(l+r) div 2];
while i<j do begin
        while a[i]<tmp do inc(i);
        while a[j]>tmp do dec(j);
        if i<=j then begin
                t:=a[i]; a[i]:=a[j]; a[j]:=t;
                inc(i); dec(j);
                end;
         end;
if i<r then qsorta(i,r);
if j>l then qsorta(l,j);
end;

procedure qsortb(l,r:longint);
var tmp,i,j,t:longint;
begin
i:=l; j:=r;
tmp:=b[(l+r) div 2];
while i<j do begin
        while b[i]<tmp do inc(i);
        while b[j]>tmp do dec(j);
        if i<=j then begin
                t:=b[i]; b[i]:=b[j]; b[j]:=t;
                inc(i); dec(j);
                end;
           end;
if i<r then qsortb(i,r);
if j>l then qsortb(l,j);
end;

begin
assign(input,'pots.in');
reset(input);
assign(output,'pots.out');
rewrite(output);
readln(n,m);
for i:=1 to n do read(a[i]);
readln;
for j:=1 to m do read(b[j]);
readln;
qsorta(1,n);
qsortb(1,m);
j:=1; i:=1;
kol:=0;
while j<=m do begin
        if a[i]<=b[j] then begin
                inc(i);
                inc(kol);
                end;
        inc(j);
      end;
writeln(kol);
close(output);
end.
