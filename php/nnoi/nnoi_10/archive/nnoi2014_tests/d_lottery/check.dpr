{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
uses testlib;
var a,b:int64;
    i:integer;
	na,nb:integer;
begin
    na:=ouf.readint64;
    nb:=ans.readint64;
	if na <> nb then
		quit(_wa, 'Неверное минимальное число сертификатов ' +  str(na) +' вместо ' +str(nb));
	for i:=1 to na do begin
	    a:=ouf.readint64;
	    b:=ans.readint64;
	    if a<>b then
	       quit(_wa,str(i)+'-ое число: '+str(a)+' вместо '+str(b));
	end;
	quit(_ok,'');
end.