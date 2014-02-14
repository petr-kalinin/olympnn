program df;    {c06, Vdovin Maxim}
var buf,buf1:text;
a,b,minl,n1,l1,n2,l2,maxl,maxl1,maxl2,minl1,minl2:longint;
begin
        assign(buf,'classics.in');
        reset(buf);
        readln(buf,l1,l2);
        readln(buf,n1,n2);
        maxl1:=l1*n1-1;
        maxl2:=l2*n2-1;
        minl1:=l1*(n1-1)-(l1-1);
        minl2:=l2*(n2-1)-(l2-1);

        if maxl2>maxl1  then maxl:=maxl1 else maxl:=maxl2;

        if minl2<minl1  then minl:=minl1 else minl:=minl2;
        if minl2=minl1  then minl:=minl1;
        if maxl<minl then begin maxl:=0; minl:=0; end;

        assign(buf1,'classics.out');
        rewrite(buf1);
        write(buf1,minl,' ',maxl);
        close(buf);
        close(buf1);

        end.
