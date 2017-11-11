var i,n,rez,m,k,d:word; t:text;

function s_m(a:word; m,k:word):word;
var i,a1:word;
begin
  a1:=1;
  a:=a mod m;
  for i:= 1 to k do
    a1:=(a1 mod m)*a;
  s_m:=a1 mod m;
end;

begin
  assign(t,'powersum.in');
  reset(t);
  read(t,n,m,k);
  close(t);
  for i:=1 to n do
    begin
    d:=s_m(i,m,k);
    rez:=( rez+d mod m );
    end;
  rez:=rez mod m;
  assign(t,'powersum.out');
  rewrite(t);
  writeln(t,rez);
  close(t);
end.