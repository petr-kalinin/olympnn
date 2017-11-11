{$mode delphi}
{$q+,r+,i+,s+}
const eps=0.000001;
var x:array[1..110000] of double;
    y:array[1..110000] of double;
    a1,b1,c1,a2,b2,c2:double;
    a,xr,yr:double;
    n,i:longint;
    dir,flag:integer;
begin
assign(input,'circles.in');
reset(input);
read(n);
for i:=1 to n do read(x[i],y[i]);
close(input);

 a1:=y[2]-y[1];
   b1:=x[1]-x[2];
   c1:=x[2]*y[1]-x[1]*y[2];
flag:=1;
for i:=3 to n do begin
    if abs(a1*x[i]+b1*y[i]+c1)>eps then begin
       flag:=0;
       break;
    end;
end;
assign(output,'circles.out');
rewrite(output);

if flag=1 then begin
   x[n+1]:=x[1];
   y[n+1]:=y[1];
   dir:=1;
   writeln((x[1]+x[2])/2:10:5,' ',(y[1]+y[2])/2:10:5,' ','+');
   for i:=2 to n do begin
       if (x[i+1]-x[i])*(x[i]-x[i-1])>0 then begin
          dir:=-dir;
          if dir=1 then writeln((x[i]+x[i+1])/2:10:5,' ',(y[i]+y[i+1])/2:10:5,' ','+');
          if dir=-1 then writeln((x[i]+x[i+1])/2:10:5,' ',(y[i]+y[i+1])/2:10:5,' ','-');
      end;
          if (x[i+1]-x[i])*(x[i]-x[i-1])<0 then begin
          if dir=1 then writeln((x[i]+x[i+1])/2:10:5,' ',(y[i]+y[i+1])/2:10:5,' ','+');
          if dir=-1 then writeln((x[i]+x[i+1])/2:10:5,' ',(y[i]+y[i+1])/2:10:5,' ','-');

end;
end;
if (dir=-1) or (n mod 2=1) then begin
   rewrite(output);
   write('no');
end;
close(output);
halt;
end;
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
