Program ex;
var s1,s2:text;
    a,b,k,l,m,n:integer;
begin
   assign(s1,'classics.in');
   reset(s1);
   read(s1,a,b,n,m);
   k:=a*(n-2)+1;
   l:=(a*n)-1;
   if a*n>b*m  then
    begin
     k:=0;
     l:=0;
    end;
   assign(s2,'classics.out');
   rewrite(s2);
   writeln(s2,k);
   writeln(s2,l);
   close(s1);
   close(s2);
end.  