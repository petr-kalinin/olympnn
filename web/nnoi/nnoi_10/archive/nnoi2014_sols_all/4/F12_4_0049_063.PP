program ex_4;
 var a,b:array[1..1000] of integer;
     n,m,i,k,r:integer;
     inp,outp:text;
 begin
  assign(inp,'pots.in');
  reset(inp);
  read(inp,n,m);
  readln;
   i:=1;
   while not eoln(inp) do
    begin
     read(inp,a[i]);
     i:=i+1;
     end;
    readln;
    while not eoln(inp)  do
     begin
      read(inp,b[i]);
      i:=i+1;
     end;
     i:=1;
  if n>=m
   then
    for k:=1 to m do
    while i<=m do
     begin
      if a[i]=b[k]
       then r:=r+1;
     end;
   writeln(outp,r);
   close(inp);
   close(outp);
   end.