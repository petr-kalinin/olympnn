program ex_4;
 var a,b:array[1..1000] of integer;
     n,m,i,k,res,x,y:integer;
     inp,outp:text;
 begin
  assign(inp,'pots.in');
  reset(inp);
  read(inp,n,m);
   for i:=1 to n do
  read(inp,a[i]);
   for i:=1 to m do
  read(inp,b[i]);
  res:=0;
  x:=0;y:=0;
  i:=1;
     while (i<(n-2)) do
      begin
      while (a[i]>a[i+1]) do
       begin
        x:=a[i];
        y:=a[i+1];
        a[i]:=y;
        a[i+1]:=x;
        i:=1;
       end;
       i:=i+1;
      end;
      x:=0;y:=0;i:=1;
      while (i<(m-2)) do
      begin
      while (b[i]>b[i+1]) do
       begin
        x:=b[i];
        y:=b[i+1];
        b[i]:=y;
        b[i+1]:=x;
        i:=1;
       end;
       i:=i+1;
      end;
  if n>m
    then
     begin
      k:=1;
      while not b[k]>=a[i] do
       begin
       i:=i+1;
       if i=m
        then
         k:=k+1;
       end;
       end
    else
     begin
      k:=1;
      i:=1;
      while not b[k]>=a[i] do
       begin
       i:=i+1;
       if i=m
        then
         begin
         k:=k+1;
         i:=1;
         end;
       end;
       x:=i;
     for i:=x to m do
      begin
       if b[k]>=a[i]
        then
         begin
         res:=res+1;
         k:=k+1;
         a[i]:=1001;
         end;
     end;
         end;

  assign(outp,'pots.out');
  rewrite(outp);
  writeln(outp,res);
  close(inp);
  close(outp);
  end.
