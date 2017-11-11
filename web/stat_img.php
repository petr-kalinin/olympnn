<?php 
set_magic_quotes_runtime(0);
if (get_magic_quotes_gpc()==1){
  foreach ($_GET as $key=>$val) 
    if (is_string($_GET[$key]))
       $_GET[$key]=stripslashes($val);
  foreach ($_POST as $key=>$val) 
    if (is_string($_POST[$key]))
       $_POST[$key]=stripslashes($val);
}

$backpath=".";
include_once("ije_proc.php");
include_once("xml.php");

if (!isset($_GET["resfile"])) die("resfile not specified");
$resfile=$_GET["resfile"];
if (!file_exists($resfile)) die("resfile not found");
loadxml($resfile,$results);
if (!isset($results["results"])) die("wrong resfile");
$results=$results["results"];

if (!isset($_GET["prob"])) die("prob not specified");
$prob=$_GET["prob"];
if (($prob<>'all')and(!isset($results["problems"][$prob]))) die ("unknown problem");

if (isset($_GET["step"])) {
   $step=(int)$_GET["step"];
   if ($step==0) unset($step);
}

$int=(isset($_GET["int"]) and $_GET["int"]);

$pts=$results["contestants"];
$maxpts=0;
$nn=array();
$maxnn=0;
foreach($pts as $n=>$p) {
  if (!isset($p[$prob]))
     $hp=0;
  else $hp=ije_getpoints($p[$prob]);
  if ($prob=="all"){
     $hp=0;
     foreach($p as $pp=>$pt) if (is_array($pt))
       $hp+=ije_getpoints($pt);
  }
  if ($hp>$maxpts)
     $maxpts=$hp;
}

if (!isset($step))
   $step=round($maxpts/count($pts));
   
foreach($pts as $n=>$p) {
  if (!isset($p[$prob]))
     $hp=0;
  else $hp=ije_getpoints($p[$prob]);
  if ($prob=="all"){
     $hp=0;
     foreach($p as $pp=>$pt) if (is_array($pt))
       $hp+=ije_getpoints($pt);
  }
  if ((!isset($p["_location"]))or($p["_location"]==0)){
     if ($int) {
        $beg=0;
        $end=$hp;
        if ($end==0) {$end=1;}//чтобы не слилось с осью
     } else {
        $beg=$hp-$step;
        $end=$hp+$step;
     }
     for ($i=$beg;$i<=$end;$i++){
         if (!isset($nn[$i]))
            $nn[$i]=0;         
         $nn[$i]++;
         if ($nn[$i]>$maxnn)
            $maxnn=$nn[$i];
     }
     
  }
}


$maxx=440;$maxy=250;
$xbeg=20;$ybeg=30;
$xs=$maxx-$xbeg-20;
$ys=$maxy-$ybeg-20;

$im=imagecreate($maxx,$maxy);
$white=imagecolorallocate($im,255,255,255);
$white=imagecolortransparent($im,$white);
$black=imagecolorallocate($im,0,0,0);
$gray=imagecolorallocate($im,128,128,128);
$gray1=imagecolorallocate($im,192,192,192);
$red=imagecolorallocate($im,255,0,0);

imagefilledrectangle($im,0,0,$maxx-1,$maxy-1,$white);

function setxmark($pts){
global $im,$black,$maxx,$xbeg,$xs,$maxy,$ybeg,$ys,$maxpts;
imageline($im,$xbeg+$xs*($pts+0.5)/($maxpts+1),$maxy-$ybeg+4,$xbeg+$xs*($pts+0.5)/($maxpts+1),$maxy-$ybeg,$black);
imagestring($im,1,$xbeg+$xs*($pts+0.5)/($maxpts+1)-imagefontwidth(1)*strlen($pts)/2,$maxy-23,$pts,$black);
}

function setymark($nn){
global $im,$black,$maxx,$xbeg,$xs,$maxy,$ybeg,$ys,$maxnn;
imageline($im,$xbeg-4,$maxy-$ybeg-$nn*$ys/$maxnn,$xbeg,$maxy-$ybeg-$nn*$ys/$maxnn,$black);
imagestring($im,1,$xbeg-8-imagefontwidth(1)*strlen($nn),$maxy-$ybeg-$nn*$ys/$maxnn-imagefontheight(1)/2,$nn,$black);
imageline($im,$xbeg,$maxy-$ybeg-$nn*$ys/$maxnn,$xbeg+$xs,$maxy-$ybeg-$nn*$ys/$maxnn,IMG_COLOR_STYLED);
}

function getstep($max){
$mul=array(1,2,5);
for ($pow=0;$pow<10;$pow++){
    $m=1;
    for ($i=1;$i<=$pow;$i++)
        $m=$m*10;
    for ($i=0;$i<3;$i++) {
        $np=$max/$mul[$i]/$m;
        if ($np<16)
           return $mul[$i]*$m;
    }
}
}

imagesetstyle($im,array($gray1,$gray1,$gray1,$gray1,$white,$white,$white,$white));

setxmark($maxpts);
//setymark($maxnn);

$xstep=getstep($maxpts);
for ($i=0;$i<$maxpts;$i+=$xstep)
    setxmark($i);

$ystep=getstep($maxnn);
for ($i=0;$i<$maxnn+0.1;$i+=$ystep)
    setymark($i);

imageline($im,$xbeg,$maxy-$ybeg,$maxx-1,$maxy-$ybeg,$black);
imageline($im,$xbeg,0,$xbeg,$maxy-$ybeg,$black);

for ($i=0;$i<=$maxpts;$i++){
    if (!isset($nn[$i]))
       $nn[$i]=0;
    imagefilledrectangle($im,$xbeg+$i*$xs/($maxpts+1),$maxy-$ybeg-$nn[$i]*$ys/$maxnn,
                         $xbeg+($i+1)*$xs/($maxpts+1),$maxy-$ybeg,$gray);
}

if ((isset($show))and($show>=0)and($show<=$maxpts)){
   imageline($im,$xbeg+($show+0.5)*$xs/($maxpts+1),$maxy-$ybeg-$nn[$show]*$ys/$maxnn,
                 $xbeg+($show+0.5)*$xs/($maxpts+1),$maxy-$ybeg,$red);
   imagestring($im,1,$xbeg+$xs*($show+0.5)/($maxpts+1)-imagefontwidth(1)*strlen($show)/2,$maxy-12,$show,$red);
}

if (!$int) imagestring($im,2,$maxx-60,5,'Step: '.$step,$black);

//die();
header('Content-type: image/png');
imagepng($im);

imagedestroy($im);

?>
