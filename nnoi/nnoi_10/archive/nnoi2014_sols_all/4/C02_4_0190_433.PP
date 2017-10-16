type m=array[1..1000] of integer;

var a,b:m;  i,z,x,y,n,l:word; t:text;

procedure heapify(var a:m; v:word);
var b,max:word;
begin
  max:=v;
  if a[max]<a[v*2] then
    max:=v*2;
  if a[max]<a[v*2+1] then
    max:=v*2+1;
  b:=a[v];
  a[v]:=a[max];
  a[max]:=b;
  if max<>v then
  heapify(a,max);
end;

procedure build(var a:m; n:word);
var i:word;
begin
  for i:=(n div 2) downto 1 do heapify(a,i);
end;

function maxim(var a:m):word;
begin
  maxim:=a[1];
end;

procedure da(var a:m; n:word);
begin
  a[1]:=a[n];
  a[n]:=0;
  heapify(a,1);
end;

begin
  assign(t,'pots.in');
  reset(t);
  readln(t,n,l);
  for i:=1 to n do read(t,a[i]);
  build(a,n);
  for i:=1 to l do read(t,b[i]);
  build(b,l);
  close(t);
  assign(t,'pots.out');
  rewrite(t);
  while (n>0) and (l>0) do
    begin
      x:=maxim(a);
      y:=maxim(b);
      if x<=y then
        begin
          inc(z);
          da(a,n);n:=n-1;
          da(b,l);l:=l-1;
        end
      else
        begin
          da(a,n);n:=n-1;
        end;
    end;
  writeln(t,z);
  close(t);
end.
