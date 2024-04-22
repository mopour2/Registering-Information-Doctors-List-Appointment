unit UTakhasos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UDataModule, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask,db;

type
  TFormTakhasos = class(TForm)
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTakhasos: TFormTakhasos;


implementation

{$R *.dfm}

procedure TFormTakhasos.FormShow(Sender: TObject);
begin
DataModule1.ADOTTakhasos.Open ;
DBEdit1.SetFocus;
end;

procedure TFormTakhasos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModule1.ADOTTakhasos.close;
loadkeyboardlayout('00000409' ,klf_activate);
end;

procedure TFormTakhasos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if Key =chr(13) then
begin
IF DataModule1.ADOTTakhasos.State IN  [dsEdit,dsInsert]then
   DataModule1.ADOTTakhasos.post;
end;
end;

procedure TFormTakhasos.DBEdit6Enter(Sender: TObject);
begin
    loadkeyboardlayout('00000429',klf_activate);
end;

procedure TFormTakhasos.DBEdit1Enter(Sender: TObject);
begin
 loadkeyboardlayout('00000409' ,klf_activate);
end;

procedure TFormTakhasos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key =chr(13) then
 DBEdit6.SetFocus;
end;

end.
