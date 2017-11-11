{Алексей Горьков,
9 "А" класс, лицей №40,
задача 3, FPC 2.6.2}
{$mode delphi}
var n,i:integer;
x,y:array[1..100000]of integer;
begin
assign(input,'circles.in');
assign(output,'circles.out');
reset(input);
rewrite(output);
readln(input,n);
if n<3 then write(output,'no')
else begin
  for i:=1 to 3 do readln(x[i],y[i]);
  writeln(output,'yes');

  end;
close(input);
close(output);
end.