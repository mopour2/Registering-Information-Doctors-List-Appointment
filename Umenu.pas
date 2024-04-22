unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask,db, Menus;

type
  TFormMenu = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    Edit3: TEdit;
    Panel3: TPanel;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    MaskEdit2: TMaskEdit;
    CheckBox1: TCheckBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;
  User1:string;
  LocalTell:string;

implementation

uses UDataModule, UTakhasos, Upezeshk, UBarname, UMenu2;

{$R *.dfm}

procedure TFormMenu.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if Key =chr(13) then
 MaskEdit1.SetFocus;

end;

procedure TFormMenu.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key =chr(13) then
 BitBtn1Click(Sender);

end;

procedure TFormMenu.BitBtn1Click(Sender: TObject);
begin

 //FormMenu2.ShowModal;

  DataModule1.ADOTUser.Open;
 if DataModule1.ADOTUser.Locate('User1',trim(Edit1.text),[loCaseInsensitive])=true then
 if DataModule1.ADOTUserpassword.asstring=MaskEdit1.Text then
  begin
  User1:=DataModule1.ADOTUserUser1.AsString;
  DataModule1.ADOTUser.close;

//  FormTakhasos.ShowModal;
//    FormPezeshk.ShowModal;
//FormBarname.ShowModal;
   FormMenu2.ShowModal;
  close
  end
 ELSE   DataModule1.ADOTUser.close;

end;

procedure TFormMenu.BitBtn2Click(Sender: TObject);
begin
close
end;

procedure TFormMenu.FormShow(Sender: TObject);
var f1:textfile;
s1,s2:string;
begin
try
 AssignFile(F1, 'string.txt');
 Reset(F1);
 Readln(F1, s1);
 Readln(F1, s2);
 CloseFile(F1);


if DataModule1.ADOConnection1.Connected= true then
 DataModule1.ADOConnection1.Connected:=false;
  DataModule1.ADOConnection1.ConnectionString:=s1;
  DataModule1.ADOConnection1.Connected:=true;


//LocalTell:=s2;

except
     ShowMessage('«— »«ÿ »« ”—Ê— »—ﬁ—«— ‰‘œ  ‰ŸÌ„«  ‘»òÂ —«ò‰ —· ò‰Ìœ');
     FormMenu.close;
end;

//FormMenu2.ShowModal;

end;

procedure TFormMenu.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key =chr(13) then
 Edit3.SetFocus;
end;

procedure TFormMenu.BitBtn4Click(Sender: TObject);
begin
 DataModule1.ADOTUser.Open;
 DataModule1.ADOTUser.Insert;
 DataModule1.ADOTUserUser1.AsString:=Edit2.Text;
 DataModule1.ADOTUserpassword.AsString:=Edit3.Text;
 DataModule1.ADOTUser.Post;
 Panel2.Visible:=FALSE;
end;

procedure TFormMenu.BitBtn5Click(Sender: TObject);
begin
Panel2.Visible:=FALSE;

end;

procedure TFormMenu.BitBtn3Click(Sender: TObject);
begin
 Panel3.Visible:=TRUE;
 MaskEdit2.SetFocus;
end;

procedure TFormMenu.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key =chr(13) then
 IF MaskEdit2.Text='4321' THEN
  BEGIN
   Panel2.Visible:=TRUE;
   Edit2.SetFocus;
   Panel3.Visible:=FALSE;
  END
end;

procedure TFormMenu.BitBtn6Click(Sender: TObject);
begin
  Panel3.Visible:=FALSE;
end;

end.
