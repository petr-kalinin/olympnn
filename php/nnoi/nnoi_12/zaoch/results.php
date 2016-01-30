<?
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XII/Отборочный тур","Результаты отброчного тура XI Нижегородской городской олимпиады",array("/style.css","/ije_proc.css"));
?>
<h1>XII Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Предварительные результаты отборочного тура</h2>
<p>По всем вопросам, связанным с результатами и тестированием, можно писать Петру Калинину на petr 
AT kalinin ТОЧКА nnov ТОЧКА ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
