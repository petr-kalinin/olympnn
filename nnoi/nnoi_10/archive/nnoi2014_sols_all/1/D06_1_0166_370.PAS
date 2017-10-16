var A,B,N,M:longint;
    X,Y,Z,W:integer;
    T,D:text;
Begin
 assign(T,'classics.in');
 reset(T);
 read(T,A,B,N,M);
 X:=(A*(N-2))+1;
 Y:=A*N-1;
 Z:=(B*(M-2))+1;
 W:=B*M-1;
 if N=1 then begin
 X:=1;
 Y:=A-1;
 end;
 if M=1 then begin
 Z:=1;
 W:=B-1;
 end;
If Y>=Z-1 then begin
 If X<=Z then Z:=X;
 If Y>=W then Y:=W;
 assign(D,'classics.out');
 rewrite(D);
 write(D,Z,Y);
 close(T);
 close(D);
 End;
If Y<Z-1 then begin
 assign(D,'classics.out');
 rewrite(D);
 write(D,'0 0');
 close(T);
 close(D);
 End;
End.



