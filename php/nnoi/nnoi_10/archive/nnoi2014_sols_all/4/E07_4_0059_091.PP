{$mode delphi}
var a,b:array[0..1000] of integer;
m,n,i,j,ans,x:integer;
procedure sort(var z:array of integer;q:integer);
var c,d,num,tmp:integer;
begin
for c:=1 to q-1 do begin
  num:=c;
  for d:=c+1 to q do begin
    if z[d]<z[num] then num:=d;
    end;
  tmp:=z[num];
  z[num]:=z[c];
  z[c]:=tmp;
  end;
end;
begin
//assign(input,'pots.in');
//assign(output,'pots.out');
//reset(input);
//rewrite(output);
read(n,m);
for i:=1 to n do read(a[i]);
for i:=1 to m do read(b[i]);
sort(a,n);
sort(b,m);
x:=1;
ans:=0;
for i:=1 to m do begin
  for j:=x to n do begin
    if b[i]>=a[j] then begin
                       inc(ans);
                       x:=j+1;
                       break;
                       end;
    end;
  end;
writeln(output,ans);
//close(input);
//close(output);
end.