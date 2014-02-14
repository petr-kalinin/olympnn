prologues:=1;
w:=1cm;

def solve(suffix a)(expr n,coeff,coeff_print) =
pair b[];
path p[];

b[1]:=0.5[a[2],a[1]] + ((a[2]-a[1]) rotated 90 scaled coeff);
for i:=2 upto n:
    b[i] = whatever[a[i],b[i-1]];
    b[i]=0.5[a[i],a[i+1]] + ((a[i+1]-a[i]) rotated 90 scaled whatever);
endfor;

pickup pencircle scaled 0.15w;
for i:=1 upto n:
    draw a[i];
endfor;
pickup pencircle scaled 0.05w;
for i:=1 upto n:
    draw b[i] withpen (pencircle scaled 0.15w);
    p[i]:=((fullcircle scaled (abs(b[i]-a[i])) rotated angle(a[i]-b[i]) shifted b[i] cutafter (b[i]--a[i+1])) shifted (-b[i])) scaled 2 shifted b[i];
    draw p[i];
    draw b[i]--point (arctime (0.5*arclength(p[i])) of p[i]) of p[i] withpen (currentpen scaled 0.5) dashed evenly;
endfor;
show "a";
for i:=1 upto n:
    show a[i]/u * coeff_print;
endfor;
show "b";
for i:=1 upto n:
    show b[i]/u * coeff_print, (point 0.5 of p[i])/u*coeff_print;
endfor;
enddef;

beginfig(1)
u:=1cm;
pair a[];
a[1]:=(0,0);
a[2]:=(1u,0u);
a[3]:=(1u,3u);
a[4]:=(-1u,1u);
a[5]:=a[1];

label.bot("1",a[1]);
label.bot("2",a[2]);
label.top("3",a[3]);
label.lft("4",a[4]);
solve(a)(4,1.0,2);
endfig;


beginfig(2)
u:=2.3cm;
pair a[];
pair z;
z:=(u,0);
ang:=10;
a[1]:=z rotated (90-ang);
a[2]:=z rotated (90+ang);
a[3]:=z rotated (90+120+120-ang);
a[4]:=z rotated (90+120+120+ang);
a[5]:=z rotated (90+120-ang);
a[6]:=z rotated (90+120+ang);
a[7]:=a[1];

label.top("1",a[1]);
label.top("2",a[2]);
label.bot("3",a[3]);
label.rt("4",a[4]);
label.lft("5",a[5]);
label.bot("6",a[6]);
solve(a)(6,0.3,4);
endfig;

beginfig(3)
u:=1cm;
pickup pencircle scaled (u/10)
path p;
p:=(fullcircle scaled 2u rotated 90 shifted (0,u) cutafter ((0,u)--(3u,1/2u)) cutbefore ((0,-u)--(0,u)));
draw p;
draw (p reflectedabout ((-u,0),(u,0)));
endfig

bye.