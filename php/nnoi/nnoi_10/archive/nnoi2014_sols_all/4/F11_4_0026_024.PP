//Chiknarev Ilya shk70, 11klass

uses Crt;
var
 m,n,i,j,ch:integer;
 zin,zout:text;
 a:array[1..100] of integer;
 b:array[1..100] of integer;
begin
 assign(zin,'pots.in');
 reset(zin);
 read(zin,m,n);
 for i:=1 to m do
 read(zin,a[i]);
 for j:=1 to n do
 read(zin,b[j]);

{ readln(m,n);
 for i:=1 to m do
 readln(a[i]);
 for j:=1 to n do
 readln(b[j]);}

 for i:=1 to m do
  for j:=1 to n do
  begin
  if a[i]=b[j] then
   begin
    a[i]:=0;
    a[j]:=0;
    ch:=ch+1;
   end;
  if (a[i]>b[j]) and (a[i]<>0) and (b[j]<>0) then
  begin
   a[i]:=0;
   b[i]:=0;
   ch:=ch+1;
  end;
  end;

 assign(zout,'pots.out');
 rewrite(zout);
 write(ch);
 close(zin);
 close(zout);
// writeln(ch);
// readkey
end.