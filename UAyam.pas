unit UAyam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,
  Buttons;

type
  TFormAyam = class(TForm)
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAyam: TFormAyam;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormAyam.FormShow(Sender: TObject);
begin
  DataModule1.ADOTAyam.Open;
end;

procedure TFormAyam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModule1.ADOTAyam.Close;
end;

end.
