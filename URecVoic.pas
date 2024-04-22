unit URecVoic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UDataModule, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,db,
  Buttons, MPlayer,_wave,qdialogs, FileCtrl;

type
  TFormRecVoic = class(TForm)
    Image1: TImage;
    MediaPlayer1: TMediaPlayer;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton16: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DriveComboBox1: TDriveComboBox;
    FileEdit: TEdit;
    SpeedButton2: TSpeedButton;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    procedure FarsiEnter(Sender: TObject);
    procedure ENGlEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FileEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     FileName:string;
     DriveSound:string;
     function  copyFile1(File1,File2:string):integer;

  end;

var
  FormRecVoic: TFormRecVoic;

implementation

{$R *.dfm}
//*******************************************************
procedure TFormRecVoic.FarsiEnter(Sender: TObject);
begin
//LANG_FARSI   = $29;
//LANG_ARABIC  = $01;
//LANG_ENGLISH = $09;
loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormRecVoic.ENGlEnter(Sender: TObject);
begin
loadkeyboardlayout('00000409' ,klf_activate);
end;
//*******************************************************
procedure TFormRecVoic.FormShow(Sender: TObject);
begin
  DataModule1.ADOTPath.Open;
  DriveSound:='c:\';
end;

procedure TFormRecVoic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DataModule1.ADOTPath.close;
end;
//*******************************************************************
function  TFormRecVoic.copyFile1(File1,File2:string):integer;
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

procedure TFormRecVoic.SpeedButton4Click(Sender: TObject);
begin
     MediaPlayer1.close;
     copyfile1('empt.wav','c:\temp4.wav');
     MediaPlayer1.FileName:='c:\temp4.WAV';
     MediaPlayer1.open;
     MediaPlayer1.StartRecording;
     MediaPlayer1.Visible:=true;
end;

procedure TFormRecVoic.SpeedButton6Click(Sender: TObject);
var i:integer;
BackupName:string;
begin
     RadioGroup1Click(Sender);
     MediaPlayer1.close;

    BackupName := ExtractFileName(FileName);
    BackupName := ChangeFileExt(BackupName, '.wav');


    i:= _Wave_2_uLaw('c:\temp4.wav','c:\temp5.msg',8000);
     if i=-1 then
     MessageDlg('–ŒÌ—Â ‰‘œ', mtInformation, [mbOk], 0, mbOk);

     copyfile1('c:\temp5.msg',DriveSound+FileName);

     copyfile1('c:\temp4.wav',DriveSound+BackupName);
     
end;

procedure TFormRecVoic.SpeedButton16Click(Sender: TObject);
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

procedure TFormRecVoic.SpeedButton1Click(Sender: TObject);
begin
    MediaPlayer1.close;
    MediaPlayer1.FileName:='c:\temp4.WAV';
     MediaPlayer1.open;
     MediaPlayer1.play;

end;

procedure TFormRecVoic.RadioGroup1Click(Sender: TObject);
var ss:string;
begin
case RadioGroup1.ItemIndex of
0:
 begin
  FilterComboBox1.Filter:='*.wav|*.Wav';
  DriveSound:='c:\';
  FileName:=edit1.text;
  DirectoryListBox1.Drive := 'c';
  FileListBox1.Drive := DriveComboBox1.Drive;
  FileListBox1.Directory := DriveSound;

 end;
1:
 begin
    FilterComboBox1.Filter:='*.wav|*.Wav';
  DriveSound:=DataModule1.ADOTPathDriveInstall.AsString+'SAZVoic\'+DataModule1.ADOTPathSazeman.AsString+'\Info\';
  FileListBox1.Directory :=DriveSound;
  FileListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];
  DirectoryListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];
  FileName:=edit1.text;

 end;
2:
 begin
   FilterComboBox1.Filter:='p*.wav|p*.Wav';
  DriveSound:=DataModule1.ADOTPathDriveInstall.AsString+'SAZVoic\'+DataModule1.ADOTPathSazeman.AsString+'\MSG\';
  FileListBox1.Directory :=DriveSound;
  FileListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];
  DirectoryListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];
  FileName:='P'+edit1.text ;
 end;
3:
 begin
  FilterComboBox1.Filter:='*.wav|*.Wav';
  DriveSound:=DataModule1.ADOTPathDriveInstall.AsString+'SAZVoic\'+DataModule1.ADOTPathSazeman.AsString+'\MSG\';
  FileListBox1.Directory :=DriveSound;
  FileListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];
  DirectoryListBox1.Drive := DataModule1.ADOTPathDriveInstall.AsString[1];

  FileName:=edit1.text;
 end;

End;

end;

procedure TFormRecVoic.DirectoryListBox1Change(Sender: TObject);
begin
//DriveSound:=FileListBox1.Directory+'\';
DriveSound:=FileListBox1.Directory +'\';
end;


procedure TFormRecVoic.SpeedButton2Click(Sender: TObject);
begin
    MediaPlayer1.close;
    copyfile1(FileListBox1.Directory+'\'+FileEdit.Text,'c:\temp3.wav');
//   _uLaw_2_Wave('c:\temp3.msg','TEMP.WAV' ,8000, 8000);
     MediaPlayer1.FileName:='c:\temp3.WAV';
     MediaPlayer1.open;
     MediaPlayer1.play;

end;


procedure TFormRecVoic.FileEditChange(Sender: TObject);
begin
 edit1.text:=FileEdit.Text;
  FileName:=edit1.text;
end;

end.
