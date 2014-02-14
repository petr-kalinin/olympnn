program sdl;   {c06, Vdovin Maxim}
var s,x:real;
buf,buf1:text;
i,n,m,k:integer;
b:string;
a,res:longint;
begin

        assign(buf,'powersum.in');
        reset(buf);
        readln(buf,n,m,k);
        for i:=1 to n do begin
        x:=exp(ln(i)*k);
        s:=s+x;
        end;
        a:=round(s);
        res:=a mod m;

         assign(buf1,'powersum.out');
        rewrite(buf1);
        write(buf1,res);
        close(buf);
        close(buf1);
        end.





