const MAX = 1000;
type TArray = array[1..MAX] of integer;
procedure sort(var a:TArray; l,r:integer);
var i, j, m, t:integer;
begin
  i:=l; j:=r; m:=a[l+random(r-l+1)];
  repeat
    while a[i]<m do inc(i);
    while a[j]>m do dec(j);
    if (i<=j) then begin
      t:=a[i]; a[i]:=a[j]; a[j]:=t;
      inc(i); dec(j);
    end;
  until i>j;
  if i<r then sort(a,i,r);
  if l<j then sort(a,l,j);
end;

var
    f: text;
    n, m, i, ans, p_ind, c_ind: integer;
    pots, covers: TArray;
begin
  assign(f, 'pots.in');reset(f);
  readln(f, n, m);
  randseed:=n+m;
  for i := 1 to n do
      read(f, pots[i]);
  for i := 1 to m do
      read(f, covers[i]);
  sort(pots, 1, n);
  sort(covers, 1, m);
  p_ind := 1; c_ind := 1; ans := 0;
  while (p_ind <= n) and (c_ind <= m) do
  begin
    if covers[c_ind] >= pots[p_ind] then
    begin    
      inc(ans);
      inc(p_ind);
      inc(c_ind);
    end
    else begin
      inc(c_ind);
    end;
  end;
  assign(f, 'pots.out'); rewrite(f);
  write(f, ans); close(f);
end.
