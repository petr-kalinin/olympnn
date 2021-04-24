<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XVII/Отборочный тур","Результаты отброчного тура XVII Нижегородской олимпиады",array("/style.css","/ije_proc.css"));
?>
<h1>XVII Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Предварительные результаты отборочного тура</h2>
<p>Окончательные результаты и проходные баллы на основной тур олимпиады будут известны до 9 мая 2021 г.</p>
<p>По всем вопросам, связанным с результатами и тестированием, можно писать Петру Калинину на petr 
AT kalinin ТОЧКА nnov ТОЧКА ru.<p>
<?php 
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
