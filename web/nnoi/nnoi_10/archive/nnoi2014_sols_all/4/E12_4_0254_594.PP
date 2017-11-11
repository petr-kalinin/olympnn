{ΰ¥αβ —γΰ , 10€, €“ ‹¨ζ¥©ό36, § ¤ η ό4, FreePascal}
program pots;
var fi, fo: text;
n, m, i, k, j: integer;
a, b: array[0..1000] of integer;

procedure sort(var a: array of integer; n: integer);
var i, j, x: integer;
begin
    for i:=n-1 downto 1 do
        for j:=1 to i do begin
            if a[j]>a[j+1] then begin
                x:=a[j+1];
                a[j+1]:=a[j];
                a[j]:=x;
            end;
        end;
end;

procedure del(x: integer);
var i, c: integer;
begin
        for i:=x to m do begin
            c:=b[i];
            b[i]:=b[i+1];
            b[i+1]:=c;
        end;
        dec(m);
end;
Begin
assign(fi, 'pots.in');
reset(fi);
assign(fo, 'pots.out');
rewrite(fo);
read(fi, n, m);
for i:=1 to n do read(fi, a[i]);
for i:=1 to n do write(a[i], ' ');
writeln;
for i:=1 to m do read(fi, b[i]);
for i:=1 to m do write(b[i], ' ');
writeln;
sort(a, n);
sort(a, n);
sort(b, m);
for i:=1 to n do write(a[i], ' ');
writeln;
for i:=1 to m do write(b[i], ' ');
writeln;
for i:=n downto 1 do begin
    if b[m]>=a[i] then begin
        inc(k);
        j:=m;
        while (b[j]>=a[i]) and (j>0) do dec(j);
        del(j+1);
    end;
end;
writeln(fo, k);
close(fi);
close(fo);
End.
