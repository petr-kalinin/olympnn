const maxn=100000;
var f:text;
    l, r, n, i, pr, ans_len, cur:integer;
    ans:array[1..2 * maxn] of integer;
    
begin
  assign(f,'lottery.in'); reset(f);
  read(f, l, r, n);

  read(f, pr);
  ans_len := 0;
  if pr - 1 >= l then begin
    ans_len := ans_len + 1;
    ans[ans_len] := pr - 1;
  end;
  for i := 1 to n - 1 do begin
    read(f, cur);

    if pr + 1 <> cur then begin
      if pr + 1 <> cur - 1 then begin
        ans_len := ans_len + 1;
        ans[ans_len] := pr + 1;
      end;
      ans_len := ans_len + 1;
      ans[ans_len] := cur - 1;
    end;
    pr := cur;
  end;
  if pr <> r then begin
    ans_len := ans_len + 1;
    ans[ans_len] := pr + 1;
  end;
  close(f);

  assign(f, 'lottery.out'); rewrite(f);
  writeln(f, ans_len);
  for i := 1 to ans_len do begin
    writeln(f, ans[i], ' ');
  end;
  close(f);
end.