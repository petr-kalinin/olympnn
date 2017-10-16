<?
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI V/Архив","Архив V Нижегородской городской олимпиады школьников по информатике");

function print_file($fname,$format="архив WinRar"){
print "Файл <a href=\"$fname\">$fname</a> ($format, размер ".
str_replace(" ","&nbsp;",number_format(filesize($fname),0,''," "))."&nbsp;б.) содержит:";
}

?>
<h1>Архив</h1>
<p>доступен в следующих двух вариантах:</p>
<ul>
<li><b>Архив "Основной"</b>, содержащий основные материалы олимпиады,</li>
<li><b>Архив "Продвинутый"</b>, содержащий все материалы олимпиады.</li>
</ul>
<p>
Кроме того, некоторые материалы олимпиады доступны в отдельных архивах (см. ниже).
</p><p>
Все электронные материалы олимпиады (c) 2008-2009 <a href="../taskauthors.php">Авторы задач</a> V Нижегородской
городской олимпиады школьников по информатике: Д.&nbsp;И.&nbsp;Бударагин, П.&nbsp;А.&nbsp;Калинин, 
А.&nbsp;А.&nbsp;Круглов, В.&nbsp;Д.&nbsp;Лелюх, О.&nbsp;Б.&nbsp;Побуринная, И.&nbsp;П.&nbsp;Разенштейн, Р.&nbsp;И.&nbsp;Тимушев, И.&nbsp;М.&nbsp;Хаймович.
</p>

<div class="hr"></div>

<h2>Архив "Основной"</h2>
<p class="bottomzero"><?print_file("nnoi5_base.rar");?></p>
<ul>
<li>Тесты ко всем задачам (готовые к использованию :) )</li>
<li>Решения всех участников</li>
<li>Протоколы тестирования всех участников</li>
<li>Результаты, условия и другие печатные материалы в формате pdf</li>
<li>Решения жюри</li>
</ul>

<div class="hr"></div>

<h2>Архив "Продвинутый"</h2>
<p class="bottomzero"><?print_file("nnoi5_adv.rar");?></p>
<ul>
<li>Тестирующую систему IJE, работавшую на олимпиаде, со всем, что в ней есть (тесты,
решения участников, протоколы тестирования, результаты)</li>
<li>Исходники тестирующей системы IJE &#8212; the Integrated Judging Enviroment 5.0 rev 207</li>
<li>"Исходники" (в LaTeX) условий и других печатных материалов,</li>
<li>Решения жюри</li>
</ul>

<div class="hr"></div>

<h2>Дополнительные архивы</h2>
<p>
Все материалы, входящие в эти архивы, содержатся и в "продвинутом" архиве, а большинство из них 
&#8212; и в "основном".
</p>

<p class="bottomzero"><?print_file("nnoi5_ije.rar");?></p>
<ul>
<li>Тестирующую систему IJE, работавшую на олимпиаде, со всем, что в ней есть (тесты,
решения участников, протоколы тестирования, результаты)</li>
</ul>

<p class="bottomzero"><?print_file("ije_50_d_rev207.rar");?></p>
<ul>
<li>Исходники тестирующей системы IJE &#8212; the Integrated Judging Enviroment 5.0 rev 207</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_printouts.rar");?></p>
<ul>
<li>Условия, результаты и другие печатные материалы (в формате pdf)</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_printouts_tex.rar");?></p>
<ul>
<li>"Исходники" условий и других печатных материалов (в формате LaTeX)</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_protocols.rar");?></p>
<ul>
<li>Протоколы тестирования всех участников в формате xml</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_results.pdf","документ pdf");?></p>
<ul>
<li>Результаты олимпиады в формате pdf</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_sols_all.rar");?></p>
<ul>
<li>Решения всех участников</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_sols_jury.rar");?></p>
<ul>
<li>Решения жюри</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_tests.rar");?></p>
<ul>
<li>Готовые к использованию тесты</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_tests_gen.rar");?></p>
<ul>
<li>Генераторы тестов</li>
</ul>

<p class="bottomzero"><?print_file("nnoi5_units.rar");?></p>
<ul>
<li>Модули, необходимые для компиляции генераторов тестов и тестирующих 
программ (они включены в остальные архивы, в которые включены и тесты, поэтому, 
скорее всего, их скачивать отдельно не понадобится).</li> 
</ul>

<?
endonn();
?>
