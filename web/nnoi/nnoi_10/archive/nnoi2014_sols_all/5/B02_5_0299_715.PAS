
var
   input,output:text;
   k:integer;
   i,s,n,m:longint;

function power(a:longint;b:integer):longint; {возведение в степень}
var
   i:integer;
   x:longint;
begin
     x:=1;
     for i:=1 to b do
     begin
          x:=x*a;
     end;
     power:=x;
end;

function something(n:longint;k:integer):integer; {Для вычисления Snk. Никто не знает, зачем это выведено в функцию}
var x:longint;
begin
     x:=0;
     for i:=1 to n do
     begin
          x:=x+power(i,k);
          {write(power(i,k),'-',x,' ');}
     end;
     something:=x;
end;

begin
     Assign(input,'powersum.in');
     Reset(input);
     read(input,n,m,k);
     close(input);

     s:=something(n,k);
     {writeln(s mod m);}

     Assign(output,'powersum.out');
     Rewrite(output);
     write(output,s mod m);
     close(output);
end.