{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
uses sysutils,testlib,math;
const disteps=1e-2;
      angleeps=1e-2;
      goodangleeps=1e-5;
      maxn=100000;
var n:integer;
    i:integer;
    x,y:array[0..maxn+1] of extended;
    xx,yy:array[1..maxn] of extended;
    dir:array[1..maxn] of char;
    oans,aans:string;
    angle:array[0..maxn] of extended;
    diff,a:extended;
    d1,d2:extended;

function dist(x1,y1,x2,y2:extended):extended;
begin
dist:=sqrt(sqr(x2-x1)+sqr(y2-y1));
end;

procedure norm(var a:extended);
begin
while a>pi do a:=a-2*pi;
while a<-pi do a:=a+2*pi;
end;
    
begin
n:=inf.readlongint;
oans:=ouf.readstring;
aans:=ans.readstring;
if (oans='no') then begin
   if aans='no' then quit(_ok,'N='+inttostr(n)+', no')
   else quit(_wa,'no, а решение существует');
end;
if (oans<>'yes') then
   quit(_pe,'Странный текст на первой строке: '''+oans+'''');
for i:=1 to n do begin
    x[i]:=inf.readreal;
    y[i]:=inf.readreal;
end;
x[n+1]:=x[1];
y[n+1]:=y[1];
x[0]:=x[n];
y[0]:=y[n];
for i:=1 to n do begin
    xx[i]:=ouf.readreal;
    yy[i]:=ouf.readreal;
    ouf.skip(blanks);
    dir[i]:=ouf.curchar;
    ouf.nextchar;
    if not (dir[i] in ['+','-']) then
       quit(_pe,format('Странный символ для направления %d-й дуги: '+dir[i],[i]));
end;
for i:=1 to n do begin
    d1:=dist(xx[i],yy[i],x[i],y[i]);
    d2:=dist(xx[i],yy[i],x[i+1],y[i+1]);
    if abs(d1-d2)>disteps then
       quit(_wa,format('Дуга %d не проходит через нужные точки',[i]));
end;
for i:=1 to n do  begin
    angle[i]:=arctan2(yy[i]-y[i],xx[i]-x[i]);
    if (dir[i]='+') then
       angle[i]:=angle[i]+pi/2
    else angle[i]:=angle[i]-pi/2;
end;
angle[0]:=angle[n];
for i:=0 to n-1 do begin
    a:=2*arctan2(y[i+1]-y[i],x[i+1]-x[i])-angle[i];
    diff:=a-angle[i+1];
    norm(diff);
    diff:=diff*180/pi;
    if abs(diff)>goodangleeps then
       writeln(format('Плохое касание в точке %d: отличие углов %5.5f',[i+1, diff]));
    if abs(diff)>angleeps then
       quit(_wa,format('Нет касания в точке %d: отличие углов %5.5f',[i+1, diff]));
end;
quit(_ok,'N='+inttostr(n));
end.