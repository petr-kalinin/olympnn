<?php 
$backpath="../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI XVIII","XVIII ������������� ��������� ���������� �� �����������");

function print_many_files($files,$header){
foreach ($files as $file=>$info){
  if ($info["comment"]!="") $info["comment"]=", ".$info["comment"];
  print <<<DATA
  <li>$header: <a href="$file">$file</a>$info[comment] ($info[format], ������ 
DATA
  .str_replace(" ","&nbsp;",number_format(filesize($file),0,''," "))."&nbsp;�.).</li>\n";
}
}

function print_file($fname,$text="",$format="����� 7-zip"){
print_many_files(array($fname=>array("comment"=>"","format"=>$format)),$text);
}

?>
<h1>XVIII ������������� ��������� ���������� �� �����������</h1>
<p>
XVIII ������������� ��������� ���������� �� ����������� ��. �.&nbsp;�. ������ ��������� 28 ��� 2022&nbsp;�. 
� <a href="http://www.unn.ru/">������������� ��������������� ������������ ��. �.�. ������������</a>.
</p>
<ul>
<li><a href="general.php">����� ���������� � ���������� ��������� � ������� ������ ������</a></li>
<?php /* <li><a href="https://forms.gle/xsjkM3hWC6yts5ro9">����� ������ ������</a></li> */ ?>
</ul>
<h2>�������� ���</h2>
<ul>
<li><a href="participants.php">�������� ������ ���������� ��������� ����</a></li>
<li><a href="https://nnoi2022.contest.codeforces.com/group/kWyGXwIvYI/contest/382708">������ ��������� ����</a></li>
<li><a href="https://nnoi2022.contest.codeforces.com/group/kWyGXwIvYI/contest/382708/standings">���������� ��������� ����</a><br>
������ 4 ��������� ���� ���������� ��������� 1 �������, ��������� � 5 �� 13 ����� � ��������� 2 �������, � 14 �� 22 ����� � ��������� 3 �������.</li>
<?php print_file("nnoi2022_problems.7z","��� �������� ��������� �� ������� (���������� ������, ��������� �������, ����������� ���������, ������� ���� � �.�.)"); ?>
</ul>
<h2>�����</h2>
<ul>
<li><a href="https://nnoi2022.contest.codeforces.com/group/kWyGXwIvYI/contest/382707">������� ����������� ����</a></li>
<li><a href="https://nnoi2022.contest.codeforces.com/group/kWyGXwIvYI/contest/382707/standings">���������� ����������� ����</a></li>
<?php /* <li><a href="zaoch/tests.7z">����� � ����������� ����</a></li>
<li><a href="zaoch/outputs.7z">��������� ������������ ����������� ����</a></li> */ ?>
</ul>
<div class="logos">
<a href="http://unn.ru"><img src="http://www.unn.ru/site/images/brand/unn_logo_ru.png"/></a>
</div>
<?php 
endonn();
?>
