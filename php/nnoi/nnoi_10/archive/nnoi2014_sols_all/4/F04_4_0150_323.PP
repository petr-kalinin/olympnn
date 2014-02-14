var f:text; {Cуворов Кирилл, Лицей №87}
    a: array [1..2,1..1000] of integer;
    i,n,m,k,t:integer;
begin
 assign(f,'pots.in');
 reset(f);
 readln(f,n,m);
 for i:=1 to n-1 do read(f,a[1,i]);
 readln(f,a[1,n]);
 for i:=1 to m do read(f,a[2,i]);

 for i:=2 to n do
  begin
   k:=1;
   while k<>0 do
    for t:=i downto 2 do
    if a[1,t-1]<a[1,t] then
                    begin
                     k:=a[1,t];
                     a[1,t]:=a[1,t-1];
                     a[1,t-1]:=k;
                    end
                   else k:=0;
  end;
  for i:=2 to m do
  begin
   k:=1;
   while k<>0 do
    for t:=i downto 2 do
    if a[2,t-1]<a[2,t] then
                    begin
                     k:=a[2,t];
                     a[2,t]:=a[2,t-1];
                     a[2,t-1]:=k;
                    end
                       else k:=0;
  end;
  t:=1;
  k:=0;
  for i:=1 to n do
   if a[1,i]<a[1,t] then begin
                          k:=k+1;
                          t:=t+1;
                         end;

 assign(f,'pots.out');
 rewrite(f);

 write(f,k);

 close(f);
end.
