<?php 
$backpath="../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XV/Результаты","Статистика XV Нижегородской городской олимпиады",array("/style.css","/ije_proc.css"));
?>
<h1>XV Нижегородская городская олимпиада школьников по информатике</h1>
<h2>Статистика</h2>
<?php 
if (isset($_GET["prob"])) {
   loadxml("results/results.xml",$results);
   if (($_GET["prob"]=='all')or isset($results["results"]["problems"][$_GET["prob"]]))
      ije_showstat("nnoi/nnoi_15/results/results.xml",$_GET["prob"]);
   else writeln("Задача ".htmlspecialchars($_GET["prob"])." не найдена...");
} else writeln("Задача не найдена...");
endonn();
?>
