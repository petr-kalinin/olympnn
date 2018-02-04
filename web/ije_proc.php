<?php 

$ije_rustext=array(
"OK"=>'�����',                                  
"WA"=>'�������� �����',                         
"PE"=>'������� ������ �������� ������',         
"TL"=>'�������� ������ ������� ����������',     
"ML"=>'�������� ������ ������',                 
"OL"=>'�������� ������ ������� ��������� �����',
"IL"=>'�������� ������ ������� �������',        
"RE"=>'��������� ��� ��������',                 
"CR"=>'������������ ��������',                  
"SV"=>'��������� ������',                       
"NC"=>'�����, �� �� �������',                   
"CE"=>'������ ����������',                      
"NS"=>'������ �� �����',                        
"CP"=>'��������������',                         
"FL"=>'Fail',                                   
"NT"=>'�� �����������',
"PC"=>'�������� �����');

$ije_lcomment=array(
"OK"=>'���� ������� �����. ����������� ����������� ������� ������������ ����������� ����������; ��� �������, ��� &#8212; ��������� �������� � �����.',                                  
"WA"=>'�� ���� ��� �������� �����. ����������� ����������� ������� ������������ ����������� ����������; ��� �������, ��� &#8212; ����������, � ��� ������.',                         
"PE"=>'�� ����� ������� ������ �������� ������. ����������� ����������� ������� ������������ ����������� ����������; ��� �������, ��� &#8212; �������� ����������, � ��� ������.',         
"TL"=>'�� ����� �������� ������ �������',     
"ML"=>'�� ����� �������� ������ ������',                 
"OL"=>'�� ����� �������� ������ ������� ��������� �����. IJE ���� ����� �������� �� ���������, �� ��� ����� ���� �������� � ����������� ���������, ���� ��������������� ����������� ���� � ������',
"IL"=>'�� ����� �������� ������ ������� �������',        
"RE"=>'��������� ����������� � ��������� ����� �������� (exit code); � �����������, ��� �������, ����������� ���� ��� ��������',                 
"CR"=>'Windows ��������, ��� "��������� ��������� ������������ ��������". ����������� ������ ��������, � ��� ����.',
"SV"=>'��������� �������� �������; ����������� ����������, ��� ������ �� ���',
"NC"=>'���� �������, �� �� ������. ����������� ������������ ����������� ����������; ����� ����� ������, ���� �� ������ ������ ����� �� NO',
"CE"=>'��������� �� ����������������. ������ ������, ����� ��������� �� ����� ���� ����������� �����',
"NS"=>'��������� ��� ���� �� �������� ����������',
"CP"=>'��������� ��������������, ������ �������� ������������. ��� �������, ����� ��������� �� ����� ���� ����������� �����',
"FL"=>'������ ����������� �������',
"NT"=>'��������� ��� ���� �� �����������',
"PC"=>'�� ���� ��� �������� ������ �����. ����������� ����������� ������� ������������ ����������� ����������; ��� �������, ��� &#8212; ��������, ����� ����� ������� ��������� ��������� ��� �����������.');

$ije_xmltext=array(
"OK"=>'accepted',               
"WA"=>'wrong-answer',           
"PE"=>'presentation-error',     
"TL"=>'time-limit-exceeded',    
"ML"=>'memory-limit-exceeded',  
"OL"=>'output-limit-exceeded',  
"IL"=>'idleness-limit-exceeded',
"RE"=>'runtime-error',          
"CR"=>'crash',                  
"SV"=>'security-violation',     
"NC"=>'accepted-not-counted',   
"CE"=>'compilation-error',      
"NS"=>'not-submitted',          
"CP"=>'compiled-not-tested',    
"FL"=>'fail',                   
"NT"=>'not-tested',
"PC"=>'partial-correct');

$ije_ltext=array(
"OK"=>'Accepted',                    
"WA"=>'Wrong answer',                
"PE"=>'Presentation error',          
"TL"=>'Time limit exceeded',         
"ML"=>'Memory limit exceeded',       
"OL"=>'Output limit exceeded',       
"IL"=>'Idleness limit exceeded',     
"RE"=>'Runtime error',               
"CR"=>'Crash',                       
"SV"=>'Security violation',          
"NC"=>'Accepted, but not counted',   
"CE"=>'Compilation error',           
"NS"=>'Problem wasn\'t submitted',   
"CP"=>'Compiled succesfully',
"FL"=>'Tester failed',               
"NT"=>'Not tested',
"PC"=>'Partial correct'); 

include_once("$backpath/xml.php");

function ije_xmltosresult($res){
global $ije_xmltext;
if (substr($res,0,strlen($ije_xmltext["PC"]))==$ije_xmltext["PC"])
   return "PC";
else return array_search($res,$ije_xmltext);
}

function ije_loadai($file,&$ai){
  $ai=array();
  $f=sfopen($file,"r");
  $n=(int)fgets($f);
  $ai["_columns"]=array();
  for ($i=1;$i<=$n;$i++){
    $ai["_columns"][]=trim(fgets($f));
  }
  while (!feof($f)){
    $name=trim(fgets($f));
    if ($name=='') continue;
    $ai[$name]=array();
    for ($i=1;$i<=$n;$i++){
        $ai[$name][]=trim(fgets($f));
    }
  }
}

function ije_getpoints($pts){
  if ($pts["minus"]>$pts["points"])
     return 0;
  else return $pts["points"]-$pts["minus"];
}

function ije_showresults($file,$addinfo='',$hasstat=false,$rephref='',$more_data=''){
global $PHP_NAME,$sort,$results,$location,$table;

loadxml($file,$results);
$results=$results["results"];
if ($addinfo<>'') ije_loadai($addinfo,$ai);
else $ai=array("_columns"=>array());

if ($more_data<>''){
   loadxml($more_data,$md);
   $md=$md["more-data"];
}

if (isset($_GET["sort"])) {
   $sort=$_GET["sort"];
   if ((!isset($results['problems'][$sort]))and(!in_array($sort,$ai["_columns"]))and($sort<>'id'))
      $sort='all';
} else $sort='all';

if ($rephref<>'')
  writeln("<p>��� ��������� ��������� ������������ �������� �� ������ �� ������</p>");


if (isset($md["problem-names"]))
   writeln("<p>��� ��������� �������� ������ �������� ������ �� ��������� ������� ��� �� ����� �� ������</p>");

writeln("<p>��� ���������� �� ������� �������� ��� ���������</p>");

if ($sort=='all') writeln("<p>������� ������������� �� ������ �����</p>");
else if ($sort=='id') writeln("<p>������� ������������� �� �������������� ���������</p>");
else writeln("<p>������� ������������� �� ������� \"$sort\"</p>");


$table=array();
$table["_head"]=array("id"=>"Id");
foreach ($ai["_columns"] as $v) 
  $table["_head"][$v]=$v;
foreach ($results["problems"] as $pid=>$tmp) 
  $table["_head"][$pid]=$pid;
$table["_head"]["all"]="=";
if (isset($md["diploms"]))
   $table["_head"]["dipl"]="����.";

$location=array();
//var_dump($results["contestants"]);
foreach ($results["contestants"] as $id=>$pts){
  $this_submits=0;
  $table[$id]=array("id"=>$id);
  foreach ($ai["_columns"] as $col=>$colname)
     if (isset($ai[$id][$col])){
       $table[$id][$colname]=$ai[$id][$col];
     } else $table[$id][$colname]="&nbsp;";
  $s=0;
  foreach ($results["problems"] as $pid=>$tmp){
    if (isset($pts[$pid])and($pts[$pid]["outcome"]<>"not-submitted")){
       $table[$id][$pid]=ije_getpoints($pts[$pid]);
       $s+=ije_getpoints($pts[$pid]);
       $this_submits++;
    } else $table[$id][$pid]="";
  }
  if ($this_submits==0){
  }
  $table[$id]['all']=$s;
  if (isset($pts["_location"]))
     $location[$id]=$pts["_location"];
  else $location[$id]=0;
}

//var_dump($table);

$statname=array(
'submits'=>'�����',
'fullpts'=>'&nbsp;&nbsp;&nbsp;������ ������',
'nullpts'=>'&nbsp;&nbsp;&nbsp;������� ������',
'nosubmits'=>'�� �����',
'maxwas'=>'������������ ���������� ����',
'avgpts'=>'������� ����',
'disp'=>'��������. ����������',
);
$statfmt=array(
'submits'=>'%d',
'fullpts'=>'%d',
'nullpts'=>'%d',
'nosubmits'=>'%d',
'maxwas'=>'%d',
'avgpts'=>'%.1f',
'disp'=>'%.1f',
);
$stat=array();

foreach($results['problems'] as $pid=>$tmp){
  if (isset($results['contestants']['MAX'][$pid])) 
     $max=ije_getpoints($results['contestants']['MAX'][$pid]);
  else $max=-1;
  $stat[$pid]=array(
  'submits'=>0,
  'fullpts'=>0,
  'nullpts'=>0,
  'nosubmits'=>0,
  'maxwas'=>0,
  'avgpts'=>0,
  'disp'=>0,
  );
  foreach($results['contestants'] as $id=>$pts){
    if (isset($pts['_location']) and ($pts['_location']<>0))
       continue;
    if ((!isset($pts[$pid]))or($pts[$pid]["outcome"]=="not-submitted"))
       $stat[$pid]['nosubmits']++;
    else {
       $stat[$pid]['submits']++;
       $curpts=ije_getpoints($pts[$pid]);
       if (($max>=0) and($curpts==$max))
          $stat[$pid]['fullpts']++;
       if ($curpts==0)
          $stat[$pid]['nullpts']++;
       $stat[$pid]['avgpts']+=$curpts;
       $stat[$pid]['disp']+=$curpts*$curpts;
       if ($curpts>$stat[$pid]['maxwas'])
          $stat[$pid]['maxwas']=$curpts;
    }
  }
  $stat[$pid]['avgpts']=$stat[$pid]['avgpts']/($stat[$pid]['submits']+$stat[$pid]['nosubmits']);
  $stat[$pid]['disp']=sqrt($stat[$pid]['disp']/($stat[$pid]['submits']+$stat[$pid]['nosubmits'])-$stat[$pid]['avgpts']*$stat[$pid]['avgpts']);
}

function ije_table_cmp($a,$b) {
    if ($a=="_head") return -1;
    if ($b=="_head") return 1;
    global $sort,$results,$location,$table;

    if ($location[$a]<>$location[$b]) return (($location[$a]>$location[$b])? -1:1);
    if (!isset($table[$b][$sort])) {$bb=0;} else $bb=$table[$b][$sort];
    if (!isset($table[$a][$sort])) {$aa=0;} else $aa=$table[$a][$sort];
    if ($aa==$bb) return 0;
    if (isset($results['problems'][$sort]) or ($sort=='all'))//��� ����� �� ������ � ������ ����� ��������� �� ��������, ����� �� �����������
      return $aa>$bb ? -1:1;
    else return $aa>$bb ? 1:-1;
}

function ije_table_cmp_ex($a,$b) {
    $res=ije_table_cmp($a,$b);
    if ($res==0) {
       if ($a>$b) return 1;
       if ($a<$b) return -1;
       return 0;
    } else return $res;
}

if (isset($md["diploms"])){
   $_sort=$sort;
   $sort='all';
   @uksort($table,'ije_table_cmp_ex');
   $sort=$_sort;
   foreach ($table as $cid=>$pts) if ($cid<>'_head')
     $table[$cid]["dipl"]='';
   foreach ($md["diploms"] as $id=>$dipdata){
     $i=0;
     foreach ($table as $cid=>$pts)  if ($cid<>'_head'){
       $i++;
       if (($dipdata["places-min"]<=$i)and($i<=($dipdata["places-max"])))
          $table[$cid]["dipl"]=$id;
     }
   }
}
uksort($table,'ije_table_cmp_ex');

$php_name_q=$PHP_NAME."?".querytoparams(array("sort"=>""));
writeln('<table class="ije_results" cellspacing="0">');
writeln('<tr class="head">');
foreach ($table["_head"] as $fid=>$text){
  if ($text=='')
     $text="&nbsp;";
  if (isset($md["problem-names"][$fid]))
     $title=" title=\"{$md["problem-names"][$fid]["name"]}\"";
  else $title="";
  write("<td$title".($sort==$fid?" class=\"sorthead\"":"")."><a href=\"$php_name_q&amp;sort=$fid\" class=\"heada\">$text</a>");
  if ((isset($results["problems"][$fid]) or ($fid=="all"))and($hasstat))
    write("<a href=\"stat.php?prob=$fid\">Stat</a>");
  writeln("</td>");
}
writeln("</tr>");

$pl=0;$l=1;$last='';
foreach($table as $id=>$pts) if ($id<>'_head') {
    if ($location[$id]==0) {
      $pl++;
      if ($last=='') {$last=$id;}
      if (ije_table_cmp($last,$id)<>0) {$l=$pl;}
      $last=$id;
    }
    writeln("<tr>");
    foreach ($pts as $fid=>$text){
      if ($text==='')
         $text="&nbsp;";
      if (isset($md["problem-names"][$fid]))
         $title=" title=\"{$md["problem-names"][$fid]["name"]}\"";
      else $title="";
      $classs='';
      if ($fid==$sort) 
         $classs=' class="sort"';
      if (($location[$id]==0)and($fid=="id"))
         $text="$l. <span class=\"id\">$text</span>";
      if (isset($results["problems"][$fid]) and ($rephref<>'')){
         $text="<a href=\"$rephref?contestant=$id&amp;prob=$fid\">$text</a>";
      if (isset($results["problems"][$fid]) or ($fid=='all'))
         $text="<div class=\"points\">$text</div>";
      }
      write("<td$classs$title>$text</td>");
    }
    writeln("</tr>");
}

foreach($statname as $s=>$n){
  write("<tr><td colspan=\"".(1+count($ai['_columns']))."\">$n</td>");
  foreach($results['problems'] as $pid=>$tmp)
    write("<td>".sprintf($statfmt[$s],$stat[$pid][$s])."</td>");
  write("<td>&nbsp;</td>");
  if (isset($md["diploms"]))
     writeln("<td>&nbsp;</td>");
  writeln("</tr>");
}

writeln("</table>");
}


function ije_showreport($file,$addinfo='',$resfile="",$ver="2.0"){
global $ije_xmltext,$ije_ltext,$PHP_NAME;

if ($ver<>"2.0") {
   print("$ver version not supported");
   die();
}

loadxml($file,$report);
$report=$report["testing-report"];
if ($report["version"]<>"2.0") die("Wrong version");

if ($resfile<>'') {
   loadxml($resfile,$results);
   $results=$results["results"];
}

if ($addinfo<>'') ije_loadai($addinfo,$ai);
else $ai=array("_columns"=>array());

$boy=$report["solution"]["contestant"];
writeln("<h2>������ {$report["solution"]["problem"]} ({$report["solution"]["problem-name"]})<br/>");
writeln("�������� $boy</h2>");
if (isset($ai[$boy])){
   writeln("<h3>");
   foreach($ai[$boy] as $i=>$v)
     writeln("{$ai["_columns"][$i]}: $v<br/>");
   writeln("</h3>");
}
writeln("<p class=\"noindent\">����������� �������: {$report["solution"]["time-limit"]} ��<br/>");
writeln("����������� ������: {$report["solution"]["memory-limit"]} ����</p>");

writeln("<h3>����������</h3>");
  
$res=$report["compiling"];
$res["res"]=ije_xmltosresult($res["outcome"]);
$class=strtolower($res["res"]);
writeln("<div class=\"$class\"><!--");
writeln("--><div class=\"{$class}hr\"></div><pre class=\"{$class}co\">");
write($res["compiler-output"]);
writeln("</pre><div class=\"{$class}hr\"></div>");
writeln("<font class=\"{$class}n\">{$ije_ltext[$res["res"]]}</font>");
writeln("</div>");

if ($res["res"]=="CP"){
  writeln("<h3>������������</h3>");
  writeln("<p>�������� �� ������ �������, ����� ������, ��� ������ ���� ��������� �����</p>");
  writeln("<table class=\"tests\">");
  writeln("<tr class=\"thead\"><td>N</td><td>&nbsp;</td><td>�����������</td><td>�����</td></tr>");
  $res=$report["testing"]["results"];
  $sum=0;
  $max=0;
  foreach($res as $n=>$t) {
      $t["res"]=ije_xmltosresult($t["outcome"]);
      if (isset($t["eval-comment"])and($t["eval-comment"]<>''))
         $t["comment"].="<br/>".$t["eval-comment"];
      writeln("<tr class=\"tr".strtolower($t["res"])."\"><td>$n</td><td><a href=\"/ije_outcomes.php?from=$PHP_NAME".querytoparams()."\">$t[res]</a></td><td><b>$t[comment]</b></td><td>$t[points]/{$t["max-points"]}</td></tr>");
      $sum+=$t["points"];
      $max+=$t["max-points"];
    }
    writeln("</table>");
    if (isset($results["contestants"][$boy][$report["solution"]["problem"]])) {
       $hisres=$results["contestants"][$boy][$report["solution"]["problem"]];
       if ($hisres["minus"]<>0){
          writeln("<div class=\"penalty\">�����: $hisres[minus]</div>");
          $sum-=$hisres["minus"];
          if ($sum<0) {$sum=0;}
       }
    }
    writeln("<div class=\"sum\">�����: $sum/$max</div>");
  }
}

function ije_showrepselect($resfname){
global $PHP_NAME;
?>
<form action="<?php=$PHP_NAME?>" method="get">
<p>������� ��������:
<?php 
loadxml($resfname,$results);
writeln('�������� <select name="contestant">');
foreach ($results["results"]["contestants"] as $id=>$cont){
  writeln("<option value=\"$id\"".(@($id==$_GET["contestant"])?' selected="selected"':'').">$id</option>");
}
writeln("</select>,");
writeln('������ <select name="prob">');
foreach ($results["results"]["problems"] as $id=>$cont){
  writeln("<option value=\"$id\"".(@($id==$_GET["prob"])?' selected="selected"':'').">$id</option>");
}
writeln("</select>");
writeln('<input type="submit" value="&gt;&gt;"/></p></form>');
}

function ije_showstat($resfile,$prob){
global $PHP_NAME;
if ($prob<>'all')
   writeln("<h3>������ $prob</h3>");
else writeln("<h3>������ �����</h3>");

writeln("<p class=\"noindent\"><b>���������������� ������� �������������</b></p>");

if (isset($_GET["step"]))
   $step=(int)$_GET["step"];
else $step='';
writeln("<p><form method=\"get\" action=\"$PHP_NAME\">");
writeln(querytoinputs(array("step"=>"")));
writeln('"������" ����������:');
writeln("<input name=\"step\" size=\"4\" value=\"$step\"/>");
writeln("<input type=\"submit\" value=\"��������\"/>");
writeln("</form></p>");

writeln("<center><img src=\"/stat_img.php?resfile=".htmlspecialchars($resfile)."&amp;prob=".htmlspecialchars($prob)."&amp;step=$step\" alt=\"���������������� ������� �������������\"></center>");

writeln("<p class=\"noindent\"><b>������������ ������� �������������</b></p>");
writeln("<center><img src=\"/stat_img.php?resfile=".htmlspecialchars($resfile)."&amp;prob=".htmlspecialchars($prob)."&amp;int=1\" alt=\"������������ ������� �������������\"></center>");
}

?>
