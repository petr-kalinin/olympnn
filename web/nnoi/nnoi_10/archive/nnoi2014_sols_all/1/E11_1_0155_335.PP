var
n,m,a,b,x,y:qword;
begin
assign (input,'classics.in');
reset (input);
assign (output,'classics.out');
reset (output);
read(a,b,n,m);
if a*(n-2)>b*(m-2) then x:=a*(n-2)+1 else x:=b*(m-2)+1;
if (a*n-1)>(b*m-1) then y:=b*m-1 else y:=a*n-1;
if x>y then writeln('0 0') else writeln(x,' ',y) ;
close(input);
close(output);


end.
