<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI V/����������","�������� ������������ V ������������� ��������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>V ������������� ��������� ��������� ���������� �� �����������</h1>
<p><a href="results.php">����� � �����������</a></p>
<h2>�������� ������������</h2>
<?
ije_showrepselect("results/results.xml");
loadxml("results/results.xml",$results);
if (isset($_GET["prob"])and(isset($_GET["contestant"]))){
   $prob=$_GET["prob"];
   $boy=$_GET["contestant"];
   if (!isset($results["results"]["problems"][$prob])) $prob='';
   if (!isset($results["results"]["contestants"][$boy])) $boy='';
   $fname="reports/$prob/{$boy}_$prob.xml";
}
else $fname='';
if (file_exists($fname))
   ije_showreport($fname,"results/addinfo.txt","results/results.xml");
else writeln("�������� ������������ �� ������");
endonn();
?>
