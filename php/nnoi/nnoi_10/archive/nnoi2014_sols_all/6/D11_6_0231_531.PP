{€à­ ãâ®¢ €«¥ªá¥©, 11, ‹¨æ¥© ü82, ‡€„€—€ ü6, Free Pascal}
var n,m,c1,c2,mk,nk:int64; t1,t2:string; i,j:longint;
begin
assign(input,'trains.in'); reset(input);
assign(output,'trains.out'); rewrite(output);
readln(input,n,m);
mk:=0;
for i:=1 to m do  begin
read(input,c1,c2,nk); if nk>mk then mk:=nk;
readln(input,t1,t2); end;
writeln(output,mk);
close(input); close(output);
end.
