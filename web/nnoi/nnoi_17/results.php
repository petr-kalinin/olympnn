<?php 
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/�����/NNOI XVII/����������","���������� XVII ������������� ��������� ���������� �� �����������",array("/style.css","/ije_proc.css"));
?>
<h1>XVII ������������� ��������� ���������� �� �����������</h1>
<h2>����������</h2>
<p>��� ������: <a href="archive/nnoi2021_results.pdf">nnoi2021_results.pdf</a>.</p>
<p>�� ���� ��������, ��������� � ������������ � �������������, ����� ������ ����� �������� �� petr 
AT kalinin ����� nnov ����� ru.<p>
<?php 
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
