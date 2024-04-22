unit ubooktel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, DBCtrls, Mask, Grids,
  DBGrids, ADODB,UDataModule,Umenu;

type
  TFormBookTel = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    Label5: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1TelCity: TStringField;
    ADOQuery1Mobile: TStringField;
    ADOQuery1Lname: TStringField;
    ADOQuery1FName: TStringField;
    ADOQuery1Adress: TStringField;
    ADOQuery1Desc1: TStringField;
    ADOQuery1User1: TStringField;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    ADOQuery1CodCallBack: TStringField;
    BitBtn3: TBitBtn;
    ADOQuery2: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    Panel3: TPanel;
    Label3: TLabel;
    Button3: TButton;
    Edit3: TEdit;
    Button4: TButton;
    procedure FarsiEnter(Sender: TObject);
    procedure ENGlEnter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBookTel: TFormBookTel;

implementation

uses UAddCall;

{$R *.dfm}

procedure TFormBookTel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key= chr(27) then
  Panel1.Visible:=false;
 if key= chr(13) then
 begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where  TelCity='''+trim(edit1.Text)+'''');
ADOQuery1.open;

   if ADOQuery1.RecordCount> 0  then
   else
    ShowMessage('«Ì‰ ‘„«—Â ÅÌœ«‰‘œ');
 end;
end;

procedure TFormBookTel.BitBtn1Click(Sender: TObject);
begin
Panel1.Visible:=TRUE;
edit1.SetFocus;
end;

procedure TFormBookTel.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key= chr(27) then
  Panel2.Visible:=false;
 if key= chr(13) then
 begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where LName='''+trim(edit2.Text)+'''');
ADOQuery1.open;
   if ADOQuery1.RecordCount> 0  then
   else
    ShowMessage('«Ì‰ ‰«„ Œ«‰Ê«œêÌ ÅÌœ«‰‘œ');
 end;

end;

procedure TFormBookTel.BitBtn2Click(Sender: TObject);
begin
Panel2.Visible:=TRUE;
edit2.SetFocus;
end;

procedure TFormBookTel.Button1Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where  TelCity='''+trim(edit1.Text)+'''');
ADOQuery1.open;

   if ADOQuery1.RecordCount> 0  then
      Panel1.Visible:=false
   else
    ShowMessage('«Ì‰ ‘„«—Â ÅÌœ«‰‘œ');
end;

procedure TFormBookTel.Button2Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where LName='''+trim(edit2.Text)+'''');
ADOQuery1.open;
   if ADOQuery1.RecordCount> 0  then
     Panel2.Visible:=false
   else
    ShowMessage('«Ì‰ ‰«„ Œ«‰Ê«œêÌ ÅÌœ«‰‘œ');
end;

procedure TFormBookTel.FarsiEnter(Sender: TObject);
begin
//LANG_FARSI   = $29;
//LANG_ARABIC  = $01;
//LANG_ENGLISH = $09;
loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormBookTel.ENGlEnter(Sender: TObject);
begin
loadkeyboardlayout('00000409' ,klf_activate);
end;
procedure TFormBookTel.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     IF KEY =CHR(13) THEN
  DBEdit2.SetFocus;
end;

procedure TFormBookTel.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
IF KEY =CHR(13) THEN
   IF ADOQuery1.State IN  [dsEdit,dsInsert]then
   begin
       ADOQuery1User1.AsString:=User1;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from BookTel where  Mobile='''+trim(dbedit6.Text)+'''');
    ADOQuery2.open;
    if ADOQuery2.RecordCount> 0  then
      ShowMessage('‘„«—Â  ò—«—Ì')
    else
     begin
      ADOQuery1.post;
      ADOQuery1.Insert;
      DBEdit6.SetFocus;
     end;
   end;
end;



procedure TFormBookTel.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
 begin
     ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('select * from BookTel where  Mobile='''+trim(dbedit6.Text)+'''');
    ADOQuery2.open;
    if ADOQuery2.RecordCount> 0  then
      ShowMessage('‘„«—Â  ò—«—Ì')
    else
    DBEdit7.SetFocus;
 end;
end;
procedure TFormBookTel.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY =CHR(13) THEN
 begin
     if DBEdit7.text<>'' then
     begin
      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Add('select * from BookTel where  Mobile='''+trim(dbedit7.Text)+'''');
      ADOQuery2.open;
      if ADOQuery2.RecordCount> 0  then
        ShowMessage('‘„«—Â  ò—«—Ì')
      else
       DBEdit1.SetFocus;
     end
     else
     DBEdit1.SetFocus;
 end;
end;


procedure TFormBookTel.FormShow(Sender: TObject);
var us:string;
begin
    ADOQuery1.open;
    us:=User1;
    ADOQuery1.Filter:='User1 = '''+us+'''';
    ADOQuery1.Filtered:=true;
end;

procedure TFormBookTel.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  IF ADOQuery1.State IN  [dsEdit,dsInsert]then
   begin
       ADOQuery1User1.AsString:=User1
   end;
end;


procedure TFormBookTel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key= chr(27) then
  Panel3.Visible:=false;
 if key= chr(13) then
 begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where  Mobile='''+trim(edit3.Text)+'''');
ADOQuery1.open;

   if ADOQuery1.RecordCount> 0  then
   else
    ShowMessage('«Ì‰ ‘„«—Â ÅÌœ«‰‘œ');
 end;

end;

procedure TFormBookTel.BitBtn3Click(Sender: TObject);
begin
Panel3.Visible:=TRUE;
edit3.SetFocus;
end;

procedure TFormBookTel.Button4Click(Sender: TObject);
var us:string;
begin

ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel ');
ADOQuery1.open;

    us:=User1;
    ADOQuery1.Filter:='User1 = '''+us+'''';
    ADOQuery1.Filtered:=true;
end;

procedure TFormBookTel.Button3Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from BookTel where  Mobile='''+trim(edit3.Text)+'''');
ADOQuery1.open;

   if ADOQuery1.RecordCount> 0  then
   else
    ShowMessage('«Ì‰ ‘„«—Â ÅÌœ«‰‘œ');
end;

end.
