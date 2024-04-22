unit UESetModNobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UDataModule, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask,db,
  Buttons;

type
  TFormEnterSetModeNobatDayWeek = class(TForm)
    Label8: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnterSetModeNobatDayWeek: TFormEnterSetModeNobatDayWeek;


implementation

uses UMenu2;

{$R *.dfm}

procedure TFormEnterSetModeNobatDayWeek.FormShow(Sender: TObject);
begin
DataModule1.ADOTZSetingNobat.Open;
end;

procedure TFormEnterSetModeNobatDayWeek.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if DataModule1.ADOTZSetingNobat.State in [dsEdit] then
  DataModule1.ADOTZSetingNobat.post;

FormMenu2.FlagEnterSetModeNobatDayWeek:=DataModule1.ADOTZSetingNobatTypeNobatDayWeek.AsString;
DataModule1.ADOTZSetingNobat.close
end;

procedure TFormEnterSetModeNobatDayWeek.BitBtn1Click(Sender: TObject);
begin
if DataModule1.ADOTZSetingNobat.State in [dsEdit] then
 DataModule1.ADOTZSetingNobat.post;

FormMenu2.FlagEnterSetModeNobatDayWeek:=DataModule1.ADOTZSetingNobatTypeNobatDayWeek.AsString;
close;
end;

end.
