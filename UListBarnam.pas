unit UListBarnam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RpRenderPDF, RpRenderPreview, RpRender,
  RpRenderCanvas, RpRenderPrinter, RpBase, RpFiler, RpRave, RpSystem,datetof,
  RpDefine, RpCon, RpConDS, ExtCtrls, Grids, DBGrids, jpeg, RpRenderText,
  RpRenderRTF;

type
  TFormListBarname = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    Label8: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    RvDataSetConnection3: TRvDataSetConnection;
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
  FormListBarname: TFormListBarname;

implementation

uses UDataModule, UMenu2;

{$R *.dfm}

procedure TFormListBarname.BitBtn1Click(Sender: TObject);
begin


 RvProject1.ProjectFile:='ListBarn.rav';


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

procedure TFormListBarname.FormShow(Sender: TObject);
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;
  DataModule1.ADOTBarname.Filter:='';
  DataModule1.ADOTBarname.Filtered:=true;;
  DataModule1.ADOTBarname.open;
end;

procedure TFormListBarname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTBarname.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormListBarname.RvSystem1Print(Sender: TObject);
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




