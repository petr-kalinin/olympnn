<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI XVII/Архив","Архив XVII Нижегородской олимпиады школьников по информатике");

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
print_file("nnoi2021_problems.7z","Все исходные материалы по задачам (генераторы тестов, исходники условий, проверяющие программы, решения жюри и т.д.)");

print_file("nnoi2021_tests.7z","Сегенированные тесты");

print_file("nnoi2021_sols_all.7z","Все посылки всех участников");

print_file("nnoi2021_statements.pdf","Условия","файл pdf");

print_file("nnoi2021_results.pdf","Результаты","файл pdf");

print_file("nnoi2021_tutorials.pdf","Разборы задач","файл pdf");

print_file("nnoi2021_outputs.7z", <<<DATA
Подробная информация по тестированию задач, содержащая по каждому 
решению: 
исходный код решения,
протокол компиляции,
скомпилированный .exe-файл,
общий протокол тестирования;
по каждому тесту:
выходной файл, сформированный программой участника,
результат работы проверяющей программы
DATA
);

endonn();
?>
