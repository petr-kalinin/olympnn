<?php 
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI XV/����������","���������� XV ������������� ��������� ���������",array("/style.css","/ije_proc.css"));
?>
<h1>XV ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<?php 
if (isset($_GET["prob"])) {
   loadxml("results/results.xml",$results);
   if (($_GET["prob"]=='all')or isset($results["results"]["problems"][$_GET["prob"]]))
      ije_showstat("nnoi/nnoi_15/results/results.xml",$_GET["prob"]);
   else writeln("������ ".htmlspecialchars($_GET["prob"])." �� �������...");
} else writeln("������ �� �������...");
endonn();
?>
