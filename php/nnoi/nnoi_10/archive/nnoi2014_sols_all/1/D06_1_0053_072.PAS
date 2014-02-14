var A,B,N,M:longint;
    X,Y,Z,W:integer;
    T,D:text;
Begin
 assign(T,'classics.in');
 reset(T);
 read(T,A,B,N,M);
 X:=A*(N-1)+1;
 Y:=A*N;
 Z:=B*(M+1)+1;
 W:=B*M;
 if N=2 then X:=1;
 if M=2 then Z:=1;
If Y>=Z then
 Begin
 If X>=Z then Z:=X;
 If Y>=W then Y:=W-1
         else Y:=Y-1;
 assign(D,'classics.out');
 rewrite(D);
 write(D,Z,Y);
 close(T);
 close(D);
 End;
If Y<Z then
 begin
 assign(D,'classics.out');
 rewrite(D);
 write(D,'0 0');
 close(T);
 close(D);
 End;
End.



