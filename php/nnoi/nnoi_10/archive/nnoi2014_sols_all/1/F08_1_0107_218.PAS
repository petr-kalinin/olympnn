program project1;
var
  n, m, max, min, A, B: Integer;
begin
  readln(a, b);
  readln(n, m);
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
  rewrite(bufo);
  if min <= max then
  writeln(min,' ',max) else writeln('0 0');
end.

