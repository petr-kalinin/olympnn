<?
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI XII/���������� ���","���������� ���������� ���� XI ������������� ��������� ���������",array("/style.css","/ije_proc.css"));
?>
<h1>XII ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>��������������� ���������� ����������� ����</h2>
<p>�� ���� ��������, ��������� � ������������ � �������������, ����� ������ ����� �������� �� petr 
AT kalinin ����� nnov ����� ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
