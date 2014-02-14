{Жарков Илья Николаевич 11 Г класс лицей-интернат "Центр одаренных детей" a08 задача a08_1.pas}
var
 resmin, resmax, a, b, m, n:int64;
 f:text;
begin
 assign(f, 'classics.in');
 reset(f);
 readln(f, a, b);
 readln(f, n, m);
 close(f);
 assign(f, 'classics.out');
 rewrite(f);
 if (n<2) or (m<2) then writeln(f, '0 0')
 else begin
  if a*n<b*m then resmax:=a*n-1 else resmax:=b*m-1;
  if (n-2)*a>(m-2)*b then resmin:=(n-2)*a+1 else resmin:=(m-2)*b+1;
  if resmin>resmax then writeln(f, '0 0') else writeln(f, resmin, ' ', resmax);
 end;
 close(f);
end.
