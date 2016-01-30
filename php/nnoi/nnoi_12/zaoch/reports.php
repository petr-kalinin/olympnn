<?
$backpath="../../..";
include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");
startonn("/Город/NNOI XII/Отборочный тур","Протокол тестирования отборочного туры XI Нижегородской городской олимпиады",array("/style.css","/ije_proc.css"));
?>
<h1>XII Нижегородская городская олимпиада школьников по информатике, отборочный тур</h1>
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
   if (isset($_GET["id"])and(isset($_GET["time"]))) {
      $time=(int)$_GET["time"];
      $id=(int)$_GET["id"];
      $fname=sprintf("reports/%s/%s_%s_%04d_%04d.xml",$prob,$boy,$prob,$time,$id);
      if (file_exists($fname))
        ije_showreport($fname,"results/addinfo.txt","results/results.xml");
      else writeln("Протокол тестирования не найден");
   } else {
      $fmask=sprintf("reports/%s/%s_%s_*.xml",$prob,$boy,$prob,$time,$id);
      $files=glob($fmask);
      if (count($files)==0)
         writeln("<p>Попыток по задаче не было</p>");
      else {
        writeln("<p>Выберите попытку (в зачет шла лучшая из просмотренных попыток (или последняя), но протоколы тестирования доступны по всем):</p>\n<ul>");
        foreach($files as $file) {
            sscanf($file, "reports/{$prob}/{$boy}_{$prob}_%d_%d.xml", $time, $id);
            writeln("<li><a href='reports.php?contestant=$boy&amp;prob=$prob&amp;time=$time&amp;id=$id'>Попытка $id, время $time минут(ы) с начала тура</a></li>");
        }
        writeln("</ul>");
      }
   }
} else writeln("Протокол тестирования не найден");
endonn();
?>
