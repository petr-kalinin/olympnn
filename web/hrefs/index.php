<?php 
$backpath="..";
include_once("$backpath/onn.php");
startonn("/������","�������� ������");

function display_href($href,$text){
print("<li><a href=\"$href\">$href</a>: $text</li>\n");
}
?>
<h1>�������� ������</h1>
<h2>����� �� ����������</h2>
<ul>
<?php 
display_href("http://ioinformatics.org","����������� ���� ������������� �������� ���������� �� �����������");
display_href("http://olympiads.win.tue.nl","������������� ���� � ������������� ���������� ���������� (��� ��������)");
display_href("http://neerc.ifmo.ru","����������� ���� the Nort-Eastern European Regional Contest of the ACM International Collegiate Programming Contest");
display_href("http://neerc.ifmo.ru/school","�����-������������� ���� �� ���������� ���������� �� �����������. ������� ����� �����, ��������-���������");
display_href("http://olimpinfa.nnov.ru","���� � ��������, ��������� � ��������� ������������� ��������� ���������� �� �����������");
display_href("http://snarknews.info","������� ���������� � ������������� ������������ �� ����������������");
?>
</ul>
<h2>������ �����</h2>
<ul>
<?php 
display_href("http://acm.timus.ru","��������� ����� �����");
display_href("http://acm.uva.es","��������� ����� �����");
display_href("http://acm.sgu.ru","����������� ����� �����");
display_href("http://acm.mipt.ru","����� ����� ����");
?>
</ul>
<?php 
endonn();
?>
