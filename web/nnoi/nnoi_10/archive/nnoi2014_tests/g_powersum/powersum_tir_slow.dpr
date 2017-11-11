var n, m, k, i, j, s, p: longint;
begin
  assign(input, 'powersum.in'); reset(input);
  assign(output, 'powersum.out'); rewrite(output);
  readln(n, m, k);
  s := 0;
  for i := 1 to n do begin
      p := 1;
      for j := 1 to k do begin
          p := (p * i) mod m;
      end;
      s := (s + p) mod m;
  end;
  writeln(s);
  close(output);
  close(input);
end.
