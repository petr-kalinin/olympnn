<?
$backpath=".";

include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");

startonn("/","��������� ���������� ������",array("/style.css","/ije_proc.css"));

writeln("<h1>��������� ���������� ������</h1>");

if (isset($_GET["from"])){
   $from=htmlspecialchars($_GET["from"]);
   writeln("<p><a href=\"$from?".querytoparams(array("from"=>""))."\">�����</a></p>");
}
?>
<p>
��� ������������ ������ �� ������� ����� �������� IJE ������������ ��������� ��������� 
(� ��������, �������� ��� ����������, �� ��� �������, ��������� ����������,
��������, dos'������ ��������� �� ����� ��������� ������� �������� ������ ������):
</p>
<?
writeln("<table class=\"tests\">");
foreach($ije_rustext as $o=>$c){
  writeln("<tr class=\"tr".strtolower($o)."\"><td>$o</td><td><b>$c</b><br/>$ije_lcomment[$o]</br></td></tr>");
}
writeln("</table>");

endonn();

?>
