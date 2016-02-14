<?
$backpath="../../..";
include_once("$backpath/onn.php");
startonn("/Город/NNOI XII/Архив","Архив XII Нижегородской городской олимпиады школьников по информатике");

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

<?
print_file("nnoi2016_problems.7z","Все материалы по задачам (тесты, исходники условий, проверяющие программы, решения жюри и т.д.)");
?>
<p>Примечание: в задаче 2 тестирующая система была настроена так, что если во всех тестах, которые прошло решение участника (не считая тестов из условия) ответы совпадают, то эти тесты не засчитывались и решение получало 0 баллов.</p>
<?

print_file("nnoi2016_sols_all.7z","Все посылки всех участников");

print_file("nnoi2016_statements.pdf","Условия","файл pdf");

print_file("nnoi2016_results.pdf","Результаты","файл pdf");

print_file("nnoi2016_book_a5.pdf","Книжка с разбором в формате a5","файл pdf");
print_file("nnoi2016_book_2xa5.pdf","Книжка с разбором по две последовательные страницы a5 на странице a4","файл pdf");
print_file("nnoi2016_book_a4.pdf","Книжка с разбором, подготовленная для двухсторонней печати на страницах a4 и последующего брошюрования в книжку a5","файл pdf");

print_file("nnoi2016_outputs.7z", <<<DATA
Подробная информация по тестированию задач, содержащая по каждому 
решению: 
исходный код решения,
протокол компиляции,
скомпилированный .exe-файл,
общий протокол тестирования;
по каждому тесту:
выходной файл, сформированный программой участника,
результат работы проверяющей программы.
<span class="att">Внимание! В распакованном виде архив занимает 400 Мб!</span>
DATA
);

endonn();
?>
