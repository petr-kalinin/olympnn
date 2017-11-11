{$Q+,R+,S+,I+}
{$APPTYPE CONSOLE}
{$O-}
uses math,testlib,sysutils;
const maxcoord=10000;
      maxn=50000;
      maxans=1000000;
var n:integer;
    i:integer;
    x,y:array[1..maxn+1] of extended;
    xx,yy:extended;
    
begin
n:=inf.readlongint;
if (n<3)or(n>maxn) then
   quit(_pe, 'Wrong N: ' + intToStr(n));
for i:=1 to n do begin
    x[i]:=inf.readreal;
    y[i]:=inf.readreal;
    if (abs(x[i])>maxcoord) or (abs(y[i])>maxcoord) then
       quit(_pe, 'Point '+intToStr(i)+': coordinates are too big');
end;
x[n+1]:=x[1];
y[n+1]:=y[1];
for i:=1 to n do
    if sqrt(sqr(x[i+1]-x[i])+sqr(y[i+1]-y[i]))<1.001 then
       quit(_pe, format('Points %d and %d are too close to each other',[i,i+1]));
       
if ans.readstring='no' then
   quit(_ok,'');
for i:=1 to n do begin
    xx:=ans.readreal;
    yy:=ans.readreal;
    ans.nextline;
    if (abs(xx)>maxans) or (abs(yy)>maxans) then
       quit(_pe,'Too big answer coordinate at point '+inttostr(i));
end;
quit(_ok, '');
end.

