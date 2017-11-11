<?php 
$backpath="..";

include_once("$backpath/onn.php");

if (!isset($_GET["name"])){
   include("index.php");
   die;
}
$name=basename($_GET["name"]);
if (!file_exists("$name/index.dat")){
   include("index.php");
   die();
}

$f=sfopen("$name/index.dat","r");
$index=array();loadhier($f,$index);

startonn("/Фотографии/$index[shorttitle]","$index[title]",array("/style.css","show_all.css"));


writeln("$index[head]");
?>
<div class="hr"></div>
<p class="topcomment">На этой странице представлены лишь эскизы; они могут быть более плохого качества, чем оригиналы.
Чтобы посмотреть оригинал фотографии, щелкните на ее эскизе.
Чтобы посмотреть оригинал фотографии в масштабе 1:1, щелкните на ссылке 1:1
</p>
<?php if (!isset($index["nomov"])){?>
<p class="topcomment">
<span class="att">Внимание!</span>
При определенных условиях файлы .mov могут не просматриваться, вместо этого может появляться 
предложение сразу скачать соответствующий файл. Можно согласиться, сохранить его на
жестком диске и просматривать off-line (правда, учтите, что размер роликов &#8212;
несколько мегабайт). Для того же, чтобы просматривать ролик в окошке браузера,
например, можно установить не самую старую версию QuickTime и сконфигурировать его, чтобы он
работал как plug-in к браузеру (только тогда эти самые несколько мегабайт будут закачиваться
каждый раз при загрузки страницы).
</p>
<?php }?>
<?php 
  function put($i) {
    global $index,$name;
    if (isset($index[$i]['group'])) writeln("<H3>".$index[$i]['group']."</H3>");
    writeln("<p class=\"photo\"><a href=\"show_lite.php?num=$i&amp;name=$name\" title=\"Посмотреть полную\">");
    if (!isset($index[$i]['smallname'])) 
       write("<img src=\"$name/img{$i}sm.$index[extsmall]\" alt=\"Фото $i\" class=\"photo\"/>");
    else
       write("<img src=\"$name/{$index[$i]['smallname']}\" alt=\"Фото $i\" class=\"photo\"/>");
    writeln("<span class=\"comment\">");
    if (isset($index[$i]['comment'])) {
       write(" $i. ".$index[$i]['comment']);
       if (substr($index[$i]['comment'],-1,1)<>".") write(".");
    } else write(" $i. ");
    if (!isset($index[$i]['fullname'])) {
       $fn="$name/img$i.$index[extfull]";
    } else {
      $fn="$name/{$index[$i]['fullname']}";
    }
    writeln("</span>");
    if (file_exists($fn))
      writeln("<span class=\"addcomment\"> Размер оригинала ".
      str_replace(" ","&nbsp;",number_format(filesize($fn),0,''," "))
      ." б </span></a>");     
    else
      writeln("<span class=\"addcomment\"> Оригинал еще не загружен на сервер...</span></a>");
    writeln("<a href=\"show_1x1.php?num=$i&amp;name=$name\" title=\"Посмотреть полную 1:1\" class=\"fullsize\">1:1</a>");
    writeln("</p>");
    writeln("<div class=\"sep\"></div>");
    
  }

showp($index['num'],'put');

endonn();
?>