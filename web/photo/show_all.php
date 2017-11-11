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

startonn("/����������/$index[shorttitle]","$index[title]",array("/style.css","show_all.css"));


writeln("$index[head]");
?>
<div class="hr"></div>
<p class="topcomment">�� ���� �������� ������������ ���� ������; ��� ����� ���� ����� ������� ��������, ��� ���������.
����� ���������� �������� ����������, �������� �� �� ������.
����� ���������� �������� ���������� � �������� 1:1, �������� �� ������ 1:1
</p>
<?php if (!isset($index["nomov"])){?>
<p class="topcomment">
<span class="att">��������!</span>
��� ������������ �������� ����� .mov ����� �� ���������������, ������ ����� ����� ���������� 
����������� ����� ������� ��������������� ����. ����� �����������, ��������� ��� ��
������� ����� � ������������� off-line (������, ������, ��� ������ ������� &#8212;
��������� ��������). ��� ���� ��, ����� ������������� ����� � ������ ��������,
��������, ����� ���������� �� ����� ������ ������ QuickTime � ���������������� ���, ����� ��
������� ��� plug-in � �������� (������ ����� ��� ����� ��������� �������� ����� ������������
������ ��� ��� �������� ��������).
</p>
<?php }?>
<?php 
  function put($i) {
    global $index,$name;
    if (isset($index[$i]['group'])) writeln("<H3>".$index[$i]['group']."</H3>");
    writeln("<p class=\"photo\"><a href=\"show_lite.php?num=$i&amp;name=$name\" title=\"���������� ������\">");
    if (!isset($index[$i]['smallname'])) 
       write("<img src=\"$name/img{$i}sm.$index[extsmall]\" alt=\"���� $i\" class=\"photo\"/>");
    else
       write("<img src=\"$name/{$index[$i]['smallname']}\" alt=\"���� $i\" class=\"photo\"/>");
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
      writeln("<span class=\"addcomment\"> ������ ��������� ".
      str_replace(" ","&nbsp;",number_format(filesize($fn),0,''," "))
      ." � </span></a>");     
    else
      writeln("<span class=\"addcomment\"> �������� ��� �� �������� �� ������...</span></a>");
    writeln("<a href=\"show_1x1.php?num=$i&amp;name=$name\" title=\"���������� ������ 1:1\" class=\"fullsize\">1:1</a>");
    writeln("</p>");
    writeln("<div class=\"sep\"></div>");
    
  }

showp($index['num'],'put');

endonn();
?>