prologues:=3;
w:=1cm;
u:=1cm;

def tangent(expr A,O)=
  pair E;
  E:=(A+((O-A) rotated 90 scaled 0.5));
  drawarrow A--E withpen currentpen scaled 3;
  len:=1/5*abs(O-A);
  path axis;
  axis:=A--(A+(len,0));
  draw fullcircle scaled len shifted A cutafter (A--E) cutbefore axis;
  draw axis;
enddef;

beginfig(1)
pickup pencircle scaled 0.05w;
pair A,B,O;
A:=(0,0);
B:=(3u,5u);
O:=1/2[A,B]+((B-A) rotated -90 scaled 0.7);
draw A--B;
path p;
p:=fullcircle scaled (2*abs(A-O)) shifted O cutafter (O--2[O,A]) cutbefore (O--2[O,B]);
draw p;
tangent(A,O);
tangent(B,O);
label.rt(btex $\varphi_1$ etex, A+(-0.1u,0.7u));
label.rt(btex $\varphi_2$ etex, B+(0.3u,-0.2u));

len:=1.5/5*abs(O-A);
path axis;
axis:=A--(A+(len,0));
draw fullcircle scaled (4/3len) shifted A cutafter (A--B) cutbefore axis;
draw fullcircle scaled (4/3len + 0.2w) shifted A cutafter (A--B) cutbefore axis;
draw axis;
label.rt(btex $\alpha_1$ etex, A+(1u,0.4u));
label.lft(btex $A_1$ etex, A);
label.lft(btex $A_2$ etex, B+(-0.02u,0.2u));
endfig;

bye.