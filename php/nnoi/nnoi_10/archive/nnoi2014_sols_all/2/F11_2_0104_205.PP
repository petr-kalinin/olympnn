//Chiknarev Ilya shk70, 11klass


var
 l,r,k,i,j,ch:integer;
 zin,zout:text;
 a:array[1..1000] of integer;

begin

 assign(zin,'lottery.in');
 reset(zin);
 read(zin,l,r,k);
 for j:=1 to k do
  begin
   read(zin,i);
   a[i]:=1;
  end;

{ readln(l,r,k);
 for j:=1 to k do
 begin
 read(i);
 a[i]:=1;
 end;}

 for i:=l to r do
 if a[i]=1 then
  begin
   a[i-1]:=2;
   a[i+1]:=2;
   if (i=l) or (i=r) then ch:=ch+1 else
  ch:=ch+2;
  end;

{ writeln(ch);
 for i:=l to r do
 if a[i]=2 then
 write(i);}



 assign(zout,'lottery.out');
 rewrite(zout);
 writeln(zout,ch);
 for i:=l to r do
 if a[i]=2 then
 write(zout,i,' ');
 close(zin);
 close(zout);
// readln;

end.