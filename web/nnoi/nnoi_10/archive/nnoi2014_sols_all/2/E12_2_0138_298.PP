program lottery;
var fi, fo: text;
Begin
assign(fi, 'lottery.in');
reset(fi);

assign(fo, 'lottery.out');
rewrite(fo);

close(fi);
close(fo);
End.