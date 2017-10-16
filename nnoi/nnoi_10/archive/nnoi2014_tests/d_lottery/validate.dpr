{$Q+,R+,S+,I+}
{$APPTYPE CONSOLE}
{$O-}
uses testlib,sysutils;
const maxval = 1000 * 1000 * 1000;
const maxn = 100 * 1000;
var i:integer;
    l,r,n,cur,pr:integer;    
begin
    l:=inf.readlongint;
	if (l < 1) or (l > maxval) then
		quit(_pe, 'Wrong L: ' + intToStr(l));

    r:=inf.readlongint;
	if (r < 1) or (r > maxval) or (l > r) then
		quit(_pe, 'Wrong R: ' + intToStr(r));

    n:=inf.readlongint;
	if (n < 1) or (n > maxn) then
		quit(_pe, 'Wrong N: ' + intToStr(n));

	pr := 0;
	for i:=1 to n do begin
	    cur := inf.readlongint;
	    if (cur<l) or (cur>r) or (cur <= pr) then
	        quit(_pe, 'Wrong cur: ' + intToStr(cur));
		pr := cur;
	end;
	quit(_ok, '');
end.

