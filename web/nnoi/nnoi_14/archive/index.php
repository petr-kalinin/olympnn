<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI XIV/Архив","Архив XIV Нижегородской городской олимпиады школьников по информатике");

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
print_file("nnoi2018_problems.zip","Все материалы по задачам (тесты, исходники условий, проверяющие программы, решения жюри и т.д.)");

print_file("nnoi2018_sols_all.7z","Все посылки всех участников");

print_file("nnoi2018_statements.pdf","Условия","файл pdf");

print_file("nnoi2018_results.pdf","Результаты","файл pdf");

printf("<p class=\"bottomzero\">Книжка с разбором:</p><ul><li>будет позже</li></ul>\n");

//print_file("nnoi2017_book_a5.pdf","Книжка с разбором в формате a5","файл pdf");
//print_file("nnoi2017_book_2xa5.pdf","Книжка с разбором по две последовательные страницы a5 на странице a4","файл pdf");
//print_file("nnoi2017_book_a4.pdf","Книжка с разбором, подготовленная для двухсторонней печати на страницах a4 и последующего брошюрования в книжку a5","файл pdf");

print_file("nnoi2018_outputs.7z", <<<DATA
Подробная информация по тестированию задач, содержащая по каждому 
решению: 
исходный код решения,
протокол компиляции,
скомпилированный .exe-файл,
общий протокол тестирования;
по каждому тесту:
выходной файл, сформированный программой участника,
результат работы проверяющей программы.
<span class="att">Внимание! В распакованном виде архив занимает 1 Гб!</span>
DATA
);

endonn();
?>
