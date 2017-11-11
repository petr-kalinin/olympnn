{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
{$ifdef fpc}
{$mode delphi}
{$endif}
uses sysutils,nnoiutil;
var f:text;
    n:integer;
    dx,dy:integer;
    minc,maxc:integer;
    i,j:integer;
    x,y:integer;
    c:integer;
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
mrandseed(parval(2));
n:=parval(3);
dx:=parval(4);
dy:=parval(5);
minc:=parval(6);
maxc:=parval(7);
k:=parval(8);
assign(f,paramstr(1));
rewrite(f);
writeln(f,n * k);
x:=0;
y:=0;
for j:=1 to k do begin
    for i:=1 to n do begin
        c:=mRandInt(minc,maxc);
        x:=x+dx*c;
        y:=y+dy*c;
        writeln(f,x,' ',y);
    end;
    dx:=-dx;
    dy:=-dy;
end;
close(f);
end.

