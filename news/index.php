<?php 
$backpath="..";
include_once("$backpath/onn.php");
startonn("/Новости","Новости");

writeln("<h1>Новости</h1>");
writeln("<ul>");

include_once("news.php");

foreach($news as $day=>$new){
  shownews($day);
}

writeln("</ul>");

if (count($news)==0){
   writeln("<p><i>Нет новостей</i></p>");
}

endonn();
?>
