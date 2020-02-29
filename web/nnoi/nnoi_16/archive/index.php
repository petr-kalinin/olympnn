<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI XVI/�����","����� XVI ������������� ��������� ��������� ���������� �� �����������");

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

<?php 
print_file("nnoi2020_problems.7z","��� �������� ��������� �� ������� (���������� ������, ��������� �������, ����������� ���������, ������� ���� � �.�.)");

print_file("nnoi2020_tests.7z","�������������� �����");

print_file("nnoi2020_sols_all.7z","��� ������� ���� ����������");

print_file("nnoi2020_statements.pdf","�������","���� pdf");

print_file("nnoi2020_results.pdf","����������","���� pdf");

print_file("nnoi2020_tutorials.pdf","������� �����","���� pdf");

print_file("nnoi2020_outputs.7z", <<<DATA
��������� ���������� �� ������������ �����, ���������� �� ������� 
�������: 
�������� ��� �������,
�������� ����������,
���������������� .exe-����,
����� �������� ������������;
�� ������� �����:
�������� ����, �������������� ���������� ���������,
��������� ������ ����������� ���������
DATA
);

endonn();
?>
