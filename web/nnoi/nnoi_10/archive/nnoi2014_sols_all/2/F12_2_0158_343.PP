program ex_2;
var
 L,N,R,i,k,res:longint;
 a,b:array[1..1000] of integer;
 inp,outp:text;
  begin
  assign(inp,'lottery.in');
  reset(inp);
  read(inp,L,R,N);
  for i:=1 to N do
  read(inp,a[i]);
   if a[1]>L
    then
    begin
     b[1]:=a[1]-1;
     k:=2;
     for i:=2 to N-1 do
      begin
      if (a[i+1]-a[i]=1) then
       begin
        b[k]:=a[i]+1;
        k:=k+1;
       end;
      if (a[i+1]-a[i]>1) then
       begin
        b[k]:=a[i]+1;
        b[k+1]:=a[i+1]-1;
        k:=k+2;
       end;
       end;
      end
      else
       begin
        k:=1;
     for i:=1 to N-1 do
      begin
      if (a[i+1]-a[i]=1) then
       begin
        b[k]:=a[i]+1;
        k:=k+1;
       end;
      if (a[i+1]-a[i]>1) then
       begin
        b[k]:=a[i]+1;
        b[k+1]:=a[i+1]-1;
        k:=k+2;
       end;
       end;
      end;
     if a[N]<R
      then
       begin
       b[k+1]:=a[N]+1;
       res:=k+1;
       end
      else
       res:=k;
  assign(outp,'lottery.out');
  rewrite(outp);
  writeln(outp,res);
  for i:=1 to res do
   begin
   write(outp,b[k],' ');
   k:=k+1;
   end;
   close(outp);
  close(inp);
  end.