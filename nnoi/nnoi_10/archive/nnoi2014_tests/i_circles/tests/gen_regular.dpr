{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
{$ifdef fpc}
{$mode delphi}
{$endif}
uses sysutils;
var f:text;
    n:integer;
    x,y:extended;
    r:extended;
    a:extended;
    sgn:integer;
    i,j:integer;
    k:integer;
    
function parval(i:integer):integer;
begin
if paramcount<i then begin
   writeln('param ',i,' req!');
   halt;
end;
result:=strtoint(Paramstr(i));
end;

function rparval(i:integer):extended;
begin
if paramcount<i then begin
   writeln('param ',i,' req!');
   halt;
end;
result:=strtofloat(Paramstr(i));
end;

begin
n:=parval(2);
x:=rparval(3);
y:=rparval(4);
r:=rparval(5);
a:=rparval(6)*pi/180;
sgn:=parval(7);
k:=parval(8);
assign(f,paramstr(1));
rewrite(f);
writeln(f,n*k);
for j:=1 to k do 
    for i:=1 to n do
        writeln(f,x+r*cos(a+sgn*2*pi/n*i):20:20,' ',y+r*sin(a+sgn*2*pi/n*i));
close(f);
end.

