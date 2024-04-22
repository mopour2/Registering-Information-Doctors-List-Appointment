unit UETimeW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UDataModule, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask,db,
  Buttons;

type
  TFormEnterTimeWorkNobat = class(TForm)
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Image1: TImage;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnterTimeWorkNobat: TFormEnterTimeWorkNobat;


implementation

{$R *.dfm}

procedure TFormEnterTimeWorkNobat.FormShow(Sender: TObject);
begin
DataModule1.ADOTTimeWork.Open;
DataModule1.ADOTTimeWork.Filter:='DescRoz=''‰Ê» ''';
DataModule1.ADOTTimeWork.Filtered:=true;
end;

procedure TFormEnterTimeWorkNobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if DataModule1.ADOTTimeWork.State in [dsEdit] then
 DataModule1.ADOTTimeWork.post;
 DataModule1.ADOTTimeWork.close
end;

procedure TFormEnterTimeWorkNobat.BitBtn1Click(Sender: TObject);
begin
if DataModule1.ADOTTimeWork.State in [dsEdit] then
 DataModule1.ADOTTimeWork.post;
end;

end.
