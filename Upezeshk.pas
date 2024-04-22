unit Upezeshk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UDataModule, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,db,
  Buttons, MPlayer,_wave,qdialogs;

type
  TFormPezeshk = class(TForm)
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    MediaPlayer1: TMediaPlayer;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FarsiEnter(Sender: TObject);
    procedure ENGlEnter(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     DriveSound:string;
     function  copyFile1(File1,File2:string):integer;
  end;

var
  FormPezeshk: TFormPezeshk;

implementation

{$R *.dfm}
//*******************************************************
procedure TFormPezeshk.FarsiEnter(Sender: TObject);
begin
//LANG_FARSI   = $29;
//LANG_ARABIC  = $01;
//LANG_ENGLISH = $09;
loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormPezeshk.ENGlEnter(Sender: TObject);
begin
loadkeyboardlayout('00000409' ,klf_activate);
end;
//*******************************************************
procedure TFormPezeshk.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBEdit3.SetFocus;
end;

procedure TFormPezeshk.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
 begin
    IF DataModule1.ADOTpezeshk.State IN  [dsEdit,dsInsert]then
     DataModule1.ADOTpezeshk.post;
    DBEdit1.SetFocus;

 end;
end;

procedure TFormPezeshk.FormShow(Sender: TObject);
begin
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTPath.Open;
  DriveSound:=DataModule1.ADOTPathDriveInstall.AsString+'SAZVoic\'+DataModule1.ADOTPathSazeman.AsString+'\MSG\';
  DBEdit1.SetFocus;
end;

procedure TFormPezeshk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModule1.ADOTpezeshk.close;
DataModule1.ADOTPath.close;
end;
//*******************************************************************
function  TFormPezeshk.copyFile1(File1,File2:string):integer;
var
 f1,f2:file;
  BytesRead: Integer;
  Buf: array[1..524288] of Char;
  i:longBool;
begin
i:=COPYFILE(PChar(file1),PChar(file2),false);
if ord(i)<>0 then
   result:=1
else result:=0;

end;

procedure TFormPezeshk.SpeedButton4Click(Sender: TObject);
begin
     MediaPlayer1.close;
     copyfile1('empt.wav','c:\temp4.wav');
     MediaPlayer1.FileName:='c:\temp4.WAV';
     MediaPlayer1.open;
     MediaPlayer1.StartRecording;
     MediaPlayer1.Visible:=true;
end;


procedure TFormPezeshk.SpeedButton16Click(Sender: TObject);
begin
     MediaPlayer1.Pause;
     sleep(100);
     MediaPlayer1.Stop;
     sleep(100);
     MediaPlayer1.save;
     MediaPlayer1.close;
     sleep(100);
     MediaPlayer1.Visible:=false;
end;

procedure TFormPezeshk.SpeedButton1Click(Sender: TObject);
begin
    MediaPlayer1.close;
    MediaPlayer1.FileName:='c:\temp4.WAV';
     MediaPlayer1.open;
     MediaPlayer1.play;
end;

procedure TFormPezeshk.SpeedButton6Click(Sender: TObject);
var BackupName,FileName:string;
i:integer;
begin

     FileName:='P'+DataModule1.ADOTpezeshkCodPezeshk.asstring+'.msg' ;


     MediaPlayer1.close;

    BackupName := ExtractFileName(FileName);
    BackupName := ChangeFileExt(BackupName, '.wav');

    i:= _Wave_2_uLaw('c:\temp4.wav','c:\temp5.msg',8000);

     if i=-1 then
     MessageDlg('–ŒÌ—Â ‰‘œ', mtInformation, [mbOk], 0, mbOk);

     copyfile1('c:\temp5.msg',DriveSound+FileName);

     copyfile1('c:\temp4.wav',DriveSound+BackupName);


end;

end.
