<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XII/Результаты","Результаты XII Нижегородской городской олимпиады школьников по информатике",array("/style.css","/ije_proc.css"));
?>
<h1>XII Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Результаты</h2>
<p>Для печати: <a href="archive/nnoi2016_results.pdf">nnoi2016_results.pdf</a>.</p>
<p>По всем вопросам, связанным с результатами и тестированием, можно писать Петру Калинину на petr 
AT kalinin ТОЧКА nnov ТОЧКА ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"","results/more_data.xml");
endonn();
?>
