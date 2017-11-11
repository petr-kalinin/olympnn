program stolovaya;
uses crt;
var
n,m,o,p:integer;
buf,bufo:text;
Ai:array[1..10] of integer;
Bi:array[1..10] of integer;
begin
clrscr;
Assign(buf,'pots.in');
Reset(buf);
Read(buf,n,m);
Close(buf);
o:=0;
for p:=1 to m do
begin
if Ai[p]>Bi[p] then
o:=o+1;
end;
Assign(bufo, 'pots.out');
Rewrite(bufo);
Write(bufo,o);
Close(bufo);
Readkey;
end.