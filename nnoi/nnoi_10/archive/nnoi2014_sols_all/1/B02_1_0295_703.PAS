
var
   input,output:text;
   a,b,n,m:integer;
   min,min2,min4,max,max2,max3,max4,temp:integer;

function test(a,b:integer):integer;
begin
    if a <> b then
    begin
        a:=a-b;
        a:=test(b,a);
    end;
    test:=a;

end;

begin
     Assign(input,'classics.in');
     Reset(input);
     readln(input,a,b);
     readln(input,n,m);
     close(input);

     if (a*n <= b*m) then
     begin
          max:=a*n-1;
          min4:=a*n-1;
          max4:=b*m-1;
     end
     else
     begin
          max:=b*m-1;
          min4:=b*m-1;
          max4:=a*n-1;
     end;

     if (a <= b) then
     begin
          min2:=a;
          max2:=b;
          max3:=m;
     end
     else
     begin
          min2:=b;
          max2:=a;
          max3:=n
     end;

     temp:=test(max2,min2);

     if (temp = 1) then min:=max2*min2
     else min:=(max2 div temp)*max3;

     if (min>max) then min:=2;

     if max4 div min4 > 2 then
     begin
          min:=1; max:=0;
     end;

     {writeln(min-1,'-',max);}


     Assign(output,'classics.out');
     Rewrite(output);
     write(output,min,' 'max);
     close(output);
end.