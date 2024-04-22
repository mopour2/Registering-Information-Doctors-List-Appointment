object FormBookTel: TFormBookTel
  Left = 252
  Top = 17
  Width = 595
  Height = 655
  Caption = 'FormBookTel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 504
    Top = 117
    Width = 48
    Height = 16
    Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 496
    Top = 140
    Width = 56
    Height = 16
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 504
    Top = 61
    Width = 58
    Height = 16
    Caption = #1588#1605#1575#1585#1607'  '#1607#1605#1585#1575#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 504
    Top = 87
    Width = 64
    Height = 16
    Caption = #1705#1583' '#1587#1610#1587#1578#1605' '#1711#1608#1610#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 14
    Top = 176
    Width = 561
    Height = 433
    BiDiMode = bdRightToLeft
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Mobile'
        Title.Caption = #1607#1605#1585#1575#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCallBack'
        Title.Caption = #1705#1583' '#1587#1610#1587#1578#1605' '#1711#1608#1610#1575
        Title.Color = clActiveCaption
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = clMenuBar
        Expanded = False
        FieldName = 'TelCity'
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Color = clScrollBar
        Expanded = False
        FieldName = 'Lname'
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 328
    Top = 109
    Width = 153
    Height = 23
    BiDiMode = bdRightToLeft
    DataField = 'TelCity'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnEnter = FarsiEnter
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 264
    Top = 140
    Width = 217
    Height = 23
    BiDiMode = bdRightToLeft
    DataField = 'Lname'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnEnter = FarsiEnter
    OnKeyPress = DBEdit2KeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 184
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 109
    Width = 37
    Height = 21
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 141
    Width = 44
    Height = 25
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 185
    Height = 82
    TabOrder = 6
    Visible = False
    object Label5: TLabel
      Left = 132
      Top = 19
      Width = 48
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 32
      Top = 52
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 104
    Width = 209
    Height = 82
    TabOrder = 7
    Visible = False
    object Label6: TLabel
      Left = 145
      Top = 21
      Width = 56
      Height = 16
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button2: TButton
      Left = 32
      Top = 52
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 5
      Top = 16
      Width = 140
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBEdit6: TDBEdit
    Left = 328
    Top = 58
    Width = 152
    Height = 23
    BiDiMode = bdRightToLeft
    DataField = 'Mobile'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    OnEnter = FarsiEnter
    OnKeyPress = DBEdit6KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 328
    Top = 84
    Width = 152
    Height = 23
    BiDiMode = bdRightToLeft
    DataField = 'CodCallBack'
    DataSource = DataSource1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnEnter = ENGlEnter
    OnKeyPress = DBEdit7KeyPress
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 59
    Width = 36
    Height = 20
    TabOrder = 10
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel3: TPanel
    Left = 88
    Top = 40
    Width = 201
    Height = 82
    TabOrder = 11
    Visible = False
    object Label3: TLabel
      Left = 132
      Top = 19
      Width = 54
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1607#1605#1585#1575#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button3: TButton
      Left = 32
      Top = 52
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit3: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit3KeyPress
    end
  end
  object Button4: TButton
    Left = 8
    Top = 152
    Width = 41
    Height = 25
    Caption = #1607#1605#1607
    TabOrder = 12
    OnClick = Button4Click
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from booktel')
    Left = 32
    Top = 200
    object ADOQuery1TelCity: TStringField
      FieldName = 'TelCity'
    end
    object ADOQuery1Mobile: TStringField
      FieldName = 'Mobile'
    end
    object ADOQuery1Lname: TStringField
      FieldName = 'Lname'
    end
    object ADOQuery1FName: TStringField
      FieldName = 'FName'
    end
    object ADOQuery1Adress: TStringField
      FieldName = 'Adress'
    end
    object ADOQuery1Desc1: TStringField
      FieldName = 'Desc1'
    end
    object ADOQuery1User1: TStringField
      FieldName = 'User1'
    end
    object ADOQuery1CodCallBack: TStringField
      FieldName = 'CodCallBack'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 200
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from booktel')
    Left = 32
    Top = 240
    object StringField1: TStringField
      FieldName = 'TelCity'
    end
    object StringField2: TStringField
      FieldName = 'Mobile'
    end
    object StringField3: TStringField
      FieldName = 'Lname'
    end
    object StringField4: TStringField
      FieldName = 'FName'
    end
    object StringField5: TStringField
      FieldName = 'Adress'
    end
    object StringField6: TStringField
      FieldName = 'Desc1'
    end
    object StringField7: TStringField
      FieldName = 'User1'
    end
    object StringField8: TStringField
      FieldName = 'CodCallBack'
    end
  end
end
