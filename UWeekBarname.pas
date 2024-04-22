unit UWeekBarname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,
  Buttons,db;

type
  TFormWeekBarname = class(TForm)
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FarsiEnter(Sender: TObject);
    procedure ENGlEnter(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    ss:string;
    procedure CreatBarname(Roz:string);
  end;

var
  FormWeekBarname: TFormWeekBarname;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormWeekBarname.FormShow(Sender: TObject);
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;
  DataModule1.ADOTWeekBarname.Open;
  DataModule1.ADOTWeekBarname.Filter:='';
  DataModule1.ADOTWeekBarname.Filtered:=true;
end;

procedure TFormWeekBarname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  BitBtn3Click(Sender);

  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTWeekBarname.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormWeekBarname.BitBtn1Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=true;
    DBLookupComboBox1.SetFocus;
    DBLookupComboBox2.Visible:=true;
    DBEdit1.Visible:=true;
    DBComboBox2.Visible:=true;
    DBEdit2.Visible:=true;
    DBEdit3.Visible:=true;
    DBEdit4.Visible:=true;
    DBCheckBox1.Visible:=true;
    DBCheckBox2.Visible:=true;
    DBCheckBox3.Visible:=true;
    DBCheckBox4.Visible:=true;
    DBCheckBox5.Visible:=true;
    DBCheckBox6.Visible:=true;
    DBCheckBox7.Visible:=true;

end;

procedure TFormWeekBarname.BitBtn2Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    DBEdit1.Visible:=false;
    DBComboBox2.Visible:=false;
    DBEdit2.Visible:=false;
    DBEdit3.Visible:=false;
    DBEdit4.Visible:=false;
    DBCheckBox1.Visible:=false;
    DBCheckBox2.Visible:=false;
    DBCheckBox3.Visible:=false;
    DBCheckBox4.Visible:=false;
    DBCheckBox5.Visible:=false;
    DBCheckBox6.Visible:=false;
    DBCheckBox7.Visible:=false;

end;


procedure TFormWeekBarname.CreatBarname(Roz:string);
begin

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('INSERT INTO dbo.TBarname (CodTakhasos,CodPezeshk,RozHafte,Shift,TimeStartH,TimeStartM,TedarVizit,TimeVizitBimar)');
   DataModule1.ADOQuery3.sql.Add(' VALUES ('+DataModule1.ADOTWeekBarnameCodTakhasos.asstring+','+
                                  DataModule1.ADOTWeekBarnameCodPezeshk.asstring +','''+
                                  Roz+''','''+
                                  DataModule1.ADOTWeekBarnameShift.asstring+''','+
                                  DataModule1.ADOTWeekBarnameTimeStartH.asstring+','+
                                  DataModule1.ADOTWeekBarnameTimeStartM.asstring+','+
                                  DataModule1.ADOTWeekBarnameTedarVizit.asstring+','+
                                  DataModule1.ADOTWeekBarnameTimeVizitBimar.asstring+')');
   DataModule1.ADOQuery3.ExecSQL;

//    DataModule1.ADOTBarname.insert;
//    DataModule1.ADOTBarnameCodTakhasos.asinteger:=DataModule1.ADOTWeekBarnameCodTakhasos.asinteger;
//    DataModule1.ADOTBarnameCodPezeshk.asinteger:=DataModule1.ADOTWeekBarnameCodPezeshk.asinteger;
//    DataModule1.ADOTBarnameRozHafte.asstring:=Roz;
//    DataModule1.ADOTBarnameShift.asstring:=DataModule1.ADOTWeekBarnameShift.asstring;
//    DataModule1.ADOTBarnameTimeStartH.asinteger:=DataModule1.ADOTWeekBarnameTimeStartH.asinteger;
//    DataModule1.ADOTBarnameTimeStartM.asinteger:=DataModule1.ADOTWeekBarnameTimeStartM.asinteger;
//    DataModule1.ADOTBarnameTedarVizit.asinteger:=DataModule1.ADOTWeekBarnameTedarVizit.asinteger;
//    DataModule1.ADOTBarnameTimeVizitBimar.asinteger:=DataModule1.ADOTWeekBarnameTimeVizitBimar.asinteger;
//    DataModule1.ADOTBarname.post;
end;
//****************************************************
procedure TFormWeekBarname.BitBtn3Click(Sender: TObject);
begin

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TBarname ');
   DataModule1.ADOQuery3.ExecSQL;

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TBarname ');
   DataModule1.ADOQuery3.ExecSQL;

// DataModule1.ADOTBarname.open;

 DataModule1.ADOTWeekBarname.First;

  while not  DataModule1.ADOTWeekBarname.eof do
  begin
   if DataModule1.ADOTWeekBarnameShanbe.Value =true then
     CreatBarname('ÔäÈå');
  if DataModule1.ADOTWeekBarnameYekShanbe.Value =true then
     CreatBarname('í˜ÔäÈå');
   if DataModule1.ADOTWeekBarnameDoShanbe.Value =true then
     CreatBarname('ÏæÔäÈå');
   if DataModule1.ADOTWeekBarnameSeShanbe.Value =true then
     CreatBarname('Óå ÔäÈå');
   if DataModule1.ADOTWeekBarnameChharShanbe.Value =true then
     CreatBarname('åÇÑ ÔäÈå');
   if DataModule1.ADOTWeekBarnamePangShanbe.Value =true then
     CreatBarname('äÌ ÔäÈå');
   if DataModule1.ADOTWeekBarnameGomee.Value =true then
     CreatBarname('ÌãÚå');
   DataModule1.ADOTWeekBarname.Next;
  end;
// DataModule1.ADOTBarname.close;
end;

procedure TFormWeekBarname.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBLookupComboBox2.SetFocus;
end;
 //*******************************************************
procedure TFormWeekBarname.FarsiEnter(Sender: TObject);
begin
//LANG_FARSI   = $29;
//LANG_ARABIC  = $01;
//LANG_ENGLISH = $09;
loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormWeekBarname.ENGlEnter(Sender: TObject);
begin
loadkeyboardlayout('00000409' ,klf_activate);
end;
//*******************************************************
procedure TFormWeekBarname.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBCheckBox1.SetFocus;
end;

procedure TFormWeekBarname.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBEdit3.SetFocus;
end;

procedure TFormWeekBarname.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBEdit4.SetFocus;
end;

procedure TFormWeekBarname.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBEdit2.SetFocus;
end;

procedure TFormWeekBarname.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
    DBComboBox2.SetFocus;
end;

procedure TFormWeekBarname.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 IF KEY =45 THEN
  IF not(DataModule1.ADOTWeekBarname.State  IN  [dsEdit,dsInsert]) then
   DataModule1.ADOTWeekBarname.insert;
end;

procedure TFormWeekBarname.DBLookupComboBox1Enter(Sender: TObject);
begin
 ss:='';
 FarsiEnter(Sender);
end;

procedure TFormWeekBarname.DBLookupComboBox1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=8) and (length(ss)> 0 ) then
   SetLength(ss,length(ss)-1)
 else  ss:= ss+char(key);
 if DataModule1.ADOTTakhasos.Locate('Takhasos',ss,[loPartialKey]) then
  DataModule1.ADOTWeekBarnameCodTakhasos.AsInteger:= DataModule1.ADOTTakhasosCodTakhasos.AsInteger
 //else DataModule1.ADOTWeekBarnameCodTakhasos.AsInteger:=0;

end;

procedure TFormWeekBarname.DBLookupComboBox2Enter(Sender: TObject);
begin
 ss:='';
 FarsiEnter(Sender);
end;

procedure TFormWeekBarname.DBLookupComboBox2KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=8) and (length(ss)> 0 ) then
   SetLength(ss,length(ss)-1)
 else  ss:= ss+char(key);
 if DataModule1.ADOTpezeshk.Locate('NamePezeshk',ss,[loPartialKey]) then
  DataModule1.ADOTWeekBarnameCodPezeshk.AsInteger:= DataModule1.ADOTpezeshkCodPezeshk.AsInteger

end;

procedure TFormWeekBarname.DBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =chr(13) then
begin
IF DataModule1.ADOTWeekBarname.State IN  [dsEdit,dsInsert]then
   DataModule1.ADOTWeekBarname.post;
 DBLookupComboBox1.SetFocus;
end;
end;

end.
