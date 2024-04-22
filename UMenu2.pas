unit UMenu2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls,datetof,UDataModule,db, ADODB,DateUtils,
  ComCtrls, StdCtrls,qdialogs;

type
  TFormMenu2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Image1: TImage;
    Timer11: TTimer;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    QTabeTdatadate: TADOQuery;
    Panel9: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Label2: TLabel;
    ProgressBar2: TProgressBar;
    N26: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FlagTatil,FlagTatilAyam:string;
    FlagEnterSetModeNobatDayWeek:string;
    ModDate:string;
    flagSetDate:boolean;
    procedure chekDateTimeWork(DateFarsi:string;week:integer);
    procedure CreatBarnameDate(Date1Str:string;weekStrFarsi1:string;WeekNumber:integer;Week:integer);
    procedure CreatBarnameDateDay;
    procedure CreatBarnameDateWeek;
    procedure ControlVirtualDate;
    Function NOW1:TdateTime;
    procedure ArshivDb;
  end;



var
  FormMenu2: TFormMenu2;

implementation

uses UBarname, Upezeshk, UTakhasos, UWeekBarname, UDateBarn, UListBPez,
  UListGPez, UETimeW, UAyam, UInsPezD, URecVoic, UESetModNobat, UTestDate,
  UWeekBarnameBox, UListBarnam, UListBarWek;

{$R *.dfm}

procedure TFormMenu2.N6Click(Sender: TObject);
begin
  FormWeekBarname.ShowModal;
end;

procedure TFormMenu2.N5Click(Sender: TObject);
begin
 FormPezeshk.ShowModal;
end;

procedure TFormMenu2.N4Click(Sender: TObject);
begin
FormTakhasos.ShowModal;
end;

procedure TFormMenu2.N3Click(Sender: TObject);
begin
// Timer1.Enabled:=false;
 close
end;

//============================================
procedure TFormMenu2.chekDateTimeWork(DateFarsi:string;week:integer);
var d:TdateTime;
    Year, Month, Day: Word;
    Date1:string;
    Flag:boolean;
begin
FlagTatil:='0';
FlagTatilAyam:='0';

//    try
        DataModule1.TAyam.open;
        DataModule1.TAyam.First;
        Flag:=DataModule1.TAyam.Locate('DateAyam', DateFarsi , [loCaseInsensitive]);
        if Flag=true then
        begin
          FlagTatilAyam:=DataModule1.TAyam.FieldByName('FlagTatilAyam').asString;
        end
       else
         begin
         FlagTatilAyam:='0';
        end ;
//   except
//     end;

   DataModule1.TAyam.close;

//      try
        DataModule1.TTimeWork.open;
        DataModule1.TTimeWork.First;
        Flag:=DataModule1.TTimeWork.Locate('Roz', Week , [loCaseInsensitive]);
        if Flag=true then
        begin
          FlagTatil:=DataModule1.TTimeWork.FieldByName('FlagTatil').asString;
        end
        else FlagTatil:='0';

//   except

//     end;
   DataModule1.TTimeWork.close
end;


procedure TFormMenu2.N7Click(Sender: TObject);
var
 Year, Month, Day: Word;
 d:TdateTime;
 i:integer;
 ss1,DateFarsi,LastDate1Str:string;
 Lyear,Lmont,Lday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;
begin
 d:=now1;
  DecodeDate(d,Year, Month, Day);
  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);
  //GetLastDateToString(year,month,day,Lyear,Lmont,Lday,LastDate1Str,SS);
  Week:=DayOfWeek(d);
  WeekNumber:=WeekNumber_Shamsi(Year,Month,Day);

  chekDateTimeWork(DateFarsi,week);
  if (FlagTatil<>'1') and (FlagTatilAyam<>'1') then
   CreatBarnameDate(DateFarsi,weekStrFarsi[Week],WeekNumber,Week);

end;

procedure TFormMenu2.CreatBarnameDate(Date1Str:string;weekStrFarsi1:string;WeekNumber:integer;Week:integer);
begin

  DataModule1.ADOTBarname.open;
  DataModule1.ADOTBarname.Filter:='RozHafte='''+weekStrFarsi1+'''';
  DataModule1.ADOTBarname.Filtered:=true;
  while not DataModule1.ADOTBarname.eof do
  begin
// find barname in datebar
   DataModule1.ADOQuery1.sql.Clear;
   DataModule1.ADOQuery1.sql.Add('select * from  dbo.TDateBarn');
   DataModule1.ADOQuery1.sql.Add(' where (Date1='''+Date1Str+''''+
                                   ' and  CodTakhasos='+DataModule1.ADOTBarnameCodTakhasos.asstring+
                                   ' and  CodPezeshk='+DataModule1.ADOTBarnameCodPezeshk.asstring+
                                   ' and  RozHafte='''+DataModule1.ADOTBarnameRozHafte.asstring+''''+
                                   ' and  TimeStartH='''+DataModule1.ADOTBarnameTimeStartH.asstring+''''+
                                   ' and  Shift='''+DataModule1.ADOTBarnameShift.asstring+''''+')');
   DataModule1.ADOQuery1.open;

// add barname to datebarn
  if DataModule1.ADOQuery1.RecordCount=0 then
  begin
   DataModule1.ADOQuery2.sql.Clear;
   DataModule1.ADOQuery2.sql.Add('INSERT INTO dbo.TDateBarn (Date1,RozNo,WeekNumber,CodTakhasos,CodPezeshk,RozHafte,TimeStartH,TimeStartM,TimeVizitBimar,TedadVizizt,Shift,State,Desc1)');
   DataModule1.ADOQuery2.sql.Add(' VALUES ('''+Date1Str +''','''+
                                  inttostr(Week)+''','+
                                  inttostr(WeekNumber)+','+
                                  DataModule1.ADOTBarnameCodTakhasos.asstring+','+
                                  DataModule1.ADOTBarnameCodPezeshk.asstring +','''+
                                  DataModule1.ADOTBarnameRozHafte.asstring+''','+
                                  DataModule1.ADOTBarnameTimeStartH.asstring+','+
                                  DataModule1.ADOTBarnameTimeStartM.asstring+','+
                                  DataModule1.ADOTBarnameTimeVizitBimar.asstring+','+
                                  DataModule1.ADOTBarnameTedarVizit.asstring+','''+
                                  DataModule1.ADOTBarnameShift.asstring+''',''›⁄«·'','' '')');
   DataModule1.ADOQuery2.ExecSQL;

  end;



   DataModule1.ADOTBarname.next;
  end;

  DataModule1.ADOTBarname.close;

end;

procedure TFormMenu2.N8Click(Sender: TObject);
begin
 CreatBarnameDateDay;
end;

procedure TFormMenu2.CreatBarnameDateDay;
var
 Year, Month, Day: Word;
 d:TdateTime;
 i:integer;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;
begin
 d:=now1;
  DecodeDate(d,Year, Month, Day);
  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

  Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
  WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);
  
  DateFarsi:=AfterDateStrFarsi;

  chekDateTimeWork(DateFarsi,week);
  if (FlagTatil<>'1') and (FlagTatilAyam<>'1') then
   CreatBarnameDate(DateFarsi,weekStrFarsi[Week],WeekNumber,Week);
end;


procedure TFormMenu2.Timer11Timer(Sender: TObject);
var Year, Month, Day: Word;
d:TdateTime;
i:integer;
ss1,Date1Str,LastDate1Str:string;
Lyear,Lmont,Lday:word;
SS:STRING;
kk:integer;
begin
 Timer11.Enabled:=false;
// if FlagEnterSetModeNobatDayWeek='‰Ê»  œÂÌ —Ê“«‰Â' then
//   N8Click(Sender)
// else N22Click(Sender);

ControlVirtualDate;

 Timer11.Enabled:=true;
end;

procedure TFormMenu2.ControlVirtualDate;
var
 d:TdateTime;
 AYear,AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond:word;
  ADayOfYear,Year, Month, Day: Word;
 d2:systemtime;
 TokenHandle: THandle; DisableAllPrivileges:BOOL; NewState: TTokenPrivileges;
 BufferLength: DWORD; PreviousState: TTokenPrivileges;  ReturnLength: DWORD;
// wHour2,wMinute2,wSecond2,wMilliseconds2:word;
f:boolean;
begin

 d:=now1;
 DecodeDate(d,Year, Month, Day);
 DecodeTime(d, AHour, AMinute, ASecond, AMilliSecond);
 //*************************************
{ if Year<>2000 then
 begin

 NewState.PrivilegeCount:=1;
 NewState.Privileges[0].Luid  :=20;//SE_SYSTEMTIME_NAME;
 NewState.Privileges[0].Attributes:=SE_PRIVILEGE_USED_FOR_ACCESS;
 f:=AdjustTokenPrivileges(TokenHandle,FALSE,NewState,BufferLength,PreviousState,ReturnLength);

  getsystemtime(d2);
  with d2 do
  begin
    wYear:=2000;
    wMonth:=1;
    wDay:=1;
    wDayOfWeek:=1;
    wHour:=0;//AHour;
    wMinute:=0;//AMinute;
    wSecond:=0;//ASecond;
    wMilliseconds:=0;//AMilliSecond;

    end;

  setsystemtime(d2);
 end;
 }
 //*************************************
 if ((AHour=0) or (AHour=24)) and (flagSetDate=False)then
  begin
   flagSetDate:=true;

   QTabeTdatadate.sql.Clear;
   QTabeTdatadate.sql.Add('select * from dbo.Tdatadate');
   QTabeTdatadate.open;
   AYear:=QTabeTdatadate.FieldByName('Year1').asinteger;
   AMonth:=QTabeTdatadate.FieldByName('Month1').asinteger;
   ADay:=QTabeTdatadate.FieldByName('Day1').asinteger;

   d:= EncodeDateTime(AYear,AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);

   ADayOfYear:=DayOfTheYear(d);
   inc(ADayOfYear);

   if Not TryEncodeDateDay(AYear, ADayOfYear,d)then
   begin
     inc(AYear);
     ADayOfYear:=1;
     TryEncodeDateDay(AYear, ADayOfYear,d);
   end ;

   DecodeDate(d,Year, Month, Day);
   //date +1
   //set table quary
   QTabeTdatadate.sql.Clear;
   QTabeTdatadate.sql.Add('UPDATE dbo.Tdatadate SET dbo.Tdatadate.Year1 = '+inttostr(Year)
                 +', dbo.Tdatadate.Month1 = '+inttostr(Month)
                 +', dbo.Tdatadate.Day1 = '+inttostr(Day)
                 +' from dbo.Tdatadate');
   QTabeTdatadate.ExecSQL;

  end
  else if (AHour>=1)and (AHour<2)and (flagSetDate=true) then
  begin
     flagSetDate:=false;
  end;

end;

procedure TFormMenu2.N11Click(Sender: TObject);
begin
 FormBarname.ShowModal;
end;

procedure TFormMenu2.N9Click(Sender: TObject);
begin
FormDateBarn.ShowModal;
end;

procedure TFormMenu2.N14Click(Sender: TObject);
begin
  FormListBimarPezeshk.ShowModal;
end;

procedure TFormMenu2.N15Click(Sender: TObject);
begin
FormListKolPezeshk.ShowModal;
end;

procedure TFormMenu2.N16Click(Sender: TObject);
begin
FormEnterTimeWorkNobat.ShowModal;
end;

procedure TFormMenu2.N18Click(Sender: TObject);
begin
FormAyam.ShowModal;
end;

procedure TFormMenu2.N17Click(Sender: TObject);
begin
FormInsertPezDate.ShowModal;
end;

procedure TFormMenu2.N19Click(Sender: TObject);
begin
FormRecVoic.ShowModal;
end;

procedure TFormMenu2.N21Click(Sender: TObject);
begin
FormEnterSetModeNobatDayWeek.ShowModal;
end;


procedure TFormMenu2.CreatBarnameDateWeek;
var
 Year, Month, Day: Word;
 d:TdateTime;
 i:integer;
 ss1,DateFarsi,AfterDateStrFarsi:string;
 Ayear,Amonth,Aday:word;
 SS:STRING;
 kk:integer;
 WeekNumber,Week:integer;
begin
  d:=now1;
  DecodeDate(d,Year, Month, Day);
  ftodate(Year, Month, Day);
  DateFarsi:=datetostrFarsi(Year, Month, Day);

  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

  Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
  WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);

  if (Week=6) THEN
  begin
   year:=Ayear;
   month:=Amonth;
   day:=Aday;
   GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);

   Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
   WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);


   DataModule1.ADOQuery1.sql.Clear;
   DataModule1.ADOQuery1.sql.Add('select * from  dbo.TDateBarn');
   DataModule1.ADOQuery1.sql.Add(' where (Date1='''+AfterDateStrFarsi+''''+
                                   ' and  WeekNumber='+inttostr(WeekNumber)+')');
   DataModule1.ADOQuery1.open;

  if DataModule1.ADOQuery1.RecordCount<>0 then
    MessageDlg('»—‰«„Â «Ì‰ Â› Â ﬁ»·« «ÌÃ«œ ‘œÂ', mtInformation,[mbOk], 0, mbOk)
  else
  begin


  WHILE  (Week=7) OR (Week<6) do
  begin
   ProgressBar2.Position:=ProgressBar1.Position+10;
   DateFarsi:=AfterDateStrFarsi;

   chekDateTimeWork(DateFarsi,week);
   if (FlagTatil<>'1') and (FlagTatilAyam<>'1') then
    CreatBarnameDate(DateFarsi,weekStrFarsi[Week],WeekNumber,Week);

   year:=Ayear;
   month:=Amonth;
   day:=Aday;
   GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
   Week:=DayOfWeek_Shamsi(Ayear,Amonth,ADay);
   WeekNumber:=WeekNumber_Shamsi(Ayear,Amonth,ADay);
   end;

  end;//endelse

  end
  else
       MessageDlg('«„—Ê“ Å‰Ã‘‰»Â ‰„Ì »«‘œ Ê»—‰«„Â Â› Â «ÌÃ«œ ‰ê—œÌœ', mtInformation,[mbOk], 0, mbOk);
  ProgressBar2.Position:=100;
  sleep(100);
end;

procedure TFormMenu2.N22Click(Sender: TObject);
begin
  ArshivDb;

  panel1.Visible:=true;
  panel1.Refresh;
  ProgressBar2.Position:=10;

  CreatBarnameDateWeek;

  panel1.Visible:=false;
end;

procedure TFormMenu2.ArshivDb;
begin
 panel9.Visible:=true;
 panel9.Refresh;
 ProgressBar1.Position:=10;

 DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.ring  SELECT *  FROM db.dbo.ring';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.ring ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
//***************************************************
 DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.Logfile  SELECT *  FROM db.dbo.Logfile';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.Logfile ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
//***************************************************
 DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.AmarMenu  SELECT *  FROM db.dbo.AmarMenu';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.AmarMenu ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;
//***************************************************
 DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.List_CallBack  SELECT *  FROM db.dbo.List_CallBack';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.List_CallBack ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
//***************************************************
{ DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.TBarnRezerv  SELECT *  FROM db.dbo.TBarnRezerv where ';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.List_CallBack ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
//***************************************************
 DataModule1.ADOCommand1.CommandText:='INSERT into db_arshiv.dbo.TDateBarn  SELECT *  FROM db.dbo.TDateBarn';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
  DataModule1.ADOCommand1.CommandText:='delete  db.dbo.List_CallBack ';
  DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+5;
 }



 //***************************************************
 DataModule1.ADOCommand1.CommandText:='DBCC SHRINKDATABASE (db, 10)';
 DataModule1.ADOCommand1.Execute;
 ProgressBar1.Position:=ProgressBar1.Position+10;

 sleep(100);
 ProgressBar2.Position:=100;
 sleep(100);
 panel9.Visible:=False;
end;

procedure TFormMenu2.FormShow(Sender: TObject);
begin

flagSetDate:=false;

DataModule1.ADOTZSetingNobat.Open;
FlagEnterSetModeNobatDayWeek:=DataModule1.ADOTZSetingNobatTypeNobatDayWeek.AsString;
DataModule1.ADOTZSetingNobat.close;
DataModule1.ADOTPath.Open;
ModDate:=DataModule1.ADOTPathK8.AsString;

Timer11.Enabled:=true;

end;

procedure TFormMenu2.N23Click(Sender: TObject);
begin
FormDateTest.ShowModal;
end;

procedure TFormMenu2.N24Click(Sender: TObject);
begin
  FormWeekBarnameBox.ShowModal;
end;

procedure TFormMenu2.N25Click(Sender: TObject);
begin
FormListBarname.ShowModal;
end;

procedure TFormMenu2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule1.ADOTPath.close;
end;

//***************************************/
Function TFormMenu2.NOW1:TdateTime;
var
 d:TdateTime;
 AYear,AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond:word;
begin
  if ModDate='1' then
   d:=now
 else if ModDate='2' then
    begin
     d:=now;
         decodeDateTime(d,AYear,AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);

         QTabeTdatadate.sql.Clear;
         QTabeTdatadate.sql.Add('select * from dbo.Tdatadate');
         QTabeTdatadate.open;

         AYear:=QTabeTdatadate.FieldByName('Year1').asinteger;
         AMonth:=QTabeTdatadate.FieldByName('Month1').asinteger;
         ADay:=QTabeTdatadate.FieldByName('Day1').asinteger;

         QTabeTdatadate.close;

     d:= EncodeDateTime(AYear,AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond)
    end
 else d:=now;

  result:= d;
end;

procedure TFormMenu2.N26Click(Sender: TObject);
begin
  FormListBarnameWeek.ShowModal;
end;

end.
