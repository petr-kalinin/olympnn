<?
$backpath=".";

include_once("$backpath/onn.php");

startonn("/","����������� ����������� � ������ ���������",array("/style.css","/index.css"));
?>
<h1>� �����</h1>
<p>
�� ���������� �� �����, ����������� ����������� ����������� � ������ ���������. ��� &#8212; 
����������� ���� ������������� ��������� �������� ���������� �� �����������; �� ���� ����� 
����� ��������� ����������, ����������� � ������ ������������ � ������ ����� "��������� ����" 
��. ����������, ���������� � ����� "��������" ������������� ������� � ���������� � ������ 
������� ������������� �����������.
</p>

<?
include_once("news/news.php");
$was=false;
foreach($news as $day=>$new){
  if (time()<$new["expire"]){
     if (!$was){
        writeln("<h1>��������� �������</h1>");
        writeln("<ul>");
        $was=true;
     }
     shownews($day);
  }
}
if ($was) {
   writeln("</ul>");
   writeln("<div class=\"allnews\"><a href=\"news/index.php\">��� �������</a></div>");
}
?>

<?/*<h1>LOI-2007</h1>
<p>
<a href="/borlndmm.dll">������� ���������� borlndmm.dll</a>, ����������� ��� ������� IJE (���� 
��������� �� � �������, ��� ��������� exe-����� IJE, ���� � �����-������ �������, ����������� � 
path).</p>*/?>

<h1>������� �����</h1>
<ul>
<li><a href="/news/index.php">�������</a> &#8212; ������� ������������� ����������� �����������</li>
<li><a href="/nnoi/index.php">�����</a> &#8212; ������������� ��������� ��������� ���������� �� �����������</li>
<li><a href="/book/index.php">�����</a> &#8212; ����� "������������� ��������� ��������� ���������� �� �����������" (2005 &#8212; 2010)</li>
<?/*<li><a href="/photo/index.php">����������</a> &#8212; ���������� � ������ ������� ������������� �����������</li>*/?>
<?/*<li><a href="/hrefs/index.php">������</a> &#8212; ������ �� ������ �������� �����</li>*/?>
</ul>

<h1>������� Orphus</h1>
<p>
�� ���� ����� ����������� ������� Orphus. ���� �� ������� �� ����� ������, �������� � �.�., �� 
������ �������� �� ������ � ������� Ctrl-Enter &#8212; � ��������� �� ������ ����� ���������� 
�������������� �����. ��� ������� � ��� ���� ������, ���� �������� ��������� ��� ������.
</p>

<?
endonn();
?>
