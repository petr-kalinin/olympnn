<?
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI XIII/���������� ���","���������� ����������� ���� XIII ������������� ��������� ���������",array("/style.css","/ije_proc.css"));
?>
<h1>���������� ��� XIII ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<?
if (isset($_GET["prob"])) {
   loadxml("results/results.xml",$results);
   if (($_GET["prob"]=='all')or isset($results["results"]["problems"][$_GET["prob"]]))
      ije_showstat("nnoi/nnoi_12/zaoch/results/results.xml",$_GET["prob"]);
   else writeln("������ ".htmlspecialchars($_GET["prob"])." �� �������...");
} else writeln("������ �� �������...");
endonn();
?>