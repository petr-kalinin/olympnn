{Саша Дроздова, 8, Лицей №165,free pascal}
var a:array[0..100001]of longint;
    n,i,j,k,p,l,r:longint;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
readln(l,r,n);
for i:=1 to n do
    read(a[i]);
k:=0;
if n=1 then begin
   if a[1]>l then inc(k);
   if a[1]<r then inc(k);
   writeln(k);
   if a[1]>l then write(a[1]-1,' ');
   if a[1]<r then write(a[1]+1,' ');
halt;
end;
for j:=1 to n do begin
    if (j>1)and(j<n) then begin
       if a[j]-a[j-1]>2 then inc(k);
       if a[j+1]-a[j]>1 then inc(k);
       end;
    if j=1 then begin
       if a[j]>l then inc(k);
       if a[j+1]-a[j]>1 then inc(k);
    end;
    if j=n then begin
       if a[j]<r then inc(k);
       if a[j]-a[j-1]>2 then inc(k);
    end;
end;
writeln(k);
for j:=1 to n do begin
    if (j>1)and(j<n) then begin
       if a[j]-a[j-1]>2 then write(a[j]-1,' ');
       if a[j+1]-a[j]>1 then write(a[j]+1,' ');
       end;
    if j=1 then begin
       if a[j]>l then write(a[j]-1,' ');
       if a[j+1]-a[j]>1 then write(a[j]+1,' ');
    end;
    if j=n then begin
       if a[j]-a[j-1]>2 then write(a[j]-1,' ');
       if a[j]<r then write(a[j]+1,' ');
    end;
end;

close(input);
close(output);
end.
