<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI IV/�����","����� IV ������������� ��������� ��������� ���������� �� �����������");

function print_file($fname){
print "���� <a href=\"$fname\">$fname</a> (����� WinRar, ������ ".
str_replace(" ","&nbsp;",number_format(filesize($fname),0,''," "))."&nbsp;�.) ��������:";
}

?>
<h1>�����</h1>
<p>�������� � ��������� ���� ���������:</p>
<ul>
<li><b>����� "��������"</b>, ���������� �������� ��������� ���������,</li>
<li><b>����� "�����������"</b>, ���������� ��� ��������� ���������.</li>
</ul>
<p>
����� ����, ��������� ��������� ��������� �������� � ��������� ������� (��. ����).
</p><p>
��� ����������� ��������� ��������� (c) 2007-2008 <a href="../taskauthors.php">������ �����</a> IV �������������
��������� ��������� ���������� �� �����������: �.&nbsp;�.&nbsp;���������, �.&nbsp;�.&nbsp;�������, 
�.&nbsp;�.&nbsp;�������, �.&nbsp;�.&nbsp;�����, �.&nbsp;�.&nbsp;����������, �.&nbsp;�.&nbsp;�������, �.&nbsp;�.&nbsp;��������.
</p>

<div class="hr"></div>

<h2>����� "��������"</h2>
<p class="bottomzero"><?php print_file("nnoi4_base.rar");?></p>
<ul>
<li>����� �� ���� ������� (������� � ������������� :) )</li>
<li>������� ���� ����������</li>
<li>��������� ������������ ���� ����������</li>
<li>����������, ������� � ������ �������� ��������� � ������� pdf</li>
<li>������� ����</li>
</ul>

<div class="hr"></div>

<h2>����� "�����������"</h2>
<p class="bottomzero"><?php print_file("nnoi4_adv.rar");?></p>
<ul>
<li>����������� ������� IJE, ���������� �� ���������, �� ����, ��� � ��� ���� (���������� ������,
������� ����������, ��������� ������������, ����������)</li>
<li>��������� ����������� ������� IJE &#8212; the Integrated Judging Enviroment 5.0 rev 200</li>
<li>"���������" (� TeX'�) ������� � ������ �������� ����������, 
� ����� ������� � ������ ��������� � �������� ps � pdf</li>
<li>������� ����</li>
</ul>

<div class="hr"></div>

<h2>�������������� ������</h2>
<p>
��� ���������, �������� � ��� ������, ���������� � � "�����������" ������, � ����������� �� ��� 
&#8212; � � "��������".
</p>

<p class="bottomzero"><?php print_file("nnoi4_add_ije.rar");?></p>
<ul>
<li>����������� ������� IJE, ���������� �� ���������, �� ����, ��� � ��� ���� (���������� ������,
������� ����������, ��������� ������������, ����������)</li>
</ul>

<p class="bottomzero"><?php print_file("ije_50_d_rev200.rar");?></p>
<ul>
<li>��������� ����������� ������� IJE &#8212; the Integrated Judging Enviroment 5.0 rev 200</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_problems.rar");?></p>
<ul>
<li>������� � ������ �������� ��������� (� �������� ps � pdf, � ����� �� "���������" � TeX'�)</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_results.rar");?></p>
<ul>
<li>���������� ��������� � ������ ��������</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_sols_all.rar");?></p>
<ul>
<li>������� ���� ����������</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_sols_jury.rar");?></p>
<ul>
<li>������� ����</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_tests.rar");?></p>
<ul>
<li>����� (�.�. ���������� ������ � �.�.)</li>
</ul>

<p class="bottomzero"><?php print_file("nnoi4_add_units.rar");?></p>
<ul>
<li>������, ����������� ��� ���������� ����������� ������ � ����������� 
�������� (��� �������� � ��������� ������, � ������� �������� � �����, �������, 
������ �����, �� ��������� �������� �� �����������).</li> 
</ul>

<?php 
endonn();
?>
