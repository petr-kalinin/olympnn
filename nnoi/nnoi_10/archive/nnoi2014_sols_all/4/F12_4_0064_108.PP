program ex_4;
 var a,b:array[1..1000] of integer;
     n,m,i,k,r:integer;
     inp,outp:text;
 begin
  assign(inp,'pots.in');
  reset(inp);
  read(inp,n,m);
  readln;
   for i:=1 to n  do
   read(inp,a[i]);
   for i:=1 to m  do
      read(inp,b[i]);
   i:=1;
  if n>=m
   then
    for k:=1 to m do
    while i<=m do
     begin
      if a[i]=b[k]
       then r:=r+1;
       i:=i+1;
     end
    else
     for k:=1 to m do
    while i<=n do
     begin
      if a[i]=b[k]
       then r:=r+1;
       i:=i+1;
     end;
    assign(outp,'pots.out');
    rewrite(outp);
   writeln(outp,r);
   close(inp);
   close(outp);
   end.