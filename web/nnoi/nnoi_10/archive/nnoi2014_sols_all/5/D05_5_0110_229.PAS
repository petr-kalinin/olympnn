{vantsev alexander, klass 11, licei 38, zadacha 5, borland pascal}
program tg;
var t:text;
i,o,n,h,m:LongInt;
j,k:integer;
begin
assign(t,'powersum.in');
reset(t);
read(t,n,m,k);
assign(t,'powersum.out');
rewrite(t);
for i:=1 to n do
 begin
 for j:=1 to k do
  begin
  if j=1 then
   begin
   o:=i mod m;
   end
  else
   begin
   o:=o*i mod m;
   writeln(t,o);
   end;
  end;

 h:=(h+ o) mod m;
 end;

writeln(t,h);
close(t);
end.