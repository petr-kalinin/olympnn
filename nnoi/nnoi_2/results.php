<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI II/����������","���������� II ������������� ��������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>II ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"","results/more_data.xml");
endonn();
?>
