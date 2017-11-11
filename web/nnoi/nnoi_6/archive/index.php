<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI VI/�����","����� VI ������������� ��������� ��������� ���������� �� �����������");

function print_file($fname,$text="",$format="����� ZIP"){
print <<<DATA
<p class="bottomzero">$text: </p>
<ul><li><a href="$fname">$fname</a> ($format, ������ 
DATA
.str_replace(" ","&nbsp;",number_format(filesize($fname),0,''," "))."&nbsp;�.).</li></ul>\n";
}

?>
<h1>�����</h1>
<p>
��� ����������� ��������� ��������� (c) 2009-2010 <a href="../taskauthors.php">������ �����</a> VI �������������
��������� ��������� ���������� �� �����������.
</p>

<div class="hr"></div>

<h2>�������� ���������</h2>

<?php 

print_file("nnoi6_printouts.zip",<<<DATA
��� �������� ��������� � ������� pdf: ������� �����, ������� ���������, ����������, ������� 
����������� �������, ������ � �������� � ������� A5 � ������ � ��������, �������������� � ������ �� 
4 �������� A5 �� ��� ������� ����� A4
DATA
);

print_file("nnoi6_results.pdf","���������� ��������� � ������� pdf (���� ����� � ������ nnoi6_printouts)","�������� pdf");

print_file("nnoi6_tasks.pdf","������� ����� (���� ����� � ������ nnoi6_printouts)","�������� pdf");

print_file("nnoi6_razbor.pdf","������ � ��������� �����, ������ A5 (���� ����� � ������ nnoi6_printouts)","�������� pdf");
?>

<h2>�������, ����� � ���������</h2>

<?php 
print_file("nnoi6_sols_all.zip","������� ���� ����������");

print_file("nnoi6_sols_jury.zip","������� ����");

print_file("nnoi6_tests.zip","������� � ������������� ����� � ���������� ������");

print_file("nnoi6_protocols.zip","��������� ������������ ���� ���������� � ������� xml");

?>


<h2>������</h2>

<?php 
print_file("nnoi6_ije.zip","����������� ������� IJE, ���������������� �� ���������, ����� ������� � �������������. �������� ����� �����, ������� ���� ���������� � �.�.");

print_file("ije_50_d_rev215.zip","��������� ����������� ������� IJE &#8212; the Integrated Judging Enviroment 5.0 rev 215");

print_file("nnoi6_units.zip",<<<DATA
������, ����������� ��� ���������� ����������� ������ � ����������� 
�������� (��� ����� �������� � ����� ������, �������, 
������ �����, �� ��������� �������� �� �����������).
DATA
);

endonn();
?>
