<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI XI/Архив","Архив XI Нижегородской городской олимпиады школьников по информатике");

function print_many_files($files,$header){
printf("<p class=\"bottomzero\">$header: </p>\n<ul>");
foreach ($files as $file=>$info){
  if ($info["comment"]!="") $info["comment"]=", ".$info["comment"];
  print <<<DATA
  <li><a href="$file">$file</a>$info[comment] ($info[format], размер 
DATA
  .str_replace(" ","&nbsp;",number_format(filesize($file),0,''," "))."&nbsp;б.).</li>\n";
}
printf("</ul>");
}

function print_file($fname,$text="",$format="архив 7-zip"){
print_many_files(array($fname=>array("comment"=>"","format"=>$format)),$text);
}

?>
<h1>Архив</h1>

<p>Для распаковки архивов 7-zip можно скачать open-source архиватор 7-zip с сайта <a 
href="http://www.7-zip.org/">http://www.7-zip.org/</a>.</p>

<?php 
//print_file("nnoi2015_ije_lite.7z","IJE Lite, подготовленая для тестирования решений на полном наборе тестов. Содержит и сами тесты. (См. <a href='ije_lite.php'>инструкцию по установке</a>)");

print_file("nnoi2015_tests.7z","Все материалы по задачам (тесты, исходники условий, проверяющие программы, решения жюри и т.д.)");

//print_file("nnoi2015_examples.7z","Тесты из примеров");

print_file("nnoi2015_sols_all.7z","Все посылки всех участников");

//print_file("nnoi2015_sols_jury.7z","Решения жюри");

print_file("nnoi2015_statements.pdf","Условия","файл pdf");

print_file("nnoi2015_results.pdf","Результаты","файл pdf");

//print_file("nnoi2015_problems.7z","Задачи с генераторами тестов, сгенерированными тестами, исходными текстами условий, решениями жюри, проверяющими программами и т.д.");

print_file("nnoi2015_book_a5.pdf","Книжка с разбором в формате a5","файл pdf");
print_file("nnoi2015_book_2xa5.pdf","Книжка с разбором по две последовательные страницы a5 на странице a4","файл pdf");
print_file("nnoi2015_book_a4.pdf","Книжка с разбором, подготовленная для двухсторонней печати на страницах a4 и последующего брошюрования в книжку a5","файл pdf");

//print_file("nnoi2015_TeX.7z","TeX-исходники всех печатных материалов (условий, разборов, памятки участника)");

print_file("nnoi2015_outputs.7z", <<<DATA
Подробная информация по тестированию задач, содержащая по каждому 
решению: 
исходный код решения,
протокол компиляции,
скомпилированный .exe-файл,
общий протокол тестирования;
по каждому тесту:
входной файл,
выходной файл, сформированный программой участника,
правильный выходной файл,
результат работы проверяющей программы.
<span class="att">Внимание! В распакованном виде архив занимает 1 Гб!</span>
DATA
);

//print_file("nnoi2015_ije.7z","Архив тестирующей системы, работавшей на олимпиаде (включает тесты в каталоге tests, решения участников в каталоге sols, и т.д.)");

endonn();
?>
