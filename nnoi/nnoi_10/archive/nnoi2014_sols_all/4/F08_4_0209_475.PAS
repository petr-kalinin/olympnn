program d;
var
  a, b: array[1..1000] of integer;
  n, m, i,j, sum: Integer;
  buf, bufo: text;

procedure swap(var a, b: Integer);
var
  c: Integer;
begin
  c := a;
  a := b;
  b := c;
end;

begin
     assign(buf, 'pots.in');
     reset(buf);
     read(buf, n, m);
     for i := 1 to N do
       read(buf, a[i]);
     for i := 1 to M do
       read(buf, b[i]);
     assign(bufo, 'pots.out');
     rewrite(bufo);
     for i := 1 to N do
       for j := i+1 to n do
         if(a[j] < a[i]) then swap(a[j], a[i]);
     for i := 1 to M do
       for j := i+1 to M do
         if(b[j] < b[i]) then swap(b[j], b[i]);
     i := N;
     while(i > 0) do
     begin
       if a[i] > b[m] then
       begin
         a[i] := 0;
         Dec(n);
       end;
       Dec(i);
     end;
     sum := 0;
     for i := N downto 1 do
     begin
       for j := M downto 1 do
         if (a[i] <= b[j])and(b[j] <> 0) then
         begin
           Inc(sum);
           b[j] := 0;
           break;
         end;
     end;
     writeln(bufo, sum);
     close(buf);
     close(bufo);
end.