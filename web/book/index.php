<?php 
$backpath="..";
include_once("$backpath/onn.php");
startonn("/�����","����� �� ��������� ����������");
?>
<h1>����� "������������� ��������� ��������� ���������� �� �����������"</h1>
<p>� ����� ������ ������ � ������ ����� ��������� �������� (2005 &#8212; 2010), ������ � ��������� �
��������� ��������. ��� ������ ��������� ��������� ������� �����������.</p>

<?php 
function print_year($n){
printf("<a href='/nnoi/nnoi_$n/taskauthors.php'>".($n+2004)."</a>, ");
}
?>

<p>������� �����, �������, ������� ������� � ������ ��������� �������� (c) 
<?php 
for ($i=1;$i<=6;$i++) print_year($i);
?>
������ ����� ��������.</p>

<?php 
function print_file($fname,$format="���� pdf"){
print "<a href=\"$fname\">$fname</a> ($format, ������ ".
str_replace(" ","&nbsp;",number_format(filesize($fname),0,''," "))."&nbsp;�.)";
}
?>
<p>����� ����� ������� ����� � ����������� ����:</p>
<ul>
<li>����� � ������� A5: <?php print_file("nnoi_book.pdf")?></li>
<li>����� � ������� A4 �� ��� ���������������� �������� A5 �� �������� A4: <?php print_file("nnoi_book_double.pdf")?></li>
<li>����� � ������� A4 �� ��� �������� A5 �� �������� A4, �������������� ��� ������ ��� ������� (��. ����): <?php print_file("nnoi_book_print.pdf")?></li>
<li>�������� ��� ����� � ������� LaTeX (��. ����): <?php print_file("nnoi_book_tex.zip","����� zip")?></li>
</ul>

<h2>���������� �� ������ ����� nnoi_book_print.pdf</h2>
<p>����������� ���� ����� �� <i>N</i> �������, ����������� ��� ������ ������� (<i>N</i> ������ ���� ������ 4). ����������� �� ��������, �������� ������� � 
�������� �����. ����� �� ������ ������� ������� ����� ����� �������� <i>N</i> � 1, �� ������� 
������� ����� &#8212; �������� 2 � <i>N-1</i>, �� ������ ����� � ����� ������� ����� �������� 
<i>N-2</i> � 3, � ������ &#8212; 4 � <i>N-3</i> � �.�.</p>

<p>� ����� nnoi_book_print.pdf �������� ����� ������������ ������ ���: �� ������ �������� ����� 
�������� <i>N</i> � 1 �����, �� ������ �������� ����� &#8212; �������� 2 � <i>N-1</i> ����� � �.�. 
������� �������� ���� ���� ���� �� ������ ������� A4 � ����� ������ (������ ��������� �� ���������� � 
������������, � ��� � ����� ������������ ���������� � ��-�� ����� ��������������� �������� ����� 
���������� �������������), ����� ���� ������ ����������� ����� � ������, �������� � ����������. 
(������, �������, ������ �� 72 ������ �������� ������ �� ������.)</p>

<h2>���������� �� ���������� ����� �� ����������</h2>

<p>����� ����������:</p>
<ul>
<li>������������� Metapost'�� ��� .mp �� ���� ������������ (��� ���� � nnoi_1/images ���������� 
��������� mp --tex=latex pic8_mp.mp, � ��������� ��������� ����� ������ ��������� mp *.mp);</li>
<li>������������� LaTeX'�� ���� book.tex � �����: latex book.tex;</li>
<li>����������� ������ ���������� bibTeX'��: bibtex book;</li>
<li>��������� latex book.tex ��� ��� ����.</li>
</ul>
<p>� ����� � ��� ��������� ���� book.dvi, � ������� ��� ����� ������ ��� ���������.</p>
<p>���� �� ��������� ��� Windows, �� ��� ���������� ���� .mp ������ ��������� ������ mp_do.cmd, � 
��� ���������� LaTeX'�� (������� ������ bibTeX'� � ����������� dvi � ps � ��������� ���������) 
&#8212; book_do.cmd.</p>

<?php 
endonn();
?>
