program trains;
var f_out,f_in:text;
n,m:integer;
ai,bi:array of integer;
ci:array of integer;
i,j,ji,ij:integer;
x,y,p:integer;
s1,s2:string;
counter:integer;
begin

assign(f_in,'trains.in');reset(f_in);
assign(f_out,'trains.out');rewrite(f_out);
readln(f_in,n,m);
setlength(ai,m);
for i:=1 to m do
read(f_in,x,x,ai[i],s1,s2);
{*****************************************}
for i:=1 to m do begin
if ai[i+1]>ai[i] then begin
p:=ai[i+1];
ai[i+1]:=ai[i];
ai[i]:=p;
end;
end;

writeln(f_out,ai[1]);
{*****************************************}
close(f_out);
close(f_in);
end.