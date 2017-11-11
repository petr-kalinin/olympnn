{$mode delphi}
{$q+,r+,i+,s+}
var x:array[1..100000] of double;
    y:array[1..100000] of double;
    a1,b1,c1,a2,b2,c2:double;
    a,xr,yr:double;
    n,i:longint;
begin
assign(input,'circles.in');
reset(input);
read(n);
for i:=1 to n do read(x[i],y[i]);
close(input);

assign(output,'circles.out');
rewrite(output);
if n=3 then begin
   a1:=y[2]-y[1];
   b1:=x[1]-x[2];
   c1:=x[2]*y[1]-x[1]*y[2];
   a2:=y[3]-y[1];
   b2:=x[1]-x[3];
   c2:=x[3]*y[1]-x[1]*y[3];

   a:=a1;
   a1:=-b1;
   b1:=a;
   a:=a2;
   a2:=-b2;
   b2:=a;

   c1:=-a1*(x[1]+x[2])/2-b1*(y[1]+y[2])/2;
   c2:=-a2*(x[1]+x[3])/2-b2*(y[1]+y[3])/2;

      xr:=(b1*c2-b2*c1)/(a1*b2-a2*b1);
      yr:=(a2*c1-a1*c2)/(a1*b2-a2*b1);
     writeln('yes');
     for i:=1 to 3 do writeln(xr:10:5,' ',yr:10:5,' ','+');
     close(output);
     halt;
end
else begin
     write('no');
     close(output);
     halt;
end;
end.
