{Доронин Максим id d09}
var buf, bufo:text; a,b,c,l,r,n,i,j:longint; f:array[1..100000] of longint;
begin
assign(buf, 'lottery.in');
reset(buf);
readln(buf, l,r,n);
assign(bufo, 'lottery.out');
rewrite(bufo);
{j:=0;
for i:=1 to n do
read(bud, a[i]);
if a[1]<>l then begin
       j:=j+1; b[j]:=a[i]-1; end;
for i:=1 to n do
      if a[i]=r then break
      else
        if (a[i]+1<>a[i+1]) or (a[i]+2<>a[i+1])
                then begin j:=j+2; b[j-1]:=a[i]+1; b[j]:=a[i+1]-1; end
                else if a[i]+2=a[i+1] then begin j:=j+1; b[j]:=a[i]+1; end;

writeln(j);
for i:=1 to j do
writeln(b[i], ' ');
close(buf); close(bufo); }
i:=0;
read(buf, a,b);
if a<>l then begin i:=i+1; f[i]:=a-1; end;
if b-a=2 then begin i:=i+1; f[i]:=a+1; end;
if b-a>2 then begin i:=i+2; f[i-1]:=a+1; f[i]:=b-1; end;
for j:=1 to n-2 do begin
read(buf, c);
if c-b=2 then begin i:=i+1; f[i]:=b+1; end;
if c-b>2 then begin i:=i+2; f[i-1]:=b+1; f[i]:=c-1; end;
b:=c; end;
writeln(bufo, i);
for j:=1 to i do
write(bufo, f[j]);
close(buf); close(bufo);
end.