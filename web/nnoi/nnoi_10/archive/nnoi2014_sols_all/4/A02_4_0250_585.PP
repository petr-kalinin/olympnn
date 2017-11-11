var
n,m:integer;
pin,pout:text;
begin
assign(pin,'pots.in' );
reset(pin);
read(pin,n,m);
assign(pout,'post.in');
rewrite (pout);
writeln(pout,n-m)
close(pin);
close(pout);
end.
