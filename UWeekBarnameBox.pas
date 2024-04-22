unit UWeekBarnameBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls,UDataModule,
  Buttons, ComCtrls;

type
  TFormWeekBarnameBox = class(TForm)
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel11: TBevel;
    Bevel10: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel14: TBevel;
    Label12: TLabel;
    Bevel15: TBevel;
    Label13: TLabel;
    Bevel16: TBevel;
    Label14: TLabel;
    Bevel17: TBevel;
    Label15: TLabel;
    Bevel18: TBevel;
    Label16: TLabel;
    Bevel19: TBevel;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox110: TDBCheckBox;
    DBCheckBox111: TDBCheckBox;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox113: TDBCheckBox;
    DBCheckBox114: TDBCheckBox;
    DBCheckBox115: TDBCheckBox;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox118: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    DBCheckBox120: TDBCheckBox;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox123: TDBCheckBox;
    DBCheckBox124: TDBCheckBox;
    DBCheckBox125: TDBCheckBox;
    DBCheckBox126: TDBCheckBox;
    DBCheckBox127: TDBCheckBox;
    DBCheckBox128: TDBCheckBox;
    DBCheckBox129: TDBCheckBox;
    DBCheckBox130: TDBCheckBox;
    DBCheckBox131: TDBCheckBox;
    DBCheckBox132: TDBCheckBox;
    DBCheckBox133: TDBCheckBox;
    DBCheckBox134: TDBCheckBox;
    DBCheckBox135: TDBCheckBox;
    DBCheckBox136: TDBCheckBox;
    DBCheckBox137: TDBCheckBox;
    DBCheckBox138: TDBCheckBox;
    DBCheckBox139: TDBCheckBox;
    DBCheckBox140: TDBCheckBox;
    DBCheckBox141: TDBCheckBox;
    DBCheckBox142: TDBCheckBox;
    DBCheckBox143: TDBCheckBox;
    DBCheckBox144: TDBCheckBox;
    DBCheckBox145: TDBCheckBox;
    DBCheckBox146: TDBCheckBox;
    DBCheckBox147: TDBCheckBox;
    DBCheckBox148: TDBCheckBox;
    DBCheckBox149: TDBCheckBox;
    DBCheckBox150: TDBCheckBox;
    DBCheckBox151: TDBCheckBox;
    DBCheckBox152: TDBCheckBox;
    DBCheckBox153: TDBCheckBox;
    DBCheckBox154: TDBCheckBox;
    DBCheckBox155: TDBCheckBox;
    DBCheckBox156: TDBCheckBox;
    DBCheckBox157: TDBCheckBox;
    DBCheckBox158: TDBCheckBox;
    DBCheckBox159: TDBCheckBox;
    DBCheckBox160: TDBCheckBox;
    DBCheckBox161: TDBCheckBox;
    DBCheckBox162: TDBCheckBox;
    DBCheckBox163: TDBCheckBox;
    DBCheckBox164: TDBCheckBox;
    DBCheckBox165: TDBCheckBox;
    DBCheckBox166: TDBCheckBox;
    DBCheckBox167: TDBCheckBox;
    DBCheckBox168: TDBCheckBox;
    DBCheckBox169: TDBCheckBox;
    DBCheckBox170: TDBCheckBox;
    DBCheckBox171: TDBCheckBox;
    DBCheckBox172: TDBCheckBox;
    DBCheckBox173: TDBCheckBox;
    DBCheckBox174: TDBCheckBox;
    DBCheckBox175: TDBCheckBox;
    DBCheckBox176: TDBCheckBox;
    DBCheckBox177: TDBCheckBox;
    DBCheckBox178: TDBCheckBox;
    DBCheckBox179: TDBCheckBox;
    DBCheckBox180: TDBCheckBox;
    DBCheckBox181: TDBCheckBox;
    DBCheckBox182: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Button1: TButton;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Button2: TButton;
    Label44: TLabel;
    Label45: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure CreatBarnameBox(Roz:string;BarnameShift:string;TimeStartH:string;TimeStartM:string);
  end;

var
  FormWeekBarnameBox: TFormWeekBarnameBox;

implementation

uses UMenu2;

{$R *.dfm}

procedure TFormWeekBarnameBox.FormShow(Sender: TObject);
var
CoIndint,I : integer;
kk,CoInd:string;
begin
//  FormMenu2.Timer1.Enabled:=false;;
  DataModule1.ADOTpezeshk.open;
  DataModule1.ADOTTakhasos.Open;
  DataModule1.ADOTWeekBarnameBox.Open;
  //Controls[2].Components[4].Name

   for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TDBCheckBox) then
      begin
       TDBCheckBox(Components[I]).DataSource:=DataModule1.DSADOTWeekBarnameBox;
       CoInd:=copy(Components[I].Name,11,3);
       CoIndint:=strtoint(CoInd);
       TDBCheckBox(Components[I]).DataField:='R'+'_'+CoInd;
    //   kk:='R'+inttostr(((CoIndint+1) div 27))+'_'+CoInd;
    //   ListBox1.Items.Add(kk);
      end
  end
end;

procedure TFormWeekBarnameBox.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  BitBtn3Click(Sender);

  DataModule1.ADOTpezeshk.close;
  DataModule1.ADOTTakhasos.close;
  DataModule1.ADOTWeekBarnameBox.close;
//  FormMenu2.Timer1.Enabled:=true;
end;

procedure TFormWeekBarnameBox.BitBtn1Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=true;
    DBLookupComboBox2.Visible:=true;
    DBEdit2.Visible:=true;
    DBEdit4.Visible:=true;
    DBCheckBox1.Visible:=true;
    DBCheckBox2.Visible:=true;
    DBCheckBox3.Visible:=true;
    DBCheckBox4.Visible:=true;
    DBCheckBox5.Visible:=true;
    DBCheckBox6.Visible:=true;
    DBCheckBox7.Visible:=true;

end;

procedure TFormWeekBarnameBox.BitBtn2Click(Sender: TObject);
begin
    DBLookupComboBox1.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    DBEdit2.Visible:=false;
    DBEdit4.Visible:=false;
    DBCheckBox1.Visible:=false;
    DBCheckBox2.Visible:=false;
    DBCheckBox3.Visible:=false;
    DBCheckBox4.Visible:=false;
    DBCheckBox5.Visible:=false;
    DBCheckBox6.Visible:=false;
    DBCheckBox7.Visible:=false;

end;


procedure TFormWeekBarnameBox.CreatBarnameBox(Roz:string;BarnameShift:string;TimeStartH:string;TimeStartM:string);
begin

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('INSERT INTO dbo.TBarname (CodTakhasos,CodPezeshk,RozHafte,Shift,TimeStartH,TimeStartM,TedarVizit,TimeVizitBimar)');
   DataModule1.ADOQuery3.sql.Add(' VALUES ('+DataModule1.ADOTWeekBarnameBoxCodTakhasos.asstring+','+
                                  DataModule1.ADOTWeekBarnameBoxCodPezeshk.asstring +','''+
                                  Roz+''','''+
                                  BarnameShift+''','+
                                  TimeStartH+','+
                                  TimeStartM+','+
                                  DataModule1.ADOTWeekBarnameBoxTedarVizit.asstring+','+
                                  DataModule1.ADOTWeekBarnameBoxTimeVizitBimar.asstring+')');
   DataModule1.ADOQuery3.ExecSQL;

//    DataModule1.ADOTBarname.insert;
//    DataModule1.ADOTBarnameCodTakhasos.asinteger:=DataModule1.ADOTWeekBarnameCodTakhasos.asinteger;
//    DataModule1.ADOTBarnameCodPezeshk.asinteger:=DataModule1.ADOTWeekBarnameCodPezeshk.asinteger;
//    DataModule1.ADOTBarnameRozHafte.asstring:=Roz;
//    DataModule1.ADOTBarnameShift.asstring:=DataModule1.ADOTWeekBarnameShift.asstring;
//    DataModule1.ADOTBarnameTimeStartH.asinteger:=DataModule1.ADOTWeekBarnameTimeStartH.asinteger;
//    DataModule1.ADOTBarnameTimeStartM.asinteger:=DataModule1.ADOTWeekBarnameTimeStartM.asinteger;
//    DataModule1.ADOTBarnameTedarVizit.asinteger:=DataModule1.ADOTWeekBarnameTedarVizit.asinteger;
//    DataModule1.ADOTBarnameTimeVizitBimar.asinteger:=DataModule1.ADOTWeekBarnameTimeVizitBimar.asinteger;
//    DataModule1.ADOTBarname.post;
end;
//****************************************************
procedure TFormWeekBarnameBox.BitBtn3Click(Sender: TObject);
begin

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TBarname ');
   DataModule1.ADOQuery3.ExecSQL;


 DataModule1.ADOTWeekBarnameBox.First;

  while not  DataModule1.ADOTWeekBarnameBox.eof do
  begin

//*********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_1.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_2.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_3.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_4.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_5.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_6.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_7.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_8.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_9.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_10.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_11.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_12.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_13.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_14.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_15.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_16.Value =true then
     CreatBarnameBox('‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_17.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_18.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_19.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_20.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_21.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_22.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_23.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_24.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_25.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_26.Value =true then
     CreatBarnameBox('‘‰»Â','»⁄œ «“ ŸÂ—','19','30');
//*********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_27.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_28.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_29.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_30.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_31.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_32.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_33.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_34.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_35.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_36.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_37.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_38.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_39.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_40.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_41.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_42.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_43.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_44.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_45.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_46.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_47.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_48.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_49.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_50.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_51.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_52.Value =true then
     CreatBarnameBox('Ìò‘‰»Â','»⁄œ «“ ŸÂ—','19','30');
//**********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_53.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_54.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_55.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_56.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_57.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_58.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_59.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_60.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_61.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_62.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_63.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_64.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_65.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_66.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_67.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_68.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_69.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_70.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_71.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_72.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_73.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_74.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_75.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_76.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_77.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_78.Value =true then
     CreatBarnameBox('œÊ‘‰»Â','»⁄œ «“ ŸÂ—','19','30');

//**********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_79.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_80.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_81.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_82.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_83.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_84.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_85.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_86.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_87.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_88.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_89.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_90.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_91.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_92.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_93.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_94.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_95.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_96.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_97.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_98.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_99.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_100.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_101.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_102.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_103.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_104.Value =true then
     CreatBarnameBox('”Â ‘‰»Â','»⁄œ «“ ŸÂ—','19','30');

//*********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_105.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_106.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_107.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_108.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_109.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_110.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_111.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_112.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_113.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_114.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_115.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_116.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_117.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_118.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_119.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_120.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_121.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_122.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_123.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_124.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_125.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_126.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_127.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_128.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_129.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_130.Value =true then
     CreatBarnameBox('çÂ«— ‘‰»Â','»⁄œ «“ ŸÂ—','19','30');
//*********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_131.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_132.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_133.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_134.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_135.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_136.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_137.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_138.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_139.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_140.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_141.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_142.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_143.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_144.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_145.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_146.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_147.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_148.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_149.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_150.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_151.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_152.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_153.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_154.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_155.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_156.Value =true then
     CreatBarnameBox('Å‰Ã ‘‰»Â','»⁄œ «“ ŸÂ—','19','30');
//*********************************************************
   if DataModule1.ADOTWeekBarnameBoxR_157.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','7','0');
   if DataModule1.ADOTWeekBarnameBoxR_158.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','7','30');
   if DataModule1.ADOTWeekBarnameBoxR_159.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','8','0');
   if DataModule1.ADOTWeekBarnameBoxR_160.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','8','30');
   if DataModule1.ADOTWeekBarnameBoxR_161.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','9','0');
   if DataModule1.ADOTWeekBarnameBoxR_162.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','9','30');
   if DataModule1.ADOTWeekBarnameBoxR_163.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','10','0');
   if DataModule1.ADOTWeekBarnameBoxR_164.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','10','30');
   if DataModule1.ADOTWeekBarnameBoxR_165.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','11','0');
   if DataModule1.ADOTWeekBarnameBoxR_166.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','11','30');
   if DataModule1.ADOTWeekBarnameBoxR_167.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','12','0');
   if DataModule1.ADOTWeekBarnameBoxR_168.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','12','30');
   if DataModule1.ADOTWeekBarnameBoxR_169.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','13','0');
   if DataModule1.ADOTWeekBarnameBoxR_170.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','13','30');
   if DataModule1.ADOTWeekBarnameBoxR_171.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','14','0');
   if DataModule1.ADOTWeekBarnameBoxR_172.Value =true then
     CreatBarnameBox('Ã„⁄Â','’»Õ','14','30');
   if DataModule1.ADOTWeekBarnameBoxR_173.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','15','0');
   if DataModule1.ADOTWeekBarnameBoxR_174.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','15','30');
   if DataModule1.ADOTWeekBarnameBoxR_175.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','16','0');
   if DataModule1.ADOTWeekBarnameBoxR_176.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','16','30');
   if DataModule1.ADOTWeekBarnameBoxR_177.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','17','0');
   if DataModule1.ADOTWeekBarnameBoxR_178.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','17','30');
   if DataModule1.ADOTWeekBarnameBoxR_179.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','18','0');
   if DataModule1.ADOTWeekBarnameBoxR_180.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','18','30');
   if DataModule1.ADOTWeekBarnameBoxR_181.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','19','0');
   if DataModule1.ADOTWeekBarnameBoxR_182.Value =true then
     CreatBarnameBox('Ã„⁄Â','»⁄œ «“ ŸÂ—','19','30');
//*********************************************************

   DataModule1.ADOTWeekBarnameBox.Next;
  end;

end;

procedure TFormWeekBarnameBox.Button1Click(Sender: TObject);
begin
   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TBarname ');
   DataModule1.ADOQuery3.ExecSQL;

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TDateBarn ');
   DataModule1.ADOQuery3.ExecSQL;

   DataModule1.ADOQuery3.sql.Clear;
   DataModule1.ADOQuery3.sql.Add('DELETE FROM dbo.TBarnRezerv ');
   DataModule1.ADOQuery3.ExecSQL;

end;

procedure TFormWeekBarnameBox.BitBtn4Click(Sender: TObject);
begin
Panel2.Visible:=true;
end;

procedure TFormWeekBarnameBox.Button2Click(Sender: TObject);
begin
Panel2.Visible:=false;
end;

end.





