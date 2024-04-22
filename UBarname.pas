unit UBarname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,
  Buttons;

type
  TFormBarname = class(TForm)
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
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarname: TFormBarname;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormBarname.FormShow(Sender: TObject);
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;
  DataModule1.ADOTBarname.Open;
  DataModule1.ADOTBarname.Filter:='';
  DataModule1.ADOTBarname.Filtered:=true;
end;

procedure TFormBarname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTBarname.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormBarname.BitBtn1Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=true;
    DBLookupComboBox2.Visible:=true;
    DBEdit1.Visible:=true;
    DBComboBox1.Visible:=true;
    DBComboBox2.Visible:=true;
    DBEdit2.Visible:=true;
    DBEdit3.Visible:=true;
    DBEdit4.Visible:=true;

end;

procedure TFormBarname.BitBtn2Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    DBEdit1.Visible:=false;
    DBComboBox1.Visible:=false;
    DBComboBox2.Visible:=false;
    DBEdit2.Visible:=false;
    DBEdit3.Visible:=false;
    DBEdit4.Visible:=false;

end;

end.
