{Доронин Максим id d09}
var buf, bufo:text; a,b,c,l,r,n,i,j:longint; f:array[1..100000000] of longint;
begin
assign(buf, 'lottery.in');
reset(buf);
readln(buf, l,r,n);
assign(bufo, 'lottery.out');
rewrite(bufo);

i:=0;
read(buf, a,b);
if a<>l then begin i:=i+1; f[i]:=a-1; end;
if b-a=2 then begin i:=i+1; f[i]:=a+1; end;
if b-a>2 then begin i:=i+2; f[i-1]:=a+1; f[i]:=b-1; end;
if n>2 then begin
for j:=1 to n-2 do begin
        read(buf, c);
        if c-b=2 then begin i:=i+1; f[i]:=b+1; end;
        if c-b>2 then begin i:=i+2; f[i-1]:=b+1; f[i]:=c-1; end;
        b:=c; end;
        if c<>r then begin i:=i+1; f[i]:=c+1; end;end
   else if b<>r then begin i:=i+1; f[i]:=b+1; end;
writeln(bufo, i);
for j:=1 to i do
write(bufo, f[j],' ');
close(buf); close(bufo);
end.