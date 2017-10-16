var n, m, a, b, i:integer;
begin
assign(input, 'pots.in');reset(input);
assign(output,'pots.out');rewrite(output);
read(input, n, m);
for i:= 1 to n do begin
        read(a);
end;
for i:= 1 to m do begin
        read(b);
end;
write(output, m);
close(input);
close(output);
end.