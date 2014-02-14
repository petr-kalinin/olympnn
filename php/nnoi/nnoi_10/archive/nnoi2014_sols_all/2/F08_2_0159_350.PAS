program lottery;
type
 mas = array[1..10000] of Integer;
var
  L, R, N, i, k, j: Integer;
  a, b: mas;
  buf, bufo: text;

function check(l: Integer; var a: mas): Boolean;
var
  i: Integer;
begin
  if j <> 1 then
  for i := j-1 downto 1 do
    if a[i] = l then
    begin
      check := false;
      exit;
    end;
  check := true;
end;

begin
  assign(buf, 'lottery.in');
  reset(buf);
  read(buf, L, R, N);
  j := 1;
  for i := 1 to N do
  begin
    read(buf, a[i]);
  end;
  for i := 1 to N do
  begin
    if (a[i]-1 > L)and(check(a[i]-1, a)) and(check(a[i]-1, b)) then
    begin
      b[j] := a[i]-1;
      Inc(j);
    end;
    if (a[i]+1 < R)and(check(a[i]+1, a)) and(check(a[i]+1, b)) then
    begin
      b[j] := a[i]+1;
      Inc(j);
    end;
  end;
  assign(bufo, 'lottery.out');
  rewrite(bufo);
  writeln(bufo, j-1);
  for i := 1 to j-1 do
      write(bufo, b[i], ' ');
  close(buf);
  close(bufo);
end.