unit UInsPezD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,datetof,
  Buttons;

type
  TFormInsertPezDate = class(TForm)
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
 WeekFarsi:string;
 WeekNumber:integer;
  end;

var
  FormInsertPezDate: TFormInsertPezDate;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormInsertPezDate.FormShow(Sender: TObject);
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;

  d:=FormMenu2.NOW1;
  DecodeDate(d,Year, Month, Day);
  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
  WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);

  WeekFarsi:=weekStrFarsi[Week];
  DataModule1.ADOTDateBarn2.Open;
  DataModule1.ADOTDateBarn2.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn2.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;
  Edit2.Text:=WeekFarsi;
end;

procedure TFormInsertPezDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTdATEBarn2.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormInsertPezDate.BitBtn1Click(Sender: TObject);
begin
   year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetLastDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
  WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);
  WeekFarsi:=weekStrFarsi[Week];
  DataModule1.ADOTDateBarn2.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn2.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;
  Edit2.Text:=WeekFarsi;

end;

procedure TFormInsertPezDate.BitBtn2Click(Sender: TObject);
begin
  year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
  WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);
  WeekFarsi:=weekStrFarsi[Week];
  DataModule1.ADOTDateBarn2.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn2.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;
  Edit2.Text:=WeekFarsi;
end;

end.
