{$Q+,R+,S+,I+}
{$APPTYPE CONSOLE}
{$O-}
uses testlib,sysutils;
const maxval=1000000000;
var i:integer;
    x:integer;
    
begin
for i:=1 to 4 do begin
    x:=inf.readlongint;
    if (x<1)or(x>maxval) then
        quit(_pe, 'Wrong X: ' + intToStr(x));
end;
quit(_ok, '');
end.

