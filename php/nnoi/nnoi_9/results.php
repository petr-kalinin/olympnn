<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI IX/����������","���������� IX ������������� ��������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>IX ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<p>��� ������: <a href="archive/nnoi9_results.pdf">nnoi9_results.pdf</a>.</p>
<p>�� ���� ��������, ��������� � ������������ � �������������, ����� ������ ����� �������� �� petr 
AT kalinin ����� nnov ����� ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
