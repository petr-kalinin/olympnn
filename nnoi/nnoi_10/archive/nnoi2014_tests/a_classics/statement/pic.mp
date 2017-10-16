prologues:=0;

u:=1cm;
v:=0.5cm;

def concrete(expr z)=
  path p;
  p:=(((0,0)--(u,0)--(1.5u,v)--(0.5u,v)--cycle)shifted (z,0));
  draw p;
enddef;

beginfig(1)
pickup (pencircle scaled (u/20));
path left,right;
left:=(0,0)--(1.5u,0)--(2u,v)--(0.5u,v);
%right:=
fill left--cycle withcolor 2/3white;
draw left;

concrete(1.75u);
concrete(3u);
concrete(4.25u);

right:=(7u,0)--(5.5u,0)--(6u,v)--(7.5u,v);
fill right--cycle withcolor (2/3white);
draw right;

label.rt("ְספאכüע" infont "larm1000", (0.0u,-0.5v));
label.rt("ְספאכüע" infont "larm1000", (5.5u,-0.5v));
label.rt("ֿכטעû" infont "larm1000", (2.9u,-0.5v));

endfig

bye