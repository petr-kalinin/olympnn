<?php 
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI III/Результаты","Результаты III Нижегородской городской олимпиады школьников по информатике",array("/style.css","/ije_proc.css"));
?>
<h1>III Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Результаты</h2>
<?php 
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
