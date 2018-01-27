<?php 
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XIV/Отборочный тур","Статистика отборочного тура XIV Нижегородской городской олимпиады",array("/style.css","/ije_proc.css"));
?>
<h1>Отборочный тур XIV Нижегородской городской олимпиады школьников по информатике</h1>
<h2>Статистика</h2>
<?php 
if (isset($_GET["prob"])) {
   loadxml("results/results.xml",$results);
   if (($_GET["prob"]=='all')or isset($results["results"]["problems"][$_GET["prob"]]))
      ije_showstat("nnoi/nnoi_13/zaoch/results/results.xml",$_GET["prob"]);
   else writeln("Задача ".htmlspecialchars($_GET["prob"])." не найдена...");
} else writeln("Задача не найдена...");
endonn();
?>
