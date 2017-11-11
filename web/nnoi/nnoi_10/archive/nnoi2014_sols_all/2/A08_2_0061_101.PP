{Жарков Илья Николаевич 11 Г класс лицей-интернат "Центр одаренных детей" a08 задача a08_2.pas}
var
 l, r, n, a, b, i, reszn:longint;
 f, g:text;
 res:array[1..200001] of longint;
begin
 assign(f, 'lottery.in');
 reset(f);
 readln(f, l, r, n);
 assign(g, 'lottery.out');
 rewrite(g);
 if n=0 then begin
  writeln(g, '1');
  writeln(g, l);
 end else begin
  i:=1;
  reszn:=0;
  read(f, a);
  if a>l then begin
   inc(reszn);
   res[1]:=a-1;
  end;
  while i<n do begin
   inc(i);
   read(f, b);
   if b>a+2 then begin
    reszn:=reszn+2;
    res[reszn-1]:=a+1;
    res[reszn]:=b-1;
   end else if b=a+2 then begin
    inc(reszn);
    res[reszn]:=a+1;
   end;
   a:=b;
  end;
  if a<r then begin
   inc(reszn);
   res[reszn]:=a+1;
  end;
  writeln(g, reszn);
  for i:=1 to reszn do write(g, res[i], ' ');
 end;
 close(f);
 close(g);
end.