{Sozinov Daniil, 11, lyceum 87, n4, borland pascal}
var a,n,m:array [1..1000] of integer;
ka,kr,i,cons,j,count:integer;
procedure qsort (l,r:integer);
var i,j,x,tmp:integer;
begin
     i:=l;
     j:=r;
     x:=a[(l+r) div 2];
     repeat
           while (a[i]<x) do inc(i);
           while (a[j]>x) do dec(j);
           if i<=j then begin
                        tmp:=a[i];
                        a[i]:=a[j];
                        a[j]:=tmp;
                        inc(i);
                        dec(j);
                        end;
     until (i>j);
     if l<j then qsort (l,j);
     if i<r then qsort (i,r);
end;
begin
assign (input, 'pots.in');
assign (output, 'pots.out');
reset (input);
rewrite (output);
read (ka,kr);
count:=0;
for i:=1 to ka do read (a[i]);
qsort (1,ka);
for i:=1 to ka do n[i]:=a[i];
for i:=1 to kr do read (a[i]);
qsort (1,kr);
for i:=1 to kr do m[i]:=a[i];
cons:=ka;
j:=1;
for i:=kr downto 1 do
begin
     for j:=1 to cons do
         if n[j]>m[i] then break;
     if n[j]<=m[i] then begin
                        inc(count);
                        cons:=j-1;
                        end
     else if n[j-1]<=m[i] then begin
                               inc(count);
                               cons:=j-2;
                               end
     else cons:=j-1;
     if cons=0 then break;
end;
write (count);
end.

