object Form1: TForm1
  Left = 2
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 240
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBar' +
        'nameBox_R_1]  DEFAULT ((0)) FOR [R_1]'
      'GO')
    Left = 56
    Top = 104
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security="";Persist Security Inf' +
      'o=False;User ID=sa;Initial Catalog=db;Data Source=ST4\MSSQLSERVE' +
      'R2008;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 104
    Top = 104
  end
end
