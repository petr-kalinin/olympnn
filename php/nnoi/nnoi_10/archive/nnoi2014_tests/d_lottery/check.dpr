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
		quit(_wa, '�������� ����������� ����� ������������ ' +  str(na) +' ������ ' +str(nb));
	for i:=1 to na do begin
	    a:=ouf.readint64;
	    b:=ans.readint64;
	    if a<>b then
	       quit(_wa,str(i)+'-�� �����: '+str(a)+' ������ '+str(b));
	end;
	quit(_ok,'');
end.