{Жарков Илья Николаевич 11 Г класс лицей-интернат "Центр одаренных детей" a08 задача a08_5.pas}
var
 n, m, k, i, j:longint;
 ost, nowost, c:int64;
 f:text;
begin
 assign(f, 'powersum.in');
 reset(f);
 readln(f, n, m, k);
 close(f);
 begin
  nowost:=0;
  for i:=1 to n do begin
   ost:=i mod m;
   j:=k;
   c:=1;
   while j>1 do begin
    if j and 1=1 then begin
     c:=(c*ost) mod m;
     ost:=sqr(ost) mod m;
    end else ost:=sqr(ost) mod m;
    j:=j shr 1;
   end;
   nowost:=(nowost+ost*c) mod m;
  end;
 end;
 assign(f, 'powersum.out');
 rewrite(f);
 writeln(f, nowost);
 close(f);
end.

