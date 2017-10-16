{
 Задача: Интерполяция дугами окружностей (Рисование кругами)
 Решение: Петр Калинин
 Неверное решение: считает координаты во входном файле целочисленными
 Ожидаемые баллы: 40-50
}
{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
{$ifdef fpc}
{$mode delphi}
{$endif}
uses math;
var x,y:array[1..100001] of integer;
    xx,yy:extended;
    nx,ny:extended;
    n:integer;
    f:text;
    angle,angle_i,a:extended;
    i:integer;
    d:extended;
    
function vect(x1,y1,x2,y2:extended):extended;
begin
vect:=x1*y2-x2*y1;
end;
    
begin
assign(f,'circles.in');reset(f);
read(f,n);
for i:=1 to n do read(f,x[i],y[i]);
x[n+1]:=x[1];
y[n+1]:=y[1];
close(f);
angle:=0;
for i:=1 to n do begin
    angle_i:=arctan2(y[i+1]-y[i], x[i+1]-x[i]);
    if i mod 2 =1 then
       angle:=angle+angle_i
    else angle:=angle-angle_i;
end;
if n mod 2=0 then begin
   {Note that real turn of vector is 2*angle. So we operate mod pi, not mod (2*pi)}
   while angle>pi/2 do 
         angle:=angle-pi;
   while angle<-pi/2 do
         angle:=angle+pi;
   if abs(angle)>1e-6 then begin
      assign(f,'circles.out');rewrite(f);
      if abs(angle)>1e-2 then
         writeln(f,'no')
      else writeln(f,'fail');
      writeln(angle);
      close(f);
      halt;
   end;
   angle:=137/pi // some random value
end;
assign(f,'circles.out');rewrite(f);
writeln(f,'yes');
for i:=1 to n do begin
    angle_i:=arctan2(y[i+1]-y[i],x[i+1]-x[i]);
    a:=angle_i-(angle-pi/2);
    d:=sqrt(sqr(x[i+1]-x[i])+sqr(y[i+1]-y[i]));
    
    xx:=(x[i+1]+x[i])/2;
    yy:=(y[i+1]+y[i])/2;
    
    nx:=(y[i+1]-y[i])/d;
    ny:=-(x[i+1]-x[i])/d;
    
    d:=d*tan(a)/2;
    xx:=xx+nx*d;
    yy:=yy+ny*d;
    write(f,xx:20:20,' ',yy:20:20);
    if (vect(x[i]-xx, y[i]-yy, cos(angle), sin(angle)) > 0) then
        writeln(f,' +')
    else writeln(f,' -');
    
    angle:=2*angle_i-angle;
end;
close(f);
end.