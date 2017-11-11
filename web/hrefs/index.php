<?php 
$backpath="..";
include_once("$backpath/onn.php");
startonn("/Ссылки","Полезные ссылки");

function display_href($href,$text){
print("<li><a href=\"$href\">$href</a>: $text</li>\n");
}
?>
<h1>Полезные ссылки</h1>
<h2>Сайты об олимпиадах</h2>
<ul>
<?php 
display_href("http://ioinformatics.org","официальный сайт международных олимпиад школьников по информатике");
display_href("http://olympiads.win.tue.nl","нидерландский сайт о международных олимпиадах школьников (все предметы)");
display_href("http://neerc.ifmo.ru","официальный сайт the Nort-Eastern European Regional Contest of the ACM International Collegiate Programming Contest");
display_href("http://neerc.ifmo.ru/school","санкт-петербургский сайт об олимпиадах школьников по информатике. Большой архив задач, интернет-олимпиады");
display_href("http://olimpinfa.nnov.ru","сайт о школьных, городских и областных нижегородских олимпидах школьников по информатике");
display_href("http://snarknews.info","новости российских и международных соревнований по программированию");
?>
</ul>
<h2>Архивы задач</h2>
<ul>
<?php 
display_href("http://acm.timus.ru","уральский архив задач");
display_href("http://acm.uva.es","испанский архив задач");
display_href("http://acm.sgu.ru","саратовский архив задач");
display_href("http://acm.mipt.ru","архив задач МФТИ");
?>
</ul>
<?php 
endonn();
?>
