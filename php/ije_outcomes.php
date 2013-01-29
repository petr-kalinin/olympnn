<?
$backpath=".";

include_once("$backpath/onn.php");
include_once("$backpath/ije_proc.php");

startonn("/","Возможные результаты тестов",array("/style.css","/ije_proc.css"));

writeln("<h1>Возможные результаты тестов</h1>");

if (isset($_GET["from"])){
   $from=htmlspecialchars($_GET["from"]);
   writeln("<p><a href=\"$from?".querytoparams(array("from"=>""))."\">Назад</a></p>");
}
?>
<p>
При тестировании задачи по каждому тесту системой IJE определяется некоторый результат 
(в принципе, возможны все результаты, но как правило, некоторые невозможны,
например, dos'овская программа не может превысить никакой разумный предел памяти):
</p>
<?
writeln("<table class=\"tests\">");
foreach($ije_rustext as $o=>$c){
  writeln("<tr class=\"tr".strtolower($o)."\"><td>$o</td><td><b>$c</b><br/>$ije_lcomment[$o]</br></td></tr>");
}
writeln("</table>");

endonn();

?>
