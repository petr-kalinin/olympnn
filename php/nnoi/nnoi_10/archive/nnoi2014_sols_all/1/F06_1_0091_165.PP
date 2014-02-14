Program ex;
var s1,s2:text;
    a,b,k,l,m,n:integer;
begin
   assign(s1,'classics.in');
   reset(s1);
   read(s1,a,b,n,m);
   assign(s2,'classics.out');
   rewrite(s2);
   writeln(s2,k,l);
   close(s1);
   close(s2);
end.