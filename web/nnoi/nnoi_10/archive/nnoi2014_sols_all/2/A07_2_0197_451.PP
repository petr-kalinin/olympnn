{���� ��୨���᪠� �����10 �����2 }
VAR input,output:text;
    l,r,n,k,i:longint;
    a:array[1..100000] of longint;
    b:array[1..100000] of longint;
BEGIN

assign(input, 'lottery.in');   reset(input);
assign(output, 'lottery.out'); rewrite(output);

readln(input, l,r,n); k:=0;
for i:=1 to n do read(input, a[i]);
if a[1]>l then BEGIN k:=k+1; b[k]:=a[1]-1; END;
for i:=1 to n-1 do BEGIN
                   if a[i+1]-a[i]>1 then BEGIN k:=k+1; b[k]:=a[i]+1; END;
                   if a[i+1]-a[i]>2 then BEGIN k:=k+1; b[k]:=a[i+1]-1; END;
                   END;
if a[n]<r then BEGIN k:=k+1; b[k]:=a[n]-1; END;
writeln(output, k);
for i:=1 to k do BEGIN
                 write(output, b[i], ' ');
                 END;

close(input); close(output);

END.
