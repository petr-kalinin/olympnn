<?php 
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI VI/����������","���������� VI ������������� ��������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>VI ������������� ��������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<p>�� ���� ��������, ��������� � ������������ � �������������, ����� ������ ����� �������� �� petr 
AT kalinin ����� nnov ����� ru.
<?php 
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
