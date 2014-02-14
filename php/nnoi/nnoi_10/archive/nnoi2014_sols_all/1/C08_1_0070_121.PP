program classiki;
var A,B,N,M,sn:integer;sx:longint;
begin
read(A,B);
read(N,M);
if ((N-2)*A+1)>((M-2)*B+1) then sn:=(N-2)*A+1 else sn:=(M-2)*B+1;
if (N>B*M) or (M>A*N) then writeln('0 0') else
  begin
  if((A*N)>(B*M)) then sx:=B*M-1 else sx:=A*N-1;
  writeln(sn,' ',sx);
  end;
end.
