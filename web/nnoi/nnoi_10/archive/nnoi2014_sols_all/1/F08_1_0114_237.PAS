program project1;
var
  n, m, max, min, A, B: Integer;
  buf, bufo: text;
begin
  assign(buf, 'classics.in');
  reset(buf);
  read(buf, a, b);
  read(buf, n, m);
  max := A*N-1;
  if max > B*M-1 then max := b*m-1;
  if (a /n > b/m) then
  begin
    min := 1+(M-1)*B;
    if a > b then min := min - b else min := min - a;
  end else
  begin
    min := 1+(n-1)*A;
    if a > b then min := min - b else min := min - a;
  end;
  assign(bufo, 'classics.out');
  rewrite(bufo);
  if min <= max then
  writeln(bufo,min,' ',max) else writeln(bufo, '0 0');
  close(buf);
  close(bufo);
end.

