unit UListGPez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RpRenderPDF, RpRenderPreview, RpRender,
  RpRenderCanvas, RpRenderPrinter, RpBase, RpFiler, RpRave, RpSystem,datetof,
  RpDefine, RpCon, RpConDS, ExtCtrls, Grids, DBGrids, jpeg, RpRenderText,
  RpRenderRTF;

type
  TFormListKolPezeshk = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Label8: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    RvDataSetConnection2: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    RvNDRWriter1: TRvNDRWriter;
    RvRenderPrinter1: TRvRenderPrinter;
    RvRenderPreview1: TRvRenderPreview;
    RvRenderPDF1: TRvRenderPDF;
    FontDialog1: TFontDialog;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RvSystem1Print(Sender: TObject);
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
  FormListKolPezeshk: TFormListKolPezeshk;

implementation

uses UDataModule, UMenu2;

{$R *.dfm}

procedure TFormListKolPezeshk.BitBtn1Click(Sender: TObject);
begin

DataModule1.ADOQuery4.sql.Clear;
DataModule1.ADOQuery4.sql.Add('SELECT   TBarnRezerv.CodDateBarn, TBarnRezerv.CodMeli, TBarnRezerv.CodBime, TBarnRezerv.Shomare, TBarnRezerv.SaateHozor, TBarnRezerv.State,');
DataModule1.ADOQuery4.sql.Add('TBarnRezerv.Mobil, TBarnRezerv.CallerId, TDateBarn.CodDateBarn AS Expr1, TDateBarn.Date1, TDateBarn.CodTakhasos, TDateBarn.CodPezeshk,');
DataModule1.ADOQuery4.sql.Add('TDateBarn.RozHafte, TDateBarn.TimeStartH, TDateBarn.TimeStartM, TDateBarn.TimeVizitBimar, TDateBarn.TedadVizizt, TDateBarn.Shift,');
DataModule1.ADOQuery4.sql.Add('TDateBarn.State AS Expr2, TDateBarn.Desc1, TTakhasos.CodTakhasos AS Expr3, TTakhasos.Takhasos, Tpezeshk.CodPezeshk AS Expr4,');
DataModule1.ADOQuery4.sql.Add('Tpezeshk.NamePezeshk, Tpezeshk.Mobil AS Expr5');
DataModule1.ADOQuery4.sql.Add('FROM         TBarnRezerv INNER JOIN');
DataModule1.ADOQuery4.sql.Add('TDateBarn ON TBarnRezerv.CodDateBarn = TDateBarn.CodDateBarn INNER JOIN');
DataModule1.ADOQuery4.sql.Add('TTakhasos ON TDateBarn.CodTakhasos = TTakhasos.CodTakhasos INNER JOIN');
DataModule1.ADOQuery4.sql.Add('Tpezeshk ON TDateBarn.CodPezeshk = Tpezeshk.CodPezeshk');
DataModule1.ADOQuery4.sql.Add('where  TDateBarn.Date1='''+edit1.text+''' ');
DataModule1.ADOQuery4.sql.Add('order by TBarnRezerv.CodDateBarn, TBarnRezerv.Shomare, Tpezeshk.CodPezeshk');
//   DataModule1.ADOQuery4.ExecSQL;

 RvProject1.ProjectFile:='ListBPz2.rav';
 DataModule1.ADOQuery4.open;

  if DataModule1.ADOQuery4.RecordCount >0 then
  begin
    if RadioGroup1.ItemIndex=1 then
    begin
      RvSystem1.DefaultDest:=rdPrinter;
      RvSystem1.SystemPrinter.Orientation:=poPortrait;
      RvSystem1.RenderObject:=RvRenderPrinter1;
      RvSystem1.OutputFileName:= 'c:\Simple2.xps ';
      RvProject1.Open;
      RvProject1.Execute;
      RvProject1.SaveToFile('c:\rep.dat');
      RvProject1.Close;
    end
    else if RadioGroup1.ItemIndex=0 then //Preview;
    begin
      RvSystem1.SystemPrinter.Orientation:=poPortrait;
      RvSystem1.DefaultDest:=rdPreview;
      RvProject1.Open;
      RvProject1.Execute;
      RvProject1.SaveToFile('c:\rep.dat');
      RvProject1.Close;
    end
{    else if RadioGroup1.ItemIndex=2 then //pdf;
    begin

          //RvRenderPDF1.FontEncoding:=;
          RvSystem1.DefaultDest:= rdFile;
          RvSystem1.DoNativeOutput:= False;
          RvSystem1.RenderObject:= RvRenderPDF1;
          RvSystem1.OutputFileName:= 'c:\Simple2.pdf ';
          RvSystem1.SystemSetups:= RvSystem1.SystemSetups - [ssAllowSetup];
          RvProject1.Engine:= RvSystem1;
          RvSystem1.Execute;
          RvProject1.Execute;
   end                                  }

   else       //XPS
   begin

        RvSystem1.DefaultDest:=rdFile;
//        RvSystem1.DoNativeOutput:= False;
        RvSystem1.RenderObject:=RvRenderPrinter1;
//        RvSystem1.OutputFileName:= 'c:\Simple2.txt ';
        RvProject1.Open;
        RvProject1.Execute;
        RvProject1.SaveToFile('c:\rep.dat');
        RvProject1.Close;
    end

  end;
 DataModule1.ADOQuery4.close;

end;

procedure TFormListKolPezeshk.FormShow(Sender: TObject);
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
  DataModule1.ADOTDateBarn.Filter:='Date1='+DateFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=DateFarsi;
  Ayear:=year;
  Amonth:=month;
  Aday:=day;
  DataModule1.ADOTBarnRezerv.Open;
end;

procedure TFormListKolPezeshk.BitBtn2Click(Sender: TObject);
begin
  year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetLastDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  DataModule1.ADOTDateBarn.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;
end;

procedure TFormListKolPezeshk.BitBtn3Click(Sender: TObject);
begin
  year:=Ayear;
  month:=Amonth;
  day:=Aday;
  GetAfterDateToString(year,month,day,Ayear,Amonth,Aday,AfterDateStrFarsi,SS);
  DataModule1.ADOTDateBarn.Filter:='Date1='+AfterDateStrFarsi;
  DataModule1.ADOTDateBarn.Filtered:=true;

  Edit1.Text:=AfterDateStrFarsi;

end;

procedure TFormListKolPezeshk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTdATEBarn.close;
  DataModule1.ADOTBarnRezerv.close;
//  FormMenu2.Timer1.Enabled:=true;

end;

procedure TFormListKolPezeshk.RvSystem1Print(Sender: TObject);
var f:TSaveFont;
begin
  with Sender as TBaseReport do
  begin
      Home;
//     FontDialog1.Execute;
      Font.Name:='Arial';
//     SetFont ('Arial', 16);
     Font.Charset:= ARABIC_CHARSET ;
//      Font.Name:='Arabic Transparent,12,Bold';//'Arial';Arabic Transparent,12,Bold
//      Font.Charset:=161; // this is for Greek Charset
//      SetColumns(6,0.5);
//      FontColor:=clRed;
//      SetBaseFont();
//Fonts

end;
end;

end.



{var
   Informe: TMemoryStream;

//Modificar esta seccion del codigo
if not ADODiario.IsEmpty then
      begin
        Informe := TmemoryStream.Create ;  //Nueva linea
        with frmMain.RvProject1 do
        begin
          SetParam('Titulo', strTitulo);
          SelectReport('ReporteDiario', false);
          SaveToStream(Informe);
          Execute ;
          frmMain.RvRenderPDF1.PrintRender(Informe,'reportehoy.pdf'); //Nueva linea
        end;
      end;
}
{
rvsystem1.DefaultDest:=rdpreview; //***** agregue esta linea
RvSystem1.DefaultDest := rdFile;
RvSystem1.DoNativeOutput := false;
RvSystem1.RenderObject := RvRenderPdf1;
RvSystem1.OutputFileName := 'c:\mifichero.pdf';
RvSystem1.SystemSetups := RvSystem1.SystemSetups - [ssAllowSetup];
rvsystem1.DefaultDest:=rdpreview;

rvproject1.Execute;

martita
Ver Perfil
Encontrar Todos los Mensajes de martita

}
{procedure TFormRave.btnPdfClick (Sender: TObject);
begin
RvSystem1.DefaultDest: = rdFile;
RvSystem1.DoNativeOutput: = False;
RvSystem1.RenderObject: = RvRenderPDF1;
RvSystem1.OutputFileName: = ' Simple2.pdf ';
RvSystem1.SystemSetups: = RvSystem1.SystemSetups - [ssAllowSetup];
RvProject1.Engine: = RvSystem1;
RvProject1.Execute;
end;
}

{


 Posted: Wed Sep 28, 2005 8:06 am    Post subject: Re: RvRenderPDF   

--------------------------------------------------------------------------------
 
Hello there! 
Thank you very much for answering.I will try to be very specific. 
I m using intraweb forms for my web application. For printing with rave 
reports I put in my form 
an RvSystem, an RvRenderPDF and a button. In the OnClick event of the 
button I wrote the standard 
code 
with RvSystem1 do 
begin 
DefaultDest:= rdFile; 
DoNativeOutput:= False; 
RenderObject:= RvRenderPDF1; 
OutputFileName:= 'Files/myreport.pdf'; 
SystemSetups:= RvSystem1.SystemSetups - [ssAllowSetup];
Execute;
end;

I added also code in the RvSystem1Print method.
with Sender as TBaseReport do
begin
Home;
Font.Name:='Arial';
Font.Charset:=161; <- this is for Greek Charset
SetColumns(6,0.5);
FontColor:=clRed;
......
.....
some declarations with the Print method
......
......
AddToInitProc('window.open("http://localhost:8888/Files/myreport.pdf")');

It prints perfect all english characters but the greek characters come out
with little boxes and totally corrupted.
I tried all FontEncodings. Nothing resolves the problem.
Thanks again.






"Nevrona Support"
Hi,

Please include your Rave version in EACH future message (check Rave Help
About). It would help us provide a better answer.

Please look at http://www.nevrona.com/Default.aspx?tabid=178 for information
about using and updating Rave. At this link, you will also find many
references, articles and general information about using Rave. Be sure to
look at the bottom part of that page as it applies to all Rave users.



}
