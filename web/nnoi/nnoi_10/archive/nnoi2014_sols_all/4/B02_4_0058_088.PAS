type
    myarray=array[1..1005] of integer;
var
   first,second:myarray;
   input,output:text;
   i,n,m,x,temp:integer;

function getminid(a:myarray;min,all:integer):integer;
var i,x:integer;
begin
     x:=30000;
     for i:=1 to all do
     begin
          if (a[i] <= x) AND (a[i] >= min) then
          begin
               x:=a[i];
               getminid:=i;
               if (a[i] = min) then break;
          end;
     end;
     if (x = 30000) then getminid:=0;
end;

begin
     Assign(input,'C:\student\olymp\work\in.txt'); Reset(input);
     readln(input,n,m);
     for i:=1 to n do read(input,first[i]); readln(input);
     for i:=1 to m do read(input,second[i]); close(input);

     for i:=1 to n do
     begin
          temp:=getminid(second,first[i],m);
          if (temp <> 0) then
          begin
               {write(first[i],'-',second[temp],' ');}
               second[temp]:=0;
               inc(x);
          end;
     end;
     {writeln(x);}

     Assign(output,'C:\student\olymp\work\out.txt'); Rewrite(output);
     write(output,x);
     close(output);
end.