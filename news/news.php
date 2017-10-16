<?include_once("$backpath/onn.php");

$f=fopen("$backpath/news/news.dat","r");
loadhier($f,$news);

function shownews($day){
  global $news;
  write("<li><b>".date("d.m.Y",$day)."</b>: {$news[$day]["text"]}");
  if (isset($news[$day]["href"])){
     write(" <a href=\"{$news[$day]["href"]}\"><i>подробнее&nbsp;&gt;&gt;&gt;</i></a>");
  }
  writeln("</li>");
}

?>