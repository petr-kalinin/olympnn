program ex_2;
var
 L,N,R,i,k:longint;
 a,b:array[1..1000] of integer;
 inp,outp:text;
  begin
  assign(inp,'lottery.in');
  reset(inp);
  read(inp,L,R,N);
  for i:=1 to N do
  read(inp,a[i]);
  if a[1]=L
   then
    begin
    k:=1;
     for i:=1 to N do
      begin
      if (a[i+1]-a[i])=1 then
        b[k]:=a[i]+1;
       if (a[i+1]-a[i])= 2 then
       begin
          b[k]:=a[i]+1;
          b[k+1]:=a[i+1]+1;
       end;
         k:=k+1;
      end;
     end
    else
     begin
     b[1]:=a[i]-1;
     k:=2;
     for i:=1 to N do
      begin
      if (a[i+1]-a[i])=1 then
        b[k]:=a[i]+1;
      if (a[i+1]-a[i])= 2 then
       begin
          b[k]:=a[i]+1;
          b[k+1]:=a[i+1]+1;
       end;
         k:=k+1;
      end;
     end;
  assign(outp,'lottery.out');
  rewrite(outp);
  writeln(outp,k);
  writeln(outp,b[1]);
  for i:=2 to k do
   write(b[k],' ');
   close(outp);
  close(inp);
  end.
