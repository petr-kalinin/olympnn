<?php 
$backpath="..";
include_once("$backpath/onn.php");
startonn("/�������","�������");

writeln("<h1>�������</h1>");
writeln("<ul>");

include_once("news.php");

foreach($news as $day=>$new){
  shownews($day);
}

writeln("</ul>");

if (count($news)==0){
   writeln("<p><i>��� ��������</i></p>");
}

endonn();
?>
