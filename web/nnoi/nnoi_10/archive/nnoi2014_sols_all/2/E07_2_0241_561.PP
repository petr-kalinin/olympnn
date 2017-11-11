{Алексей Горьков,
9 "А" класс, лицей №40,
задача 2, FPC 2.6.2}
{$mode delphi}
var l,r,n,k,cur:int64;
i:longint;
p,b: array[0..1000000] of int64;
begin
assign(input,'classics.in');
assign(output,'classics.out');
reset(input);
rewrite(output);
readln(input,l,r,n);
{for i:=1 to n do read(input,b[i]);  }

if n=0
  then begin
  cur:=1;
  p[1]:=l;
  end

  else if n=1 then begin
    read(input,b[1]);
    cur:=0;
    if (b[1]=l) and (l<>r)
    then begin
    cur:=1;
    p[1]:=b[1]+1;
    end
    else if (b[1]=r) and (l<>r)
           then begin
           cur:=1;
           p[1]:=b[1]-1;
           end
           else if l<>r then begin
           cur:=2;
           p[1]:=b[1]-1;
           p[2]:=b[1]+1;
           end;
    end

  else begin
  for i:=1 to n do read(input,b[i]);
  cur:=0;
  if b[1]<>l then begin
    inc(cur);
    p[cur]:=b[1]-1;
    end;
  for i:=2 to n do begin
    if b[i]-b[i-1]<>1 then begin
      inc(cur);
      p[cur]:=b[i-1]+1;
      end;
    if ((b[i]-b[i-1])<>1) and (p[cur]<>(b[i]-1)) then begin
        inc(cur);
        p[cur]:=b[i]-1;
        end;
    end;
  if b[n]<>r then begin
    inc(cur);
    p[cur]:=b[n]+1;
    end;
  end;


writeln(output,cur);
for i:=1 to cur do begin
  write(output,p[i]);
  if i<>cur then write(output,' ');
  end;
close(input);
close(output);
end.