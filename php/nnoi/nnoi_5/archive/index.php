<?
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/�����/NNOI V/�����","����� V ������������� ��������� ��������� ���������� �� �����������");

function print_file($fname,$format="����� WinRar"){
print "���� <a href=\"$fname\">$fname</a> ($format, ������ ".
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
��� ����������� ��������� ��������� (c) 2008-2009 <a href="../taskauthors.php">������ �����</a> V �������������
��������� ��������� ���������� �� �����������: �.&nbsp;�.&nbsp;���������, �.&nbsp;�.&nbsp;�������, 
�.&nbsp;�.&nbsp;�������, �.&nbsp;�.&nbsp;�����, �.&nbsp;�.&nbsp;����������, �.&nbsp;�.&nbsp;����������, �.&nbsp;�.&nbsp;�������, �.&nbsp;�.&nbsp;��������.
</p>

<div class="hr"></div>

<h2>����� "��������"</h2>
<p class="bottomzero"><?print_file("nnoi5_base.rar");?></p>
<ul>
<li>����� �� ���� ������� (������� � ������������� :) )</li>
<li>������� ���� ����������</li>
<li>��������� ������������ ���� ����������</li>
<li>����������, ������� � ������ �������� ��������� � ������� pdf</li>
<li>������� ����</li>
</ul>

<div class="hr"></div>

<h2>����� "�����������"</h2>
<p class="bottomzero"><?print_file("nnoi5_adv.rar");?></p>
<ul>
<li>����������� ������� IJE, ���������� �� ���������, �� ����, ��� � ��� ���� (�����,
������� ����������, ��������� ������������, ����������)</li>
<li>��������� ����������� ������� IJE &#8212; the Integrated Judging Enviroment 5.0 rev 207</li>
<li>"���������" (� LaTeX) ������� � ������ �������� ����������,</li>
<li>������� ����</li>
</ul>

<div class="hr"></div>

<h2>�������������� ������</h2>
<p>
��� ���������, �������� � ��� ������, ���������� � � "�����������" ������, � ����������� �� ��� 
&#8212; � � "��������".
</p>

<p class="bottomzero"><?print_file("nnoi5_ije.rar");?></p>
<ul>
<li>����������� ������� IJE, ���������� �� ���������, �� ����, ��� � ��� ���� (�����,
������� ����������, ��������� ������������, ����������)</li>
</ul>

<p class="bottomzero"><?print_file("ije_50_d_rev207.rar");?></p>
<ul>
<li>��������� ����������� ������� IJE &#8212; the Integrated Judging Enviroment 5.0 rev 207</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_printouts.rar");?></p>
<ul>
<li>�������, ���������� � ������ �������� ��������� (� ������� pdf)</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_printouts_tex.rar");?></p>
<ul>
<li>"���������" ������� � ������ �������� ���������� (� ������� LaTeX)</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_protocols.rar");?></p>
<ul>
<li>��������� ������������ ���� ���������� � ������� xml</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_results.pdf","�������� pdf");?></p>
<ul>
<li>���������� ��������� � ������� pdf</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_sols_all.rar");?></p>
<ul>
<li>������� ���� ����������</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_sols_jury.rar");?></p>
<ul>
<li>������� ����</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_tests.rar");?></p>
<ul>
<li>������� � ������������� �����</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_tests_gen.rar");?></p>
<ul>
<li>���������� ������</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_units.rar");?></p>
<ul>
<li>������, ����������� ��� ���������� ����������� ������ � ����������� 
�������� (��� �������� � ��������� ������, � ������� �������� � �����, �������, 
������ �����, �� ��������� �������� �� �����������).</li> 
</ul>

<?
endonn();
?>
