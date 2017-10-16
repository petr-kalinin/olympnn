{$mode delphi}
var a,b,n,m,mina,maxa,minb,maxb,left,right:int64;
begin
assign(input,'classics.in');
assign(output,'classics.out');
reset(input);
rewrite(output);
read(a,b,n,m);
mina:=1+(n-2)*a;
maxa:=n*a-1;
minb:=1+(m-2)*b;
maxb:=m*b-1;
if mina<minb then left:=minb  else left:=mina ;
if maxa>maxb then right:=maxb else right:=maxa;
if left<1 then left:=1;
if right<left then write(0,' ',0) else write(left,' ',right);

end.