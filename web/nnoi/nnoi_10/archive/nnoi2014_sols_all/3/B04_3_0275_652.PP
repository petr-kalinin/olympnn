var
n,i: longint;
x0,y0,x1,y1,x2,y2,x3,y3,x4,y4: real;
t,p: real;
a: real;
ax,ay,bx,by,cx,cy: real;
rand: real;

x,y: array[1..100000] of real;
xx,yy: array[1..100000] of real;
c: array[1..100000] of char;

procedure f;
begin
a:=(x2-x1)*(y3-y4)-(y2-y1)*(x3-x4);
if a=0 then begin writeln('no'); halt; end;

t:=((x3-x1)*(y3-y4)-(y3-y1)*(x3-x4))/a;
p:=((x2-x1)*(y3-y1)-(y2-y1)*(x3-x1))/a;

x0:=x1+t*(x2-x1);
y0:=y1+t*(y2-y1);

end;


begin
assign(input,'circles.in');
assign(output,'circles.out');
reset(input);
rewrite(output);

readln(n);
for i:=1 to n do readln(x[i],y[i]);
x[n+1]:=x[1];
y[n+1]:=y[1];
x[n+2]:=x[2];
y[n+2]:=y[2];

x0:=(x[1]+x[2])/2;
y0:=(y[1]+y[2])/2;

ax:=x[2]-x[1];
ay:=y[2]-y[1];

ax:=y[2]-y[1];
ay:=x[1]-x[2];

randomize;
rand:= random+0.001;

x0:=x0+ax*rand;
y0:=y0+ay*rand;

xx[1]:=x0;
yy[1]:=y0;

ax:=x[2]-x[1];
ay:=y[2]-y[1];

bx:=x0-x[1];
by:=y0-y[1];

cx:=x[3]-x[1];
cy:=y[3]-y[1];

t:=ax*by-bx*ay;
p:=ax*cy-cx*ay;

if not ((t<=0) and (p<=0) or (t>=0) and (p>=0)) then begin
    x0:=(x[1]+x[2])/2;
    y0:=(y[1]+y[2])/2;

    ax:=x[2]-x[1];
    ay:=y[2]-y[1];

    ax:=y[2]-y[1];
    ay:=x[1]-x[2];

    x0:=x0-ax*rand;
    y0:=y0-ay*rand;

    xx[1]:=x0;
    yy[1]:=y0;

    ax:=x[2]-x[1];
    ay:=y[2]-y[1];

    bx:=x0-x[1];
    by:=y0-y[1];

    cx:=x[3]-x[1];
    cy:=y[3]-y[1];

    t:=ax*by-bx*ay;
    p:=ax*cy-cx*ay;
    end;

if t<0 then c[1]:='-' else c[1]:='+';

for i:=2 to n do begin
    x1:=x[i];
    y1:=y[i];
    x2:=xx[i-1];
    y2:=yy[i-1];
    x3:=(x[i]+x[i+1])/2;
    y3:=(y[i]+y[i+1])/2;

    ax:=y[i+1]-y[i];
    ay:=x[i]-x[i+1];

    x4:=x3+ax;
    y4:=y3+ay;

    f;

    xx[i]:=x0;
    yy[i]:=y0;

    ax:=x[i+1]-x[i];
    ay:=y[i+1]-y[i];

    bx:=x0-x[i];
    by:=y0-y[i];

    cx:=x[i+2]-x[i];
    cy:=y[i+2]-y[i];

    t:=ax*by-bx*ay;
    p:=ax*cy-cx*ay;

    if not ((t<=0) and (p<=0) or (t>=0) and (p>=0)) then begin
        writeln('no');
        halt;
        end;

    if t<0 then c[i]:='-' else c[i]:='+';

    end;

writeln('yes');
for i:=1 to n do writeln(xx[i]:10:3,' ',yy[i]:10:3,' ',c[i]);

close(input);
close(output);
end.















