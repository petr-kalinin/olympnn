<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI V/Результаты","Протокол тестирования V Нижегородской городской олимпиады школьников по информатике",array("/style.css","/ije_proc.css"));
?>
<h1>V Нижегородская городская олимпиада школьников по информатике</h1>
<p><a href="results.php">назад к результатам</a></p>
<h2>Протокол тестирования</h2>
<?
ije_showrepselect("results/results.xml");
loadxml("results/results.xml",$results);
if (isset($_GET["prob"])and(isset($_GET["contestant"]))){
   $prob=$_GET["prob"];
   $boy=$_GET["contestant"];
   if (!isset($results["results"]["problems"][$prob])) $prob='';
   if (!isset($results["results"]["contestants"][$boy])) $boy='';
   $fname="reports/$prob/{$boy}_$prob.xml";
}
else $fname='';
if (file_exists($fname))
   ije_showreport($fname,"results/addinfo.txt","results/results.xml");
else writeln("Протокол тестирования не найден");
endonn();
?>
