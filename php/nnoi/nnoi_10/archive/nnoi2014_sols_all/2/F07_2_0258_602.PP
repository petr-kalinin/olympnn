{Tyagunov Vladimir 11F lizei40}
var a:array[0..10001]of longint;
        i,n,l,r,x,y,k:longint;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
fillchar(a,sizeof(a),0);
k:=0;
readln(l,r,n);
read(x,y);
if x>l then begin
        inc(k);
        a[k]:=x-1;
        end;
if y-x=2 then begin
        inc(k);
        a[k]:=x+1;
        end;

if y-x>2 then begin
         inc(k);
         a[k]:=x+1;
         inc(k);
         a[k]:=y-1;
         end;

for i:=1 to n-2 do begin
        x:=y;
        read(y);
        if y-x=2 then begin
                inc(k);
                a[k]:=x+1;
                end;

        if y-x>2 then begin
                inc(k);
                a[k]:=x+1;
                inc(k);
                a[k]:=y-1;
                end;
        end;
if y<r then begin
        inc(k);
        a[k]:=y+1;
        end;
writeln(k);
for i:=1 to k do write(a[i],' ');
close(output);
close(input);
end.
