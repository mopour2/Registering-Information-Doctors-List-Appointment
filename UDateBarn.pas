unit UDateBarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,datetof,
  Buttons;

type
  TFormDateBarn = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
 Year, Month, Day: Word;
 d:TdateTime;
 i:integer;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 Week:integer;

  end;

var
  FormDateBarn: TFormDateBarn;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormDateBarn.FormShow(Sender: TObject);
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;

  d:=FormMenu2.NOW1;
  DecodeDate(d,Year, Month, Day);
  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

  DataModule1.ADOTDateBarn.Open;
  DataModule1.ADOTDateBarn.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;
// FormMenu2.Timer1.Enabled:=TRUE;;
end;

procedure TFormDateBarn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTdATEBarn.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormDateBarn.BitBtn2Click(Sender: TObject);
begin

  year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  DataModule1.ADOTDateBarn.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;

end;

procedure TFormDateBarn.BitBtn1Click(Sender: TObject);
begin
   year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetLastDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  DataModule1.ADOTDateBarn.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;

end;

end.
