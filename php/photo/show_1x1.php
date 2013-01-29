<?
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
if (!isset($_GET["num"]))
   $num=1;
else $num=(int)$_GET["num"];

$f=sfopen("$name/index.dat","r");
loadhier($f,$index);

startonn("/Фотографии/$index[shorttitle]","Фото $num &#8212; $index[title]");

writeln("<h1>$index[title]</h1>");

if ($num>1)
   write("<a href=\"{$PHP_NAME}?num=".($num-1)."&amp;name=$name\">&lt;&lt;</a>&nbsp;"); 
else write("&nbsp;&nbsp;"); 
if ($num<$index["num"])
   write("<a href=\"{$PHP_NAME}?num=".($num+1)."&amp;name=$name\">&gt;&gt;</a>&nbsp;");
else write("&nbsp;&nbsp;");
writeln("<a href=\"show_lite.php?num=$num&amp;name=$name\">lite-версия</a><br>");

writeln("<h3>Фотография $num, оригинал</h3>");
if (isset($index[$num]['comment'])) {
   writeln("<p>{$index[$num]['comment']}</p>");
} 


if (isset($index[$num]['fullname'])) {
   writeln("<img src=\"$name/{$index[$num]['fullname']}\" alt=\"\"/>"); 
}
else writeln("<img src=\"$name/img$num.$index[extfull]\" alt=\"\"/>");


endonn();
?>
