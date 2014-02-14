unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, AppEvnts, Buttons, XPStyleActnCtrls,
  ActnList, ActnMan, Math;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    cbOther: TCheckBox;
    OpenDialog2: TOpenDialog;
    odPrg: TOpenDialog;
    OpenDialog3: TOpenDialog;
    odOuf: TOpenDialog;
    procedure FormDestroy(Sender: TObject);
    procedure cbOtherMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbOtherMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ReDrawAll;
    procedure ReDraw(hide:boolean);
    procedure drawAns;
    procedure doOpen;
    procedure doLoadOuf;
    procedure doSave;
    procedure Save(fname:string);
    procedure Open(fname:string);
    procedure LoadOuf(fname:string);
    procedure doExecute(prgnum:integer);
    procedure Move(dx,dy:extended);
    procedure Circle(x,y,r:integer);
    function gx(x:extended):integer;
    function gy(y:extended):integer;
    function gr(r:extended):integer;
    procedure FormResize(Sender: TObject);
    procedure PutPoint;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
const maxn=100001;
      eps=1e-5;
var _x,_y:array[1..maxn] of extended;
    _xc,_yc:array[1..maxn] of extended;
    _dir:array[1..maxn] of char;
    _hasans:boolean;
    n:integer;
    max:extended;
    cx,cy:extended;
    dc:extended;
    dir0:string;
    FileName:string;
type tColorId=(_back,_curs,_centr,_givenpoint,_inner,_zero,_ans);
const clr:array[tColorId,false..true] of integer=(
           ($ffffff,$ffffff),
           ($0000ff,$ffffff),
           ($0000ff,$ffffff),
           ($ff0000,$ffffff),
           ($00ff00,$ffffff),
           ($ff00ff,$ffffff),
           ($00aaaa,$ffffff)
           );
       progCount=2;
       progName:array[1..ProgCount] of string=('circles_pk.exe','circles_pk_wrongdir.exe');


{$R *.dfm}

procedure correct(var x:extended;max:extended);
begin
if x<-max then
   x:=-max;
if x>max then
   x:=max;
end;

procedure cdiv(var x:extended;d:extended);
begin
if d=0 then
   exit;
d:=abs(d);
x:=floor((x+eps)/d) * d;
end;

procedure MakeDc;
const base:array[1..3] of extended=(1,2,5);
var i:integer;
    k:extended;
begin
k:=1e-10;
repeat
  for i:=1 to 3 do begin
      dc:=k*base[i];
      if round(max/dc)<=50 then
         exit;
  end;
  k:=k*10;
until false;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
const dd:array[VK_LEFT..VK_DOWN] of record dx,dy:integer; end=(
            (dx:-1;dy:0),(dx:0;dy:1),(dx:1;dy:0),(dx:0;dy:-1));
begin
ReDraw(true);
if ssCtrl in Shift then
   case chr(Key and $ff) of
        'O','o':doOpen;
        'A','a':doLoadOuf;
        'S','s':doSave;
        'R','r':ReDrawAll;
        '1'..chr(ProgCount+48):doExecute(Key and $ff-48);
end;
if Key in [VK_LEFT..VK_DOWN] then
   if ssCtrl in Shift then
      Move(dd[Key].dx,dd[Key].dy)
   else
      Move(dc*dd[Key].dx,dc*dd[Key].dy);
if Key=ord(' ') then
   PutPoint;
if Key=VK_BACK then
   if n>0 then begin
      dec(n);
      _hasans:=false;
      doExecute(1);
      RedrawAll;
   end else beep;
if Key=VK_SUBTRACT then begin
   max:=max*1.3; MakeDc; ReDrawAll;
end;
if Key=VK_ADD then begin
   max:=max/1.3; MakeDc; ReDrawAll;
end;
ReDraw(false);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
AllocConsole;
n:=0;
max:=40;
makeDc;
cx:=0;
cy:=0;
_hasans:=false;
cdiv(cx,dc);
cdiv(cy,dc);
OpenDialog1.InitialDir:=ExpandFileName(OpenDialog1.InitialDir);
SaveDialog1.InitialDir:=ExpandFileName(SaveDialog1.InitialDir);
odPrg.InitialDir:=ExpandFileName(odPrg.InitialDir);
odOuf.InitialDir:=ExpandFileName(odOuf.InitialDir);
GetDir(0,dir0);

ReDrawAll;
end;

procedure TForm1.ReDrawAll;
var x,y:extended;
    xx,yy:integer;
    i:integer;
begin
MakeDc;
Image1.picture.Bitmap.Width:=image1.Width;
Image1.picture.Bitmap.height:=Image1.height;
with image1.Canvas do begin
     Brush.Color:=clr[_back,false];
     Brush.Style:=bsSolid;
     FillRect(Rect(0,0,Image1.Width,Image1.Height));
     x:=-max;
     Pen.Color:=0;
     while x<=max do begin
           y:=-max;
           while y<=max do begin
                 xx:=gx(x);
                 yy:=gy(y);
                 Pixels[xx,yy]:=0;
                 y:=y+dc;
           end;
           x:=x+dc;
     end;
     brush.Style:=bsClear;
     pen.Width:=3;
     pen.color:=clr[_zero,false];
     circle(gx(0),gy(0),8);
     pen.color:=clr[_givenpoint,false];
     for i:=1 to n do
         circle(gx(_x[i]),gy(_y[i]),6);
     if (_hasans) then begin
          pen.color:=clr[_centr,false];
          for i:=1 to n do
              circle(gx(_xc[i]),gy(_yc[i]),4);
          pen.color:=clr[_ans,false];
          pen.width:=1;
          drawAns;
     end;
end;
ReDraw(false);
end;

function vect(x1,y1,x2,y2:extended):extended;
begin
vect:=x1*y2-x2*y1;
end;

procedure TForm1.drawAns;
var i:integer;
{    angle,angle_i:extended;}
    r:extended;
begin
_x[n+1]:=_x[1];
_y[n+1]:=_y[1];
{angle:=arctan2(_yc[1]-_y[1],_xc[1]-_y[1]);
if cbOther.Checked then
   angle:=angle-Pi/2
else angle:=angle+pi/2;}
for i:=1 to n do begin
{    image1.canvas.textout(gx(_x[i])+5,gy(_y[i])+5,format('%0.0f',[angle/pi*180]));}
    r:=hypot(_xc[i]-_x[i],_yc[i]-_y[i]);
    if (*({vect(_x[i]-_xc[i],_y[i]-_yc[i], _x[i+1]-_xc[i],_y[i+1]-_yc[i]) *}
        vect(_x[i]-_xc[i],_y[i]-_yc[i], cos(angle), sin(angle)) > 0) *)
        (_dir[i]='+') xor cbOther.checked then
        image1.canvas.Arc(gx(_xc[i]-r),gy(_yc[i]-r),gx(_xc[i]+r),gy(_yc[i]+r),
                          gx(_x[i]),gy(_y[i]), gx(_x[i+1]),gy(_y[i+1]))
    else
        image1.canvas.Arc(gx(_xc[i]-r),gy(_yc[i]-r),gx(_xc[i]+r),gy(_yc[i]+r),
                          gx(_x[i+1]),gy(_y[i+1]), gx(_x[i]),gy(_y[i]));
{    angle_i:=arctan2(_y[i+1]-_y[i], _x[i+1]-_x[i]);
    angle:=2*angle_i - angle;
//    image1.Canvas.TextOut(gx((_x[i]+_x[i+1])/2), gy((_y[i]+_y[i+1])
    while angle<-pi do angle:=angle+2*pi;
    while angle>pi do angle:=angle-2*pi;}
end;
end;

function TForm1.gx(x: extended): integer;
begin
result:=round((x)*(Image1.Width shr 1)/max)+Image1.Width shr 1;
end;

function TForm1.gy(y: extended): integer;
begin
result:=round((-y)*(Image1.Width shr 1)/max)+Image1.Height shr 1;
end;

function TForm1.gr(r: extended): integer;
begin
result:=round(r*Image1.Width/2/max);
end;

procedure TForm1.ReDraw(hide:boolean);
begin
With Image1.Canvas do begin
     pen.Color:=clr[_curs,hide];
     brush.Style:=bsClear;
     Circle(gx(cx),gy(cy),2);
end;
with StatusBar1 do begin
     Panels[0].Text:=format('(%0.2f, %0.2f)',[cx,cy]);
     Panels[2].Text:=format('N=%d',[n]);
     Panels[5].Text:=format('%0.2f/%0.2f',[dc,max]);
     Panels[6].Text:=ExtractFileName(FileName);
end;
end;

procedure TForm1.Move(dx,dy:extended);
begin
cx:=cx+dx;
cy:=cy+dy;
correct(cx,max);
correct(cy,max);
cdiv(cx,dx);
cdiv(cy,dy);
end;

procedure TForm1.Circle(x, y, r: integer);
begin
Image1.Canvas.Ellipse(x-r,y-r,x+r+1,y+r+1);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
Form1.ActiveControl:=nil;
end;

procedure TForm1.cbOtherMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReDraw(true);
end;

procedure TForm1.cbOtherMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
ReDrawAll;
Image1.OnClick(Image1);
end;

function exec(cmdline:string;flags:dword=0;x:integer=300;y:integer=0;title:string=#0;show:word=SW_SHOW):dword;
var h:_process_information;
    i:_startupinfoa;
    a:dword;
begin
  if x=-1 then x:=300;
  if y=-1 then y:=0;
  if title=#0 then
     title:=cmdline;

  fillchar(i,sizeof(i),0);
  i.cb:=sizeof(i);
  i.lptitle:=pchar(title);
  i.dwflags:=STARTF_USEPOSITION+STARTF_USESHOWWINDOW;
  i.dwx:=x;
  i.dwy:=y;
  i.wshowwindow:=show;//SW_SHOWMINNOACTIVE;

  if not createprocess(nil,pchar(cmdline),nil,nil,true,flags,nil,nil,i,h) then
     raise exception.Create('Error while executing program');
  waitforsingleobject(h.hProcess,Infinite);
  getexitcodeprocess(h.hprocess,a);
  result:=a;
  CloseHandle(h.hProcess);
  CloseHandle(h.hThread);
end;

function GetLastWinError:string;
var ne:integer;
    err:array[0..1000] of char;
    i,j:integer;
begin
ne:=GetLastError;
FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM,nil,ne,0,@err,1000,nil);
result:=Format('Windows error %d: %s',[ne,err]);
i:=length(result);j:=i;
while result[i] in[#10,#13] do
      dec(i);
delete(result,i+1,j-i);
end;

procedure ForceNoFile(fname:string);
const MaxNN=30;
var nn:integer;
begin
Windows.DeleteFile(PChar(fname));
nn:=0;
while (nn<maxNN)and(FileExists(fname)) do begin
      sleep(10);
      inc(nn);
end;
if FileExists(fname) then
   raise exception.Create('ForceNoFile('+fname+'): Can''t delete file: '+GetLastWinError);
end;

procedure TForm1.doExecute(prgnum:integer);
begin
try
if n<=2 then
   exit;
chDir(dir0);
ForceNoFile('circles.in');
ForceNoFile('circles.out');
Save('circles.in');
exec(ProgName[prgnum]);
LoadOuf('circles.out');
ReDrawAll;
except
  on e:exception do
     Application.MessageBox(PChar('Error: '+e.message),'Error',MB_ICONERROR)
end;
end;

procedure TForm1.doOpen;
begin
if OpenDialog1.Execute then begin
   Open(OpenDialog1.FileName);
   if fileExists(OpenDialog1.FileName+'.a') then
      LoadOuf(OpenDialog1.FileName+'.a')
end;
end;

procedure TForm1.doLoadOuf;
begin
if OpenDialog1.Execute then begin
   LoadOuf(OpenDialog1.FileName);
end;
end;

procedure TForm1.doSave;
var f:textFile;
    i:integer;
begin
if SaveDialog1.Execute then begin
   Save(SaveDialog1.FileName);
   doExecute(1);
   assignFile(f,SaveDialog1.FileName+'.a');rewrite(f);
   if _hasans then begin
      writeln(f,'yes');
      for i:=1 to n do
          writeln(f,_xc[i]:20:20,' ',_yc[i]:20:20,' ',_dir[i]);
   end else writeln(f,'no');
   closeFile(f);
end;
end;

procedure TForm1.Open(fname:string);
var f:textFile;
    i:integer;
    d:extended;
begin
FileName:=fname;
assignFile(f,fname);reset(f);
read(f,n);
max:=-1;
for i:=1 to n do begin
    read(f,_x[i],_y[i]);
    if abs(_x[i])>max/2 then
       max:=2*abs(_x[i]);
    if abs(_y[i])>max/2 then
       max:=2*abs(_y[i]);
end;
closeFile(f);
max:=max+0.1;
d:=1;
while max>1 do begin
      max:=max/10;
      d:=d*10;
end;
while max<1-eps do begin
      max:=max*10;
      d:=d/10;
end;
max:=ceil(max)*d;
_hasans:=false;
ReDrawAll;
end;

procedure writereal(var f:textFile; a:extended);
begin
if frac(a)<1e-10 then write(f,a:0:0)
else write(f,a:10:10);
end;

procedure TForm1.Save(fname:string);
var f:textFile;
    i:integer;
begin
FileName:=fname;
assignFile(f,fname);rewrite(f);
writeln(f,n);
for i:=1 to n do begin
    writereal(f,_x[i]);
    write(f,' ');
    writereal(f,_y[i]);
    writeln(f);
end;
closeFile(f);
end;

procedure TForm1.LoadOuf(fname: string);
var f:textFile;
    i:integer;
    s:string;
begin
try
    assignFile(f,fname);reset(f);
    readln(f,s);
    if (s='no') then
       _hasans:=false
    else begin
         _hasans:=true;
         for i:=1 to n do begin
             read(f,_xc[i],_yc[i]);
             repeat
               read(f,_dir[i]);
             until seekeof(f) or (_dir[i] in ['+','-']);
             if not (_dir[i] in ['+','-']) then
                raise exception.create('+/- not found in ouf');
         end;
    end;
    closeFile(f);
    ReDrawAll;
except
    on e:exception do
       _hasans:=false;
end;
end;

function GetConsoleWindow:HWnd; stdcall; external kernel32 name 'GetConsoleWindow';

procedure TForm1.FormDestroy(Sender: TObject);
var a:integer;
begin
a:=GetConsoleWindow;
FreeConsole;
SendMessage(a,WM_CLOSE,0,0);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
ReDrawAll;
end;

procedure TForm1.PutPoint;
begin
inc(n);
_x[n]:=cx;
_y[n]:=cy;
if (n>2) then
   doExecute(1)
else _hasans:=false;
ReDrawAll;
end;

end.
