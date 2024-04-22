unit FMailBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Grids, DBGrids, DBTables, DBCtrls, Mask, ADODB;

type
  TFormMailBox = class(TForm)
    ScrollBox1: TScrollBox;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel6: TBevel;
    Label10: TLabel;
    Bevel9: TBevel;
    Label13: TLabel;
    Panel4: TPanel;
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Table1NoBox: TStringField;
    Table1Ramz: TStringField;
    Table1LastNAme: TStringField;
    Table1FirstName: TStringField;
    Table1Flag_act_Tel: TIntegerField;
    Table1Flag_Rec_Only: TIntegerField;
    Table1FlagRecBipMes: TIntegerField;
    Table1FlagPlayNoMes: TIntegerField;
    Table1NoBoxGaneshin: TStringField;
    Table1FlagMenu: TStringField;
    Table1Tel1: TStringField;
    Table1Tel2: TStringField;
    Table1Adress: TStringField;
    Table1ModBoxForMenuAns: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1NoBox: TStringField;
    ADOQuery1Ramz: TStringField;
    ADOQuery1LastNAme: TStringField;
    ADOQuery1FirstName: TStringField;
    ADOQuery1Flag_act_Tel: TIntegerField;
    ADOQuery1Flag_Rec_Only: TIntegerField;
    ADOQuery1FlagRecBipMes: TIntegerField;
    ADOQuery1FlagPlayNoMes: TIntegerField;
    ADOQuery1NoBoxGaneshin: TStringField;
    ADOQuery1FlagMenu: TStringField;
    ADOQuery1Tel1: TStringField;
    ADOQuery1Tel2: TStringField;
    ADOQuery1Adress: TStringField;
    ADOQuery1ModBoxForMenuAns: TStringField;
    Database1: TDatabase;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FarsiEnter(Sender: TObject);
    procedure ENGlEnter(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure creatBox;
  end;

var
  FormMailBox: TFormMailBox;

implementation


{$R *.DFM}

procedure TFormMailBox.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Table1.close;
end;

procedure TFormMailBox.Button1Click(Sender: TObject);
begin
edit1.Visible:=true;
edit2.Visible:=true;
end;
//*************************************
procedure TFormMailBox.creatBox;
VAR I,J:LONGINT;
str:string;
begin
i:=strtoint(Edit1.text);
j:=strtoint(Edit2.text);
while i < j do
begin
str:=inttostr(i);
IF (Not Table1.FindKey([str])) then
 BEGIN
    Table1.insert;
    Table1NoBox.asstring:=IntTostr(i);
    Table1Ramz.asstring:='222'+IntTostr(i);
    Table1LastNAme.asstring:=' ';
    Table1FirstName.asstring:=' ';
    Table1Flag_act_Tel.asinteger:=1;
    Table1Flag_Rec_Only.asinteger:=1;
    Table1FlagRecBipMes.asinteger:=1;
    Table1FlagPlayNoMes.asinteger:=1;
    Table1NoBoxGaneshin.asstring:='1';
    Table1FlagMenu.asstring:='1';
    Table1ModBoxForMenuAns.asstring:='3';
    Table1.post;
    Table1.refresh;
 END;
inc(i);
end;

end;
//*************************************
procedure TFormMailBox.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=chr(13) then
begin
  creatBox;
  edit1.Visible:=FALSE;
  edit2.Visible:=FALSE;
end;
end;
//*************************************
procedure TFormMailBox.FarsiEnter(Sender: TObject);
begin
//LANG_FARSI   = $29;
//LANG_ARABIC  = $01;
//LANG_ENGLISH = $09;
loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormMailBox.ENGlEnter(Sender: TObject);
begin
loadkeyboardlayout('00000409' ,klf_activate);
end;
procedure TFormMailBox.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  IF ADOQuery1.State IN  [dsEdit,dsInsert]then
   begin
    ADOQuery1Ramz.asstring:='1';
    ADOQuery1Flag_act_Tel.asinteger:=1;
    ADOQuery1Flag_Rec_Only.asinteger:=1;
    ADOQuery1FlagRecBipMes.asinteger:=1;
    ADOQuery1FlagPlayNoMes.asinteger:=1;
    ADOQuery1NoBoxGaneshin.asinteger:=1;
    ADOQuery1FlagMenu.asstring:='1';
    ADOQuery1Tel1.asstring:='1';
    ADOQuery1Tel2.asstring:='1';
    ADOQuery1Adress.asstring:='1';
    ADOQuery1ModBoxForMenuAns.asstring:='1';
   end;
end;

procedure TFormMailBox.FormShow(Sender: TObject);
begin
 ADOQuery1.open;
 DBEdit1.SetFocus;
 Table1.open;
end;

procedure TFormMailBox.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY =CHR(13) THEN
   DBEdit2.SetFocus;
end;

procedure TFormMailBox.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY =CHR(13) THEN
  DBEdit3.SetFocus;
end;

procedure TFormMailBox.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
IF KEY =CHR(13) THEN
begin
   IF ADOQuery1.State IN  [dsEdit,dsInsert]then
   begin
      ADOQuery1.post;
//      ADOQuery1.Insert;
   end;
  DBEdit1.SetFocus;
  ADOQuery1.Next;
end;     
end;

end.
