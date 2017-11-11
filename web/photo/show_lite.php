<?php 
$backpath="..";
include_once("$backpath/onn.php");

if (!isset($_GET["name"])){
   include("index.php");
   die();
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

if (!isset($index[$num])){
   writeln("Нет такой фотографии...");
   die();
}


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
<title><?="Фото $num &#8212; $index[title]"?></title>
<link rel="stylesheet" href="show_lite.css"/>
</head>
<body>
<table><tr class="main">
<?php 
writeln("<td class=\"nav\"><div class=\"leftright\">");
if ($num>1)
   writeln("<a href=\"{$PHP_NAME}?num=".($num-1)."&amp;name=$name\">&lt;&lt;</a><br/>"); 
else writeln("&nbsp;<br/>"); 
writeln("<b>$num</b> из $index[num]<br/>");
if ($num<$index["num"])
   writeln("<a href=\"{$PHP_NAME}?num=".($num+1)."&amp;name=$name\">&gt;&gt;</a>");
else writeln("&nbsp;");
writeln("</div>");
writeln("<a href=\"show_1x1.php?num=$num&amp;name=$name\">1:1</a>");
writeln("<br/><a href=\"show_all.php?name=$name\">Назад</a>"); 
writeln("</td><td class=\"img\">");
if (isset($index[$num]['fullname'])) {
   $fname="$name/{$index[$num]['fullname']}";
}
else {
   $fname="$name/img$num.$index[extfull]";
}

$pi=pathinfo($fname);
if ($pi['extension']=="mov")
    writeln("<iframe src=\"$fname\"></iframe>");
else
  writeln("<img src=\"$fname\" height=\"500\" alt=\"\"/>");

?>
</td></tr></table>
<?php 
if (isset($index[$num]["comment"]))
   writeln("<center>{$index[$num]["comment"]}</center>");
   
ob_end_flush();
if ($wrong_url_was){
     writeln(<<<DATA
       <script language="javascript">
       alert("Wrong URLs found");
       </script>
DATA
      );
      trigger_error("Wrong URLs found",E_USER_WARNING);
}
?>
</body>
</html>