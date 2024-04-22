unit UAddCall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, Mask,UDataModule,datetof,Umenu,db,
  DBCtrls;

type
  TFAddCall = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn3: TBitBtn;
    MaskEdit1: TMaskEdit;
    DBNavigator1: TDBNavigator;
    Timer1: TTimer;
    RadioGroup2: TRadioGroup;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function findRecToADOTList_callBack(TelCity:String;Localtel:string;FOk:string;DateCreatRecord:string): boolean;
  end;

var
  FAddCall: TFAddCall;

implementation

uses ubooktel;
{$R *.dfm}
function datetostrFarsi(Year, Month, Day: Word):string;
var Temp1,Temp2,Temp3:string;
begin
  Temp2:=inttostr(year)+'/';
   temp1:=inttostr(Month);
   if (length(Temp1)<2) then
     Temp3:='0'+Temp1
   else Temp3:=Temp1;
   Temp2:=Temp2+Temp3+'/';
   temp1:=inttostr(Day);
   if (length(Temp1)<2) then
     Temp3:='0'+Temp1
   else Temp3:=Temp1;
   Temp2:=Temp2+Temp3;
result:=temp2;
end;
//****************************************************************************
function TFAddCall.findRecToADOTList_callBack(TelCity:String;Localtel:string;FOk:string;DateCreatRecord:string): boolean;
begin

// if  DataModule1.ADOTList_callBack.locate('CityTelNo;LocalTelNo;FOk;DateCreatRecord',VarArrayOf([TelCity,Localtel,FOk,DateCreatRecord]),[loCaseInsensitive])=true then
 if  DataModule1.ADOTList_callBack.locate('LocalTelNo;FOk;DateCreatRecord',VarArrayOf([Localtel,FOk,DateCreatRecord]),[loCaseInsensitive])=true then
  result:= true
 else result:= false
end;
//****************************************************************************
procedure TFAddCall.BitBtn1Click(Sender: TObject);
var Hour, Min, Sec, MSec:Word;
 CurentTime:longword;
 d:tdatetime;
 Year, Month, Day: Word;
 ww:integer;
 CurentDate:string;
 begin
 d:=now;
 DecodeDate(d,Year, Month, Day);
 ftodate(Year, Month, Day);
 CurentDate:=datetostrFarsi(Year, Month, Day);

 DecodeTime(d, Hour, Min, Sec, MSec);
 CurentTime:=Hour*60+Min;
 ww:=length(MaskEdit1.text);
// if ((ww=7)) then //or (ww=11)) then
 if ((ww=7) or (ww=11)) then
 begin
  if Not findRecToADOTList_callBack(MaskEdit1.Text,LocalTell,'ÝÚÇá',CurentDate) then
  begin
   DataModule1.ADOTList_callBack.insert;
   DataModule1.ADOTList_callBackCityTelNo.AsString:=MaskEdit1.Text;
   DataModule1.ADOTList_callBackLocalTelNo.asstring:=LocalTell;
   DataModule1.ADOTList_callBackFlagDay.AsString:='1';
   DataModule1.ADOTList_callBackDateCreatRecord.asstring:=CurentDate;
   DataModule1.ADOTList_callBackTimeCreatRecord.AsInteger:=CurentTime;
   DataModule1.ADOTList_callBackDateStart.asstring:='0';
   DataModule1.ADOTList_callBackDateEnd.asstring:='0';
   DataModule1.ADOTList_callBackHourCall.asstring:='0';
   DataModule1.ADOTList_callBackMinCall.asstring:='0';
   DataModule1.ADOTList_callBackGrop.asstring:='0';

   DataModule1.ADOTList_callBackFOk.asstring:='ÝÚÇá';
   DataModule1.ADOTList_callBackFLock.asstring:='ÈÇÒ';
   DataModule1.ADOTList_callBackYear1.asinteger:=0;
   DataModule1.ADOTList_callBackMont1.asinteger:=0;
   DataModule1.ADOTList_callBackDay1.asinteger:=0;
   DataModule1.ADOTList_callBackHour1.asinteger:=0;
   DataModule1.ADOTList_callBackMin1.asinteger:=0;
   DataModule1.ADOTList_callBackCAns.asinteger:=0;
   DataModule1.ADOTList_callBackCNoAns.asinteger:=0;
   DataModule1.ADOTList_callBackCBusy.asinteger:=0;
   DataModule1.ADOTList_callBackCPCMElse.asinteger:=0;
   DataModule1.ADOTList_callBackCAnsNotKey.asinteger:=0;
   DataModule1.ADOTList_callBackFErr.asstring:='0';
   DataModule1.ADOTList_callBackUser1.asstring:=user1;
   DataModule1.ADOTList_callBack.post;
  end
  else  ShowMessage(' ÔãÇÑå ÏÑÎæÇÓÊí ÏÑ áíÓÊ ÇäÊÙÇÑ ãæÌæÏ ÇÓÊ íÇ ÏÑ áíÓÊ  Ñ˜æÑÏ ÝÚÇá ÏÇÑíÏ ');
 end
 else
  //ShowMessage(' ÔãÇÑå ÏÑÎæÇÓÊí ÇÔÊÈÇå ÇÓÊ 7 ÑÞã ÈÑÇí ÔãÇÑå ÔåÑí æ 11ÑÞã ÈÑÇí åãÑÇå æ10  ÑÞã ÈÑÇ ÔåÑÓÊÇäåÇ ');
  ShowMessage(' ÔãÇÑå ÏÑÎæÇÓÊí ÇÔÊÈÇå ÇÓÊ 7 ÑÞã ÈÑÇí ÔãÇÑå ÔåÑí  ');
end;
procedure TFAddCall.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = chr(13) then
  BitBtn1Click(Sender)
 else
// if (key >=chr(ord('0'))) and (key <= chr(ord('9'))) then
// else Abort;
end;

procedure TFAddCall.FormShow(Sender: TObject);
var
 d:tdatetime;
 Year, Month, Day: Word;
 CurentDate:string;

begin
 d:=now;
 DecodeDate(d,Year, Month, Day);
 ftodate(Year, Month, Day);
 CurentDate:=datetostrFarsi(Year, Month, Day);

 MaskEdit1.SetFocus;
 DataModule1.ADOTList_callBack.open;
 DataModule1.ADOTBooktell.Open;

 DataModule1.ADOTBooktell.Filter:='User1='+''''+User1+'''';
 DataModule1.ADOTBooktell.Filtered:=true;

  Edit3.Text:=CurentDate;
  Edit4.Text:=CurentDate;

 DataModule1.ADOTList_callBack.Filter:='User1='+''''+User1+'''' +' and DateCreatRecord >='+''''+Edit3.text+''''+' and DateCreatRecord <='+''''+Edit4.text+'''';
 DataModule1.ADOTList_callBack.Filtered:=true;


//  GetLastDateToString(yeart,montt, dayt,yeart3,montt3, dayt3,ss2,ss3);
//  Edit3.Text:=ss2;


end;

procedure TFAddCall.BitBtn3Click(Sender: TObject);
begin
   DataModule1.ADOTList_callBack.Edit;
   DataModule1.ADOTList_callBackFOk.asstring:='ÇäÕÑÇÝ';
   DataModule1.ADOTList_callBack.Post;
end;

procedure TFAddCall.BitBtn2Click(Sender: TObject);
begin
  FormBookTel.ShowModal;
end;

procedure TFAddCall.Timer1Timer(Sender: TObject);
begin
DataModule1.ADOTList_callBack.close;
DataModule1.ADOTBooktell.close;
sleep(10);

DataModule1.ADOTList_callBack.open;
DataModule1.ADOTBooktell.Open;
DataModule1.ADOTList_callBack.Last;
DBGrid2.Refresh;
DBGrid1.Refresh;
end;

procedure TFAddCall.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0  then
 begin
   DataModule1.ADOTBooktell.Filter:='User1='+''''+User1+'''' ;
   DataModule1.ADOTBooktell.Filtered:=true;
   DBGrid1.Refresh;
   DBGrid2.Refresh;
 end
else
 begin
   DataModule1.ADOTBooktell.Filter:='User1='+'''admin''' ;
   DataModule1.ADOTBooktell.Filtered:=true;
   DBGrid1.Refresh;
   DBGrid2.Refresh;
 end

end;

procedure TFAddCall.DBGrid1DblClick(Sender: TObject);
begin
if RadioGroup2.ItemIndex=0 then
 MaskEdit1.Text:=DataModule1.ADOTBooktellTelCity.asstring
else
  MaskEdit1.Text:=DataModule1.ADOTBooktellMobile.AsString;

end;

procedure TFAddCall.BitBtn4Click(Sender: TObject);
begin
   DataModule1.ADOTList_callBack.Edit;
   DataModule1.ADOTList_callBackFOk.asstring:='ÝÚÇá';
   DataModule1.ADOTList_callBack.Post;
end;

procedure TFAddCall.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 IF kEY=CHR(13) THEN
 begin
 DataModule1.ADOTList_callBack.Filter:='User1='+''''+User1+'''' +' and DateCreatRecord >='+''''+Edit3.text+''''+' and DateCreatRecord <='+''''+Edit4.text+'''';
 DataModule1.ADOTList_callBack.Filtered:=true;

 DataModule1.ADOTList_callBack.Close;
 DataModule1.ADOTList_callBack.Open;

 DBGrid2.Refresh;
 end;

end;

procedure TFAddCall.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 IF kEY=CHR(13) THEN
  edit4.SetFocus;
end;

procedure TFAddCall.BitBtn5Click(Sender: TObject);
begin
Timer1.Enabled:=not(Timer1.Enabled); 
end;

end.
