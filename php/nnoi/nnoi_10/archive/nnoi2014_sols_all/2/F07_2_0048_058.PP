var a:array[0..10000]of integer;
        i,n,l,r,k,t:integer;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
fillchar(a,sizeof(a),0);
k:=0;
readln(l,r,n);

a[l-1]:=-1;
a[r+1]:=-1;

for i:=1 to n do begin
        read(t);
        a[t]:=-1;
        end;
for i:=l to r do
        if a[i]=-1 then begin
                if a[i-1]<>-1 then begin
                        inc(a[i-1]);
                        inc(k);
                        end;
                if a[i+1]<>-1 then begin
                        inc(a[i+1]);
                        inc(k);
                        end;
                end;
writeln(k);
i:=l;
while i<=r do begin
        if a[i]>0 then write(i,' ');
        inc(i);
        end;
close(output);
close(input);
end.