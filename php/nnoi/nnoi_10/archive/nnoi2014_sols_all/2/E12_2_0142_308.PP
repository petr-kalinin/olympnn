{ΰ¥αβ —γΰ , 10€, €“ ‹¨ζ¥©ό36, § ¤ η ό1, FreePascal}
program lottery;
var fi, fo: text;
l, r, n, i, k: longint;
a, b: array[1..100000] of longint;
Begin
assign(fi, 'lottery.in');
reset(fi);
read(fi, l, r, n);
for i:=1 to n do read(fi, a[i]);
assign(fo, 'lottery.out');
rewrite(fo);
k:=0;
if a[1]<>l then begin
    inc(k);
    b[k]:=a[1]-1;
end;
for i:=1 to n-1 do begin
        if a[i]+1<>a[i+1] then begin

            inc(k);
            b[k]:=a[i]+1;
            end;
        if a[i]+2<a[i+1] then begin
            inc(k);
            b[k]:=a[i+1]-1
            end;
end;
if a[n]<>r then begin
    inc(k);
    b[k]:=a[n]+1;
end;
writeln(fo, k);
for i:=1 to k-1 do write(fo, b[i], ' ');
write(fo, b[k], ' ');
close(fi);
close(fo);
End.