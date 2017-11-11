var f,g:text; minA,minB,maxA,maxB,A,B,n,m:longint;

 function max(x,y:longint):longint;
 begin
 if x<y then max:=y else max:=x;
 end;

 function min(l,k:longint):longint;
 begin
 if l<k then min:=l else min:=k;
 end;

begin
assign(f,'classics.in');
assign(g,'classics.out');
reset(f);
rewrite(g);

readln(f,A,B);
readln(f,n,m);
if n>2 then
minA:=1+(A*(n-2)) else minA:=1;
if m>2 then
minB:=1+(B*(m-2)) else minB:=1;
maxA:=A*n-1;
maxB:=B*m-1;
n:=max(minA,minB);
m:=min(maxA,maxB);
if n>m then writeln(g,'0 0') else writeln(g,n,' ',m);

close(f);
close(g);
end.
