<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI VIII/Результаты","Результаты VIII Нижегородской городской олимпиады школьников по информатике",array("/style.css","/ije_proc.css"));
?>
<h1>VIII Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Результаты</h2>
<p>Для печати: <a href="archive/nnoi8_results.pdf">nnoi8_results.pdf</a>.</p>
<p>По всем вопросам, связанным с результатами и тестированием, можно писать Петру Калинину на petr 
AT kalinin ТОЧКА nnov ТОЧКА ru.<p>
<?
ije_showresults("results/results.xml","results/addinfo.txt",true,"reports.php","results/more_data.xml");
endonn();
?>
