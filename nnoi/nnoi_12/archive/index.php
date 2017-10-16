<?
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI XII/�����","����� XII ������������� ��������� ��������� ���������� �� �����������");

function print_many_files($files,$header){
printf("<p class=\"bottomzero\">$header: </p>\n<ul>");
foreach ($files as $file=>$info){
  if ($info["comment"]!="") $info["comment"]=", ".$info["comment"];
  print <<<DATA
  <li><a href="$file">$file</a>$info[comment] ($info[format], ������ 
DATA
  .str_replace(" ","&nbsp;",number_format(filesize($file),0,''," "))."&nbsp;�.).</li>\n";
}
printf("</ul>");
}

function print_file($fname,$text="",$format="����� 7-zip"){
print_many_files(array($fname=>array("comment"=>"","format"=>$format)),$text);
}

?>
<h1>�����</h1>

<p>��� ���������� ������� 7-zip ����� ������� open-source ��������� 7-zip � ����� <a 
href="http://www.7-zip.org/">http://www.7-zip.org/</a>.</p>

<?
print_file("nnoi2016_problems.7z","��� ��������� �� ������� (�����, ��������� �������, ����������� ���������, ������� ���� � �.�.)");
?>
<p>����������: � ������ 2 ����������� ������� ���� ��������� ���, ��� ���� �� ���� ������, ������� ������ ������� ��������� (�� ������ ������ �� �������) ������ ���������, �� ��� ����� �� ������������� � ������� �������� 0 ������.</p>
<?

print_file("nnoi2016_sols_all.7z","��� ������� ���� ����������");

print_file("nnoi2016_statements.pdf","�������","���� pdf");

print_file("nnoi2016_results.pdf","����������","���� pdf");

print_file("nnoi2016_book_a5.pdf","������ � �������� � ������� a5","���� pdf");
print_file("nnoi2016_book_2xa5.pdf","������ � �������� �� ��� ���������������� �������� a5 �� �������� a4","���� pdf");
print_file("nnoi2016_book_a4.pdf","������ � ��������, �������������� ��� ������������� ������ �� ��������� a4 � ������������ ������������ � ������ a5","���� pdf");

print_file("nnoi2016_outputs.7z", <<<DATA
��������� ���������� �� ������������ �����, ���������� �� ������� 
�������: 
�������� ��� �������,
�������� ����������,
���������������� .exe-����,
����� �������� ������������;
�� ������� �����:
�������� ����, �������������� ���������� ���������,
��������� ������ ����������� ���������.
<span class="att">��������! � ������������� ���� ����� �������� 400 ��!</span>
DATA
);

endonn();
?>
