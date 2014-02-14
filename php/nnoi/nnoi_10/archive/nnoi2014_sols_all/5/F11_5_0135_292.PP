//Chikmarev Ilya shk70, 11klass


var
 n,m,k,i,j,ch,tmp:integer;
 zin,zout:text;
 a:array[1..1000] of integer;

begin
 assign(zin,'powersum.in');
 reset(zin);
 read(zin,n,m,k);



 tmp:=1;
 for i:=1 to n do
 begin
  for j:=1 to k do
    tmp:=tmp*i;
  ch:=ch+tmp;
  tmp:=1;
 end;





 assign(zout,'powersum.out');
 rewrite(zout);
 write(zout,ch mod m);
 close(zin);
 close(zout);
 

end.