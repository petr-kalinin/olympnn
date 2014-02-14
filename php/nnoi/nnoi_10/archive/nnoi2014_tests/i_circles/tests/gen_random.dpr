{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
{$ifdef fpc}
{$mode delphi}
{$endif}
uses sysutils,nnoiutil;
var f:text;
    n:integer;
    minx,maxx, miny,maxy,maxd:extended;
    r:extended;
    a:extended;
    sgn:integer;
    i:integer;
    x,y,ox,oy,x0,y0,d,d0:extended;
    att:integer;

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
minx:=rparval(4);
maxx:=rparval(5);
miny:=rparval(6);
maxy:=rparval(7);
maxd:=rparval(8);
assign(f,paramstr(1));
rewrite(f);
writeln(f,n);
ox:=0;
oy:=0;
x0:=0;
y0:=0;
for i:=1 to n do begin
    att:=0;
    if i=1 then begin
       x:=mRandExt(minx,maxx);
       y:=mRandExt(miny,maxy);
    end else begin
        repeat
           x:=mRandExt(ox-maxd,ox+maxd);
           y:=mRandExt(oy-maxd,oy+maxd);
           d:=sqr(x-ox)+sqr(y-oy);
           d0:=sqr(x-x0)+sqr(y-y0);
           inc(att);
        until (x>minx)and(x<maxx)and(y>miny)and(y<maxy)and(d>2)and(d<maxd*maxd)and(d0<sqr(maxd*(n-i+1)/2));
    end;
    writeln(f,x,' ',y{,' d',d,' d0',d0,' ox',ox,' oy',oy,' x0 ',x0,' y0 ',y0,' att ',att});
    //flush(f);
    ox:=x;
    oy:=y;
    if i=1 then begin
       x0:=x;
       y0:=y;
    end;
end;
close(f);
end.

