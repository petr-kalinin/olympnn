<?php 
//set_magic_quotes_runtime(0);
date_default_timezone_set("Europe/Moscow");

//turn off magic quotes, when some"\"text becomes some\"\\\"text
//Be careful: some arguments can be arrays ($_GET[$key] can be array)
if (get_magic_quotes_gpc()==1){
  foreach ($_GET as $key=>$val) 
    if (is_string($_GET[$key]))
       $_GET[$key]=stripslashes($val);
  foreach ($_POST as $key=>$val) 
    if (is_string($_POST[$key]))
       $_POST[$key]=stripslashes($val);
}

$PHP_NAME=$_SERVER["PHP_SELF"];

assert(isset($backpath));
assert(file_exists("$backpath/onn.php"));

$wrong_url_was=false;

function check_file($a){
  global $backpath,$wrong_url_was;
  
//  if (strtolower($a[2])<>$a[2]) {
//     $wrong_url_was=true;
//     $a[0].="!!!Case!!!$a[2]???";
//     return $a[0];
//  }
  if (strpos($a[0],"://")!==FALSE)
     return $a[0];
  if ($a[2]=="mailto")
     return $a[0];
     
  if ($a[2][0]=="/")
     $s="$backpath$a[2]";
  else $s=$a[2];
  
  if (!file_exists($s)){
     $wrong_url_was=true;
     $a[0].="!!!`$s`???";
  }
  return $a[0];
}

function check_urls($s){
  global $wrong_url_was;
  $s=preg_replace_callback('|(<[^<>]*?)([a-zA-Z._0-9/\-]*\.s?html)([^<>]*>)|i',"check_file",$s);
  $s=preg_replace_callback('|(<img src="?)([a-zA-Z._0-9/\-]*)("?[^<>]*(/?)>)|i',"check_file",$s);
  $s=preg_replace_callback('|(<a href="?)([a-zA-Z._0-9/\-]+)("?[^<>]*(/?)>)|i',"check_file",$s);
  return $s;
}

ob_start("check_urls",0);

function write($s=''){
print($s);
}

function writeln($s=''){
write($s."\n");
}

function loadhier(&$f,&$arr){
  $arr=array();
  $cur=&$arr;
  $stack[0]=&$cur;$nst=0;
  $s=trim(freadln($f));
  assert($s=="{");
  while (!feof($f)) {
        $s=freadln($f);
        $s=trim($s);
        if ($s=='}') {
           if ($nst==0) return;
           $nst--;
           $cur=&$stack[$nst];
        } else {
          list($left,$right)=split("=",$s,2);
          $left=trim($left);$right=trim($right);
          if (isset($cur[$left])) 
             writeln("ERROR: Argument '$left' duplicates!");
          if ($right=="")
             $right="\\";
          if ($right=='{'){
             $cur[$left]=array();
             $cur=&$cur[$left];
             $nst++;
             $stack[$nst]=&$cur;
          } else {
            if ($right[0]=='[') {
               $cur[$left]='';
               $s='';
               while (true) {
                     $s=freadln($f);
                     if ($s<>']') {
                        $s=trim($s);
                        $cur[$left]=$cur[$left].$s."\n";
                     } else break;
               }
               $cur[$left]=substr($cur[$left],0,strlen($cur[$left])-1);
            } else {
               if ($right[0]=='\\') {
                  $right=substr($right,1);
               }
               $cur[$left]=$right;
            }
            }
       }
  }
}

function savehier(&$f,$arr,$pref="",$first=true){ //$first = is it isn't recurse call
if ($first) fputs($f,"$pref{\n");
foreach($arr as $key=>$val) {
  fputs($f,"$pref$key=");
  if (is_array($val)){
     fputs($f,"{\n");  
     savehier($f,$val,$pref."  ",false);
     fputs($f,"$pref}\n");
  } else {
    if ((strpos($val,"\n")===false)and(strpos($val,"\r")===false)) {
       if ($val<>"") if (($val[0]=="\\") or ($val[0]=="{") or ($val[0]=="[")) 
          $val="\\".$val;
       fputs($f,"$val\n");
    } else {
      fputs($f,"[\n");
      $val=" ".str_replace("\n","\n ",$val);
      fputs($f,$val."\n]\n");
    }
  }
}
if ($first) fputs($f,"$pref}\n");
}

function correct_menu(&$s){
$has_sub=false;
foreach ($s as $n=>$tmp){
  $a=&$s[$n];
  if ($n[0]<>'_'){
     if (!is_array($a)){
        $s[$n]=array("_index"=>$a);
     } else correct_menu($a,$n);
     $has_sub=true;
  }
  unset($a);
}
if ($has_sub) {
   $s["_has_sub"]=1;
}
}

function write_menuitem($s,$level,$dir=''){
if (!is_array($s))
   return;
$was=false;
foreach ($s as $n=>$h){
  if (!is_array($h))
     continue;//it will be _show, _index, etc.
  if (!isset($h["_show"]))
     continue;
  if (!$was){
     $was=true;
     if ($level==0)
        writeln("\n<ul id=\"topmenu\">");
     else writeln("\n<ul>");
  }
  $dirn=$dir;
  if (isset($h["_dir"]))
     $dirn.=$h["_dir"];
  if (strstr($h["_index"],"://")!==false)
     $dirn='';
  $addtago='';
  $addtagc='';
  $classn='';
  if (isset($h["_here"])){
     $addtago='<span id="here">';
     $addtagc='</span>';
  }
  if (isset($h["_first"]))
     $classn="firstmenu";
  elseif (isset($h["_last"]))
     $classn="lastmenu";
  if ($classn<>'')
     $classn=" id=\"$classn\"";
  if (isset($h["_has_sub"]))
     $dots="...";
  else $dots="";
  write("<li><a href=\"$dirn$h[_index]\"$classn>$addtago&raquo; $n$dots$addtagc</a>");
  write_menuitem($h,$level+1,$dirn);
  writeln("</li>");
}
if ($was) writeln("</ul>");
}

function load_correct_menu($path){
global $backpath;
$f=sfopen("$backpath/_data/site.dat","r");
loadhier($f,$site);
fclose($f);
correct_menu($site);
$path=explode("/",$path);
$cur=&$site;
$pcur=&$cur;
$spath=array();
$dir="";
foreach($path as $p)
  if (!empty($p)){
     if (!isset($cur[$p])){
        writeln($p);
        assert(false);
     }
     $pcur=&$cur;
     $cur=&$cur[$p];
     if (isset($cur["_dir"]))
        $dir.=$cur["_dir"];
     $spath[]=array("name"=>$p,"index"=>$dir.$cur["_index"]);
     $cur["_show"]=1;
     foreach ($cur as $s=>$t)
       if ($s[0]<>'_'){
          $cur[$s]["_show"]="1";
       }
  }
$cur["_here"]=1;
foreach ($site as $s=>$t)
  if ($s[0]<>'_')
     $site[$s]["_show"]="1";
reset($site);
while (!is_array(current($site))) next($site);
$site[key($site)]["_first"]=1;
end($site);
while (!is_array(current($site))) prev($site);
$site[key($site)]["_last"]=1;
return array($site,$spath);
}

function startonn($path,$title,$css=array("/style.css"),$addhead=""){
global $backpath;
assert(!empty($path));
$cssstring="";
if ($css<>"") {
   if (!is_array($css)) {$css=array($css);}
   foreach($css as $c)
     $cssstring.="<link rel=\"stylesheet\" href=\"$c\"/>\n";
}
list($menu,$spath)=load_correct_menu($path);
$pathstring='<a href="/index.php">NNOI</a>';
foreach ($spath as $s)
  $pathstring.=" &raquo; <a href=\"$s[index]\">$s[name]</a>";
write(<<<DATA
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
<title>$title :: NNOI</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251"/>
$cssstring</head>
<body>

<iframe id="orphus" src="/orphus/orphus.htm#!daim@nlomyipda.snnvor.u" width="88" height="31" frameborder="0" scrolling="no"></iframe>

<div id="up_header">
$pathstring <div id="title">$title</div>
</div>

<div id="header_main">
  <a id="header_href" href="/index.php"></a>
  <div id="header_main_ins">
  <table cellspacing="0" cellpadding="0"><tr>
    <td id="header_main_left">Олимпиадная информатика</td>
    <td id="header_main_right">в Нижнем Новгороде</td>
  </tr></table>
  </div>
</div>

<div id="menu">
<h1><a href="/index.php">NNOI</a></h1>
<div id="menucontainer">
DATA
);
write_menuitem($menu,0);
write(<<<DATA
</div>
</div>

<div id="standards">
  <a href="http://validator.w3.org/check?uri=referer"><img
        src="http://www.w3.org/Icons/valid-xhtml10"
        alt="Valid XHTML 1.0 Transitional" height="31" width="88" /></a>
  <a href="http://jigsaw.w3.org/css-validator/">
    <img style="border:0;width:88px;height:31px"
       src="http://jigsaw.w3.org/css-validator/images/vcss" 
       alt="Valid CSS!" /></a>
</div>


DATA
);
/*if (!isset($_ENV["TEST_RUN"])){
} */
writeln('<div id="main">');
}

function sfopen($fn,$m){
$f=fopen($fn,$m);
if (!$f) die("<h2>Can't open file $fn in mode $m</h2>");
return $f;
}

function freadln($f){
  $s=fgets($f,1000);
  while (($s<>"")and(($s[strlen($s)-1]==chr(10))or($s[strlen($s)-1]==chr(13))))
        $s=substr($s,0,strlen($s)-1);
  return $s;
}

function endonn(){
global $wrong_url_was;
ob_end_flush();
if ($wrong_url_was){
     writeln(<<<DATA
       <script language="javascript">
       alert("Wrong URLs found");
       </script>
DATA
      );
      trigger_error("Wrong URLs found",E_USER_WARNING);
}
write(<<<DATA
</div>

<div id="bottom">Mail to: petr-at-kalinin-dot-nnov-dot-ru</div>

</body>
</html>
DATA
);
} 

function querytoparams($no=array())
{
  $sargs="";
  reset($_GET);
/*list()= is normal
*/while(list($key,$val)=each($_GET))
    if ((!isset($no[$key]))and($key<>'sessid'))
      $sargs.=htmlspecialchars("&$key=$val");
  return $sargs;
}

function querytoinputs($no=array())
{
  $sargs="";
  reset($_GET);
/*list()= is normal
*/while(list($key,$val)=each($_GET))
    if ((!isset($no[$key]))and($key<>'sessid'))
      $sargs.="<input type=\"hidden\" name=\"".htmlspecialchars($key)."\" value=\"".htmlspecialchars($val)."\"/>";
  return $sargs;
}

function showp($max,$put,$prevtext='',$aftertext='',$middletext=''){
global $start,$step,$PHP_NAME;

$params=querytoparams(array('step'=>'','start'=>''));
//writeln($params);

if (isset($_GET["start"])) $start=(int)$_GET["start"];
if (isset($_GET["step"])) $step=(int)$_GET["step"];

if (!isset($start) or ($start<=0) or ($start>$max)) {$start=1;}
if (!isset($step) or ($step<=0)) {$step=10;}
if ($step>$max) {$step=$max;}


if ($start>1)
   if ($start>$step) {$prev=$start-$step;} else $prev=1;
if ($start<=$max-$step) 
   $next=$start+$step;//if it is the last, then $start=$max-$step+1!
$last=$max-$step+1;
if ($last<1) {$last=1;}

if ($start+$step-1<=$max) 
   $fin=$start+$step-1; 
else $fin=$max;

writeln("<table class=\"showp_table\">");
writeln("<tr><td><span class=\"showp_leftright\">");
if (isset($prev))
  writeln("<a href=\"$PHP_NAME?$params&amp;step=$step&amp;start=1\" title=\"Первые\">&lt;&lt;</a> | ".
  "<a href=\"$PHP_NAME?$params&amp;step=$step&amp;start=$prev\" title=\"Предыдущие\">&lt;</a> | ");
else
  writeln("&lt;&lt; | &lt; | ");
if (isset($next))
  writeln("<a href=\"$PHP_NAME?$params&amp;step=$step&amp;start=$next\" title=\"Следующие\">&gt;</a> | ".
  "<a href=\"$PHP_NAME?$params&amp;step=$step&amp;start=$last\" title=\"Последние\">&gt;&gt;</a> |");
else
  writeln("&gt; | &gt;&gt; |");
writeln("</span> $start &#8212; $fin (всего $max)");
writeln("</td><td>");
writeln("<form method=\"get\" action=\"$PHP_NAME?$params\">");
writeln("<input type=\"hidden\" name=\"start\" value=\"$start\"/>");
$iparams=querytoinputs(array('step'=>'','start'=>''));writeln($iparams);
writeln("Показывать по");
writeln("<select name=\"step\">");
for ($i=1;$i<=$max;$i++){
    write("<option value=\"$i\"");
    if ($i==$step) write(" selected=\"selected\"");
    write(">$i</option>");
    }
writeln("</select>");
writeln("на странице");
writeln("<input type=\"submit\" value=\"&gt;&gt;\"/>");
writeln("</form>");
writeln("</td></tr></table>");

writeln("<div class=\"showp_pages\">");
if ($max/$step>17) {$sstep=ceil($max/17);} else {$sstep=$step;}
$i=1;
while ($i<$max) {
   write("<a href=\"$PHP_NAME?$params&amp;step=$sstep&amp;start=$i\">$i...</a>");
   $i+=$sstep;
}
$i=$max-$step+1;
writeln("<a href=\"$PHP_NAME?$params&amp;step=$sstep&amp;start=$i\">$max</a>");
writeln("</div>");

writeln($prevtext);
for ($i=$start;$i<=$fin;$i++) {
    $put($i);  
    if ($i<>$fin) writeln($middletext);
}
writeln($aftertext);
}

?>
