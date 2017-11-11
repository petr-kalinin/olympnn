var
mas: array[0..100002] of longint;
s: array[1..200004] of longint;
l,r,n,i: longint;
k: longint;
begin
assign(input,'lottery.in');
reset(input);
assign(output,'lottery.out');
rewrite(output);

readln(l,r,n);

if n=0 then begin
    writeln(1);
    writeln(l);
    exit;
    end;

mas[0]:=l; mas[n+1]:=r;
for i:=1 to n do read(mas[i]);

k:=0;
if mas[1]<>l then begin
    inc(k);
    s[1]:=mas[1]-1;
    end;

for i:=1 to n-1 do
     if mas[i+1]-mas[i]>1 then
         if mas[i+1]-mas[i]=2 then begin
             inc(k);
             s[k]:=mas[i]+1;
             end else begin
             inc(k);
             s[k]:=mas[i]+1;
             inc(k);
             s[k]:=mas[i+1]-1;
             end;

if mas[n]<r then begin
    inc(k);
    s[k]:=mas[n]+1;
    end;

writeln(k);
for i:=1 to k do write(s[i],' ');

close(input);
close(output);
end.


