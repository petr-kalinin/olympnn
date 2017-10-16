{ΰ¥αβ —γΰ , 10€, €“ ‹¨ζ¥©ό36, § ¤ η ό1, FreePascal}
program classics;
var fi, fo: text;
a, b, n, m: longint;
min1, min2, max1, max2: int64;
Begin
assign(fi, 'classics.in');
reset(fi);
read(fi, a, b, n, m);
assign(fo, 'classics.out');
rewrite(fo);
max1:=a*n-1;
max2:=b*m-1;
min1:=(n-2)*a+1;
min2:=(m-2)*b+1;
if (min1>max2) or (min2>max1) then writeln(fo, '0 0')
else begin
        if min1>min2 then write(fo, min1, ' ')
        else write(fo, min2, ' ');
        if max1<max2 then write(fo, max1)
        else write(fo, max2);
     end;
close(fi);
close(fo);
End.