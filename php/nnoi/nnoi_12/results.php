<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI XII/����������","���������� XII ������������� ��������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>XII ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<p>��� ������: <a href="archive/nnoi2016_results.pdf">nnoi2016_results.pdf</a>.</p>
<p>�� ���� ��������, ��������� � ������������ � �������������, ����� ������ ����� �������� �� petr 
AT kalinin ����� nnov ����� ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"","results/more_data.xml");
endonn();
?>
