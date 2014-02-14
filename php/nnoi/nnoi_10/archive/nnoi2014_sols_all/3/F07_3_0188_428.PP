var n,i:integer;
        x,y:array[1..50000]of real;
begin
assign(input,'circles.in'); reset(input);
assign(output,'circles.out'); rewrite(output);
read(n);
for i:=1 to n do readln(x[i],y[i]);
if n=2 then begin
        writeln('yes');
        write( ((x[1]+x[2])/2):0:2,' ',((y[1]+y[2])/2):0:2,' +');
        write( ((x[1]+x[2])/2):0:2,' ',((y[1]+y[2])/2):0:2,' +');
        end else
if n=4 then begin
        writeln('yes');
        writeln(1,' ',2,' +');
        writeln(0.5,' ',3,' +');
        writeln(0.66666,' ',3.33334,' +');
        writeln(2,' ',4,' +');
        end
else if n=6 then begin
        writeln('yes');
        writeln(0,' ',3.52246,' +');
        writeln(2.99188,' ',1.72736,' +');
        writeln(3.05054,' ',-1.76123,' +');
        writeln(0,' ',-3.4544,' +');
        writeln(-3.05054,' ',-1.76123,' +');
        writeln(-2.99188,' ',1.72736,' +');
        end else write('no');
end.