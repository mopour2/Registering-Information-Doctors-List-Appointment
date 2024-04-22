unit t1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var ss,ss2:string;
j,i:integer;
begin

for i:=3 to 182 do
begin
  ss2:=inttostr(i);
  ss:='ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_'+SS2+']  DEFAULT ((0)) FOR [R_'+ss2+']';
  ADOQuery1.sql.Clear;
  ADOQuery1.sql.Add(ss);
  ADOQuery1.ExecSQL;
end;

end;

end.
