unit UTestDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,datetof;

type
  TFormDateTest = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox4: TComboBox;
    Label17: TLabel;
    ComboBox5: TComboBox;
    Label18: TLabel;
    ComboBox6: TComboBox;
    BitBtn2: TBitBtn;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDateTest: TFormDateTest;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormDateTest.FormShow(Sender: TObject);
var
i :integer;
 Year, Month, Day: Word;
 d:TdateTime;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;

begin
for i:= 1 to 31 do
 ComboBox1.Items.Add(inttostr(i));
for i:= 1 to 12 do
 ComboBox2.Items.Add(inttostr(i));
for i:= 1900 to  2020 do
 ComboBox3.Items.Add(inttostr(i));

for i:= 1 to 31 do
 ComboBox4.Items.Add(inttostr(i));
for i:= 1 to 12 do
 ComboBox5.Items.Add(inttostr(i));
for i:= 1300 to  1400 do
 ComboBox6.Items.Add(inttostr(i));



  d:=FormMenu2.NOW1;
  DecodeDate(d,Year, Month, Day);

 edit1.text:=inttostr(Day);
 edit2.text:=inttostr(Month);
 edit3.text:=inttostr(Year);

  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);

//  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

  Week:=DayOfWeek_Shamsi(Year,Month,Day);
  WeekNumber:=WeekNumber_Shamsi(Year,Month,Day);

  Label7.Caption:=inttostr(Day);
  Label8.Caption:=inttostr(Month);
  Label9.Caption:=inttostr(Year);
  Label10.Caption:=weekStrFarsi[Week];
  Label11.Caption:=inttostr(WeekNumber);




end;

procedure TFormDateTest.BitBtn1Click(Sender: TObject);
var
i :integer;
 Year, Month, Day: Word;
 d:TdateTime;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;
begin

  Year:=strtoint(ComboBox3.Text);
  Month:=strtoint(ComboBox2.Text);
  Day:=strtoint(ComboBox1.Text);

  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);

  Week:=DayOfWeek_Shamsi(Year,Month,Day);
  WeekNumber:=WeekNumber_Shamsi(Year,Month,Day);

  Label3.Caption:=inttostr(Day);
  Label4.Caption:=inttostr(Month);
  Label5.Caption:=inttostr(Year);
  Label2.Caption:=weekStrFarsi[Week];
  Label6.Caption:=inttostr(WeekNumber);

end;

procedure TFormDateTest.BitBtn2Click(Sender: TObject);
var
i :integer;
 Year, Month, Day: Word;
 d:TdateTime;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;

begin

  Year:=strtoint(ComboBox6.Text);
  Month:=strtoint(ComboBox5.Text);
  Day:=strtoint(ComboBox4.Text);

//  ftodate(Year, Month, Day);



  Week:=DayOfWeek_Shamsi(Year,Month,Day);
  WeekNumber:=WeekNumber_Shamsi(Year,Month,Day);

  Label19.Caption:=inttostr(Day);
  Label20.Caption:=inttostr(Month);
  LabeL21.Caption:=inttostr(Year);
  LabeL22.Caption:=weekStrFarsi[Week];
  LabeL23.Caption:=inttostr(WeekNumber);

end;

procedure TFormDateTest.BitBtn3Click(Sender: TObject);
var i :integer;
 Year, Month, Day: Word;
 d:TdateTime;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;

begin
 Day:=strtoint(edit1.text);
 Month:=strtoint(edit2.text);
 Year:=strtoint(edit3.text);

   FormMenu2.QTabeTdatadate.sql.Clear;
   FormMenu2.QTabeTdatadate.sql.Add('UPDATE dbo.Tdatadate SET dbo.Tdatadate.Year1 = '+inttostr(Year)
                 +', dbo.Tdatadate.Month1 = '+inttostr(Month)
                 +', dbo.Tdatadate.Day1 = '+inttostr(Day)
                 +' from dbo.Tdatadate');
   FormMenu2.QTabeTdatadate.ExecSQL;


  d:=FormMenu2.NOW1;
  DecodeDate(d,Year, Month, Day);

 edit1.text:=inttostr(Day);
 edit2.text:=inttostr(Month);
 edit3.text:=inttostr(Year);

  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);

//  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

  Week:=DayOfWeek_Shamsi(Year,Month,Day);
  WeekNumber:=WeekNumber_Shamsi(Year,Month,Day);

  Label7.Caption:=inttostr(Day);
  Label8.Caption:=inttostr(Month);
  Label9.Caption:=inttostr(Year);
  Label10.Caption:=weekStrFarsi[Week];
  Label11.Caption:=inttostr(WeekNumber);



end;

end.
