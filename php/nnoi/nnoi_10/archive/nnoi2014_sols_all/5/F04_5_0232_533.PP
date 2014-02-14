var f:text; {Cуворов Кирилл, Лицей №87}
    t,s,n,m:longInt;
    k,i,j:integer;
begin
 assign(f,'powersum.in');
 reset(f);
 read(f,n,m,k);

 t:=1;
 for i:=1 to n do
  begin
   for j:=1 to k do
    t:=t*i;
     s:=s+t;
     t:=1;
  end;

 t:=s mod m;
 assign(f,'powersum.out');
 rewrite(f);
 writeln(f,t);
 close(f);
end.
