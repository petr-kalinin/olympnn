{Tyagunov Vladimir 11F licei40}
var m,n,k,i,j:longint;
        t,sum:int64;
begin
assign(input,'powersum.in'); reset(input);
assign(output,'powersum.out'); rewrite(output);
read(n,m,k);
sum:=1;
for i:=2 to n do begin
        t:=i mod m;
        for j:=2 to k do t:=(i*t)  mod m;
        sum:=sum+t;
        sum:=sum mod m;
        end;
write(sum);
close(output);
close(input);
end.
