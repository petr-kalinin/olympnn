{$mode delphi}
{$Q+,R+,S+,I+,O-}
var
tickets,ans:array[0..1000000] of integer;
l,r,i,j,n,an:integer;
begin
an:=0;
assign(input,'lottery.in');
assign(output,'lottery.out');
reset(input);
rewrite(output);
read(l,r,n);
tickets[0]:=l;
tickets[n+1]:=r;
for i:=1 to n do
        begin
        read(tickets[i]);
        end;
for i:=1 to n do
        begin
        if i=1 then
                begin
                if tickets[1]>tickets[0]then
                        begin
                        ans[an+1]:=tickets[1]-1;
                        inc(an);
                        end;
                end
        else
                begin
                if tickets[i]-tickets[i-1]>2 then
                        begin
                        ans[an+1]:=tickets[i]-1;
                        inc(an);
                        end;
                end;
       if i=n then
                begin
                if tickets[n]<tickets[n+1] then
                        begin
                        ans[an+1]:=tickets[n]+1;
                        inc(an);
                        end;
                end
       else
                begin
                if tickets[i]+1<tickets[i+1] then
                        begin
                        ans[an+1]:=tickets[i]+1;
                        inc(an);
                        end;
                end;
       end;
writeln(an);
for i:=1 to an do
        begin
        write(ans[i],' ');
        end;
end.