<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI VI/Архив","Архив VI Нижегородской городской олимпиады школьников по информатике");

function print_file($fname,$text="",$format="архив ZIP"){
print <<<DATA
<p class="bottomzero">$text: </p>
<ul><li><a href="$fname">$fname</a> ($format, размер 
DATA
.str_replace(" ","&nbsp;",number_format(filesize($fname),0,''," "))."&nbsp;б.).</li></ul>\n";
}

?>
<h1>Архив</h1>
<p>
Все электронные материалы олимпиады (c) 2009-2010 <a href="../taskauthors.php">авторы задач</a> VI Нижегородской
городской олимпиады школьников по информатике.
</p>

<div class="hr"></div>

<h2>Печатные материалы</h2>

<?php 

print_file("nnoi6_printouts.zip",<<<DATA
Все печатные материалы в формате pdf: условия задач, памятку участника, результаты, символы 
тестирующей системы, книжку с разбором в формате A5 и книжку с разбором, подготовленную к печати по 
4 страницы A5 на две стороны листа A4
DATA
);

print_file("nnoi6_results.pdf","Результаты олимпиады в формате pdf (есть также в архиве nnoi6_printouts)","документ pdf");

print_file("nnoi6_tasks.pdf","Условия задач (есть также в архиве nnoi6_printouts)","документ pdf");

print_file("nnoi6_razbor.pdf","Книжка с разборами задач, формат A5 (есть также в архиве nnoi6_printouts)","документ pdf");
?>

<h2>Решения, тесты и протоколы</h2>

<?php 
print_file("nnoi6_sols_all.zip","Решения всех участников");

print_file("nnoi6_sols_jury.zip","Решения жюри");

print_file("nnoi6_tests.zip","Готовые к использованию тесты и генераторы тестов");

print_file("nnoi6_protocols.zip","Протоколы тестирования всех участников в формате xml");

?>


<h2>Прочее</h2>

<?php 
print_file("nnoi6_ije.zip","Тестирующая система IJE, использовавшаяся на олимпиаде, почти готовая к использованию. Содержит также тесты, решения всех участников и т.д.");

print_file("ije_50_d_rev215.zip","Исходники тестирующей системы IJE &#8212; the Integrated Judging Enviroment 5.0 rev 215");

print_file("nnoi6_units.zip",<<<DATA
Модули, необходимые для компиляции генераторов тестов и тестирующих 
программ (они также включены в архив тестов, поэтому, 
скорее всего, их скачивать отдельно не понадобится).
DATA
);

endonn();
?>
