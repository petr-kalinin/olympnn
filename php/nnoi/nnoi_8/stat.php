<?
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI VIII/Результаты","Статистика VIII Нижегородской городской олимпиады школьников по информатике",array("/style.css","/ije_proc.css"));
?>
<h1>VIII Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Статистика</h2>
<?
if (isset($_GET["prob"])) {
   loadxml("results/results.xml",$results);
   if (($_GET["prob"]=='all')or isset($results["results"]["problems"][$_GET["prob"]]))
      ije_showstat("nnoi/nnoi_7/results/results.xml",$_GET["prob"]);
   else writeln("Задача ".htmlspecialchars($_GET["prob"])." не найдена...");
} else writeln("Задача не найдена...");
endonn();
?>
