object FormMailBox: TFormMailBox
  Left = 168
  Top = 161
  Width = 674
  Height = 500
  Caption = 'FormMailBox'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 666
    Height = 466
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 263
      Top = 30
      Width = 387
      Height = 32
    end
    object Label1: TLabel
      Left = 533
      Top = 34
      Width = 100
      Height = 20
      AutoSize = False
      Caption = #1588#1605#1575#1585#1607' '#1583#1575#1582#1604#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel6: TBevel
      Left = 263
      Top = 96
      Width = 387
      Height = 32
    end
    object Label10: TLabel
      Left = 532
      Top = 100
      Width = 100
      Height = 20
      AutoSize = False
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel9: TBevel
      Left = 263
      Top = 63
      Width = 387
      Height = 32
    end
    object Label13: TLabel
      Left = 535
      Top = 67
      Width = 100
      Height = 20
      AutoSize = False
      Caption = #1606#1575#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 662
      Height = 25
      Align = alTop
      Caption = #1605#1588#1582#1589#1575#1578' '#1589#1606#1583#1608#1602
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 152
      Width = 625
      Height = 297
      BiDiMode = bdRightToLeft
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NoBox'
          Title.Caption = #1588#1605#1575#1585#1607' '#1583#1575#1582#1604#1610
          Title.Color = clSilver
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastNAme'
          Title.Caption = #1606#1575#1605
          Title.Color = clSilver
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstName'
          Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Title.Color = clSilver
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 221
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 32
      Width = 234
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 275
      Top = 34
      Width = 247
      Height = 24
      BiDiMode = bdRightToLeft
      DataField = 'NoBox'
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnEnter = FarsiEnter
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 275
      Top = 66
      Width = 247
      Height = 24
      BiDiMode = bdRightToLeft
      DataField = 'FirstName'
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = FarsiEnter
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 275
      Top = 101
      Width = 247
      Height = 24
      BiDiMode = bdRightToLeft
      DataField = 'LastNAme'
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      OnEnter = FarsiEnter
      OnKeyPress = DBEdit3KeyPress
    end
    object Button1: TButton
      Left = 24
      Top = 114
      Width = 129
      Height = 25
      Caption = #1575#1610#1580#1575#1583' '#1588#1605#1575#1585#1607' '#1583#1575#1582#1604#1610
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 24
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 7
      Text = '1'
      Visible = False
    end
    object Edit2: TEdit
      Left = 24
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 8
      Text = '100'
      Visible = False
      OnKeyPress = Edit2KeyPress
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 50
    Top = 94
  end
  object Table1: TTable
    DatabaseName = 'dBrep'
    TableName = 'dbo.InfoBox'
    Left = 10
    Top = 92
    object Table1NoBox: TStringField
      FieldName = 'NoBox'
      Required = True
    end
    object Table1Ramz: TStringField
      FieldName = 'Ramz'
    end
    object Table1LastNAme: TStringField
      FieldName = 'LastNAme'
      Size = 35
    end
    object Table1FirstName: TStringField
      FieldName = 'FirstName'
      Size = 35
    end
    object Table1Flag_act_Tel: TIntegerField
      FieldName = 'Flag_act_Tel'
    end
    object Table1Flag_Rec_Only: TIntegerField
      FieldName = 'Flag_Rec_Only'
    end
    object Table1FlagRecBipMes: TIntegerField
      FieldName = 'FlagRecBipMes'
    end
    object Table1FlagPlayNoMes: TIntegerField
      FieldName = 'FlagPlayNoMes'
    end
    object Table1NoBoxGaneshin: TStringField
      FieldName = 'NoBoxGaneshin'
    end
    object Table1FlagMenu: TStringField
      FieldName = 'FlagMenu'
    end
    object Table1Tel1: TStringField
      FieldName = 'Tel1'
    end
    object Table1Tel2: TStringField
      FieldName = 'Tel2'
    end
    object Table1Adress: TStringField
      FieldName = 'Adress'
      Size = 100
    end
    object Table1ModBoxForMenuAns: TStringField
      FieldName = 'ModBoxForMenuAns'
      Size = 1
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from InfoBox')
    Left = 8
    Top = 128
    object ADOQuery1NoBox: TStringField
      FieldName = 'NoBox'
    end
    object ADOQuery1Ramz: TStringField
      FieldName = 'Ramz'
    end
    object ADOQuery1LastNAme: TStringField
      FieldName = 'LastNAme'
      Size = 35
    end
    object ADOQuery1FirstName: TStringField
      FieldName = 'FirstName'
      Size = 35
    end
    object ADOQuery1Flag_act_Tel: TIntegerField
      FieldName = 'Flag_act_Tel'
    end
    object ADOQuery1Flag_Rec_Only: TIntegerField
      FieldName = 'Flag_Rec_Only'
    end
    object ADOQuery1FlagRecBipMes: TIntegerField
      FieldName = 'FlagRecBipMes'
    end
    object ADOQuery1FlagPlayNoMes: TIntegerField
      FieldName = 'FlagPlayNoMes'
    end
    object ADOQuery1NoBoxGaneshin: TStringField
      FieldName = 'NoBoxGaneshin'
    end
    object ADOQuery1FlagMenu: TStringField
      FieldName = 'FlagMenu'
    end
    object ADOQuery1Tel1: TStringField
      FieldName = 'Tel1'
    end
    object ADOQuery1Tel2: TStringField
      FieldName = 'Tel2'
    end
    object ADOQuery1Adress: TStringField
      FieldName = 'Adress'
      Size = 100
    end
    object ADOQuery1ModBoxForMenuAns: TStringField
      FieldName = 'ModBoxForMenuAns'
      Size = 1
    end
  end
  object Database1: TDatabase
    AliasName = 'tell2'
    Connected = True
    DatabaseName = 'dbrep'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa'
      'password=1234')
    SessionName = 'Default'
    Left = 168
    Top = 88
  end
end
