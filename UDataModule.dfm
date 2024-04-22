object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 130
  Top = 43
  Height = 589
  Width = 755
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=db;Data Source=XPRO2-2DEEBF4' +
      '9A\MSSQLSERVER2008'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 576
    Top = 24
  end
  object ADOTUser: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'User1'
    Left = 32
    Top = 16
    object ADOTUserUser1: TStringField
      FieldName = 'User1'
      Size = 50
    end
    object ADOTUserpassword: TStringField
      FieldName = 'password'
      Size = 50
    end
    object ADOTUserLevel1: TStringField
      FieldName = 'Level1'
      Size = 50
    end
  end
  object ADOTTakhasos: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TTakhasos'
    Left = 32
    Top = 96
    object ADOTTakhasosCodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTTakhasosTakhasos: TWideStringField
      FieldName = 'Takhasos'
      Size = 50
    end
  end
  object ADOTpezeshk: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tpezeshk'
    Left = 32
    Top = 160
    object ADOTpezeshkCodPezeshk: TAutoIncField
      FieldName = 'CodPezeshk'
      ReadOnly = True
    end
    object ADOTpezeshkNamePezeshk: TWideStringField
      FieldName = 'NamePezeshk'
      Size = 50
    end
    object ADOTpezeshkMobil: TWideStringField
      FieldName = 'Mobil'
      Size = 50
    end
  end
  object DSADOTpezeshk: TDataSource
    DataSet = ADOTpezeshk
    Left = 160
    Top = 152
  end
  object DSADOTTakhasos: TDataSource
    DataSet = ADOTTakhasos
    Left = 128
    Top = 96
  end
  object ADOTPath: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingPath'
    Left = 112
    Top = 16
    object ADOTPathCustomerName: TWideStringField
      FieldName = 'CustomerName'
    end
    object ADOTPathSerialNo: TWideStringField
      FieldName = 'SerialNo'
      Size = 50
    end
    object ADOTPathDriveInstall: TWideStringField
      FieldName = 'DriveInstall'
      Size = 200
    end
    object ADOTPathDriveTree: TWideStringField
      FieldName = 'DriveTree'
      Size = 200
    end
    object ADOTPathDriveSySDb: TWideStringField
      FieldName = 'DriveSySDb'
      Size = 200
    end
    object ADOTPathDriveMess: TWideStringField
      FieldName = 'DriveMess'
      Size = 200
    end
    object ADOTPathDriveAns: TWideStringField
      FieldName = 'DriveAns'
      Size = 200
    end
    object ADOTPathDriveDabir: TWideStringField
      FieldName = 'DriveDabir'
      Size = 200
    end
    object ADOTPathDriveDabirLoad: TWideStringField
      FieldName = 'DriveDabirLoad'
      Size = 200
    end
    object ADOTPathDriveMoshName: TWideStringField
      FieldName = 'DriveMoshName'
      Size = 200
    end
    object ADOTPathSazeman: TWideStringField
      FieldName = 'Sazeman'
      Size = 200
    end
    object ADOTPathVsys_State: TWideStringField
      FieldName = 'Vsys_State'
      Size = 2
    end
    object ADOTPathSysIdd: TWideStringField
      FieldName = 'SysIdd'
      Size = 1
    end
    object ADOTPathElamGetKey: TWideStringField
      FieldName = 'ElamGetKey'
      Size = 1
    end
    object ADOTPathFlagDabir: TWideStringField
      FieldName = 'FlagDabir'
      Size = 1
    end
    object ADOTPathSondPesar: TWideStringField
      FieldName = 'SondPesar'
      Size = 1
    end
    object ADOTPathGetDig_Pulse_Tone: TWideStringField
      FieldName = 'GetDig_Pulse_Tone'
      Size = 1
    end
    object ADOTPathMainMenuRep: TWideStringField
      FieldName = 'MainMenuRep'
      Size = 1
    end
    object ADOTPathTimeOutDig: TIntegerField
      FieldName = 'TimeOutDig'
    end
    object ADOTPathDeletCopy: TWideStringField
      FieldName = 'DeletCopy'
      Size = 1
    end
    object ADOTPathDialPulseTone: TWideStringField
      FieldName = 'DialPulseTone'
      Size = 1
    end
    object ADOTPathOpMod_state: TWideStringField
      FieldName = 'OpMod_state'
      Size = 1
    end
    object ADOTPathDialAfterModSt: TWideStringField
      FieldName = 'DialAfterModSt'
      Size = 1
    end
    object ADOTPathCountBus: TIntegerField
      FieldName = 'CountBus'
    end
    object ADOTPathNotAnsOpRec: TIntegerField
      FieldName = 'NotAnsOpRec'
    end
    object ADOTPathOpOnly_serial: TWideStringField
      FieldName = 'OpOnly_serial'
      Size = 1
    end
    object ADOTPathFlashMod: TWideStringField
      FieldName = 'FlashMod'
      Size = 1
    end
    object ADOTPathAnsDelay: TIntegerField
      FieldName = 'AnsDelay'
    end
    object ADOTPathOpNumber: TWideStringField
      FieldName = 'OpNumber'
    end
    object ADOTPathPAsSup: TWideStringField
      FieldName = 'PAsSup'
    end
    object ADOTPathTimerecuser: TIntegerField
      FieldName = 'Timerecuser'
    end
    object ADOTPathTimerecsup: TIntegerField
      FieldName = 'Timerecsup'
    end
    object ADOTPathFlagSend8000: TIntegerField
      FieldName = 'FlagSend8000'
    end
    object ADOTPathCheckAns: TWideStringField
      FieldName = 'CheckAns'
      Size = 1
    end
    object ADOTPathK1: TWideStringField
      FieldName = 'K1'
    end
    object ADOTPathK2: TWideStringField
      FieldName = 'K2'
    end
    object ADOTPathK3: TWideStringField
      FieldName = 'K3'
    end
    object ADOTPathK4: TWideStringField
      FieldName = 'K4'
    end
    object ADOTPathK5: TWideStringField
      FieldName = 'K5'
    end
    object ADOTPathK6: TWideStringField
      FieldName = 'K6'
    end
    object ADOTPathK7: TWideStringField
      FieldName = 'K7'
    end
    object ADOTPathK8: TWideStringField
      FieldName = 'K8'
    end
  end
  object ADOTBarname: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TBarname'
    Left = 40
    Top = 304
    object ADOTBarnameCodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTBarnameCodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOTBarnameRozHafte: TWideStringField
      FieldName = 'RozHafte'
    end
    object ADOTBarnameShift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOTBarnameTimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOTBarnameTimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOTBarnameTedarVizit: TIntegerField
      FieldName = 'TedarVizit'
    end
    object ADOTBarnameTimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOTBarnameNamTakhasos: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'NamTakhasos'
      LookupDataSet = ADOTTakhasos
      LookupKeyFields = 'CodTakhasos'
      LookupResultField = 'Takhasos'
      KeyFields = 'CodTakhasos'
      Size = 50
      Lookup = True
    end
    object ADOTBarnameNamePezeshk: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'NamePezeshk'
      LookupDataSet = ADOTpezeshk
      LookupKeyFields = 'CodPezeshk'
      LookupResultField = 'NamePezeshk'
      KeyFields = 'CodPezeshk'
      Size = 50
      Lookup = True
    end
  end
  object DSTBarname: TDataSource
    DataSet = ADOTBarname
    Left = 152
    Top = 304
  end
  object ADOTDateBarn: TADOTable
    Connection = ADOConnection1
    TableName = 'TDateBarn'
    Left = 36
    Top = 357
    object ADOTDateBarnCodDateBarn: TBCDField
      FieldName = 'CodDateBarn'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOTDateBarnDate1: TWideStringField
      FieldName = 'Date1'
    end
    object ADOTDateBarnWeekNumber: TIntegerField
      FieldName = 'WeekNumber'
    end
    object ADOTDateBarnCodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTDateBarnCodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOTDateBarnRozHafte: TWideStringField
      FieldName = 'RozHafte'
    end
    object ADOTDateBarnTimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOTDateBarnTimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOTDateBarnTimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOTDateBarnShift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOTDateBarnState: TWideStringField
      FieldName = 'State'
    end
    object ADOTDateBarnDesc1: TWideStringField
      FieldName = 'Desc1'
      Size = 50
    end
    object ADOTDateBarnNamTakhasos: TStringField
      FieldKind = fkLookup
      FieldName = 'NamTakhasos'
      LookupDataSet = ADOTTakhasos
      LookupKeyFields = 'CodTakhasos'
      LookupResultField = 'Takhasos'
      KeyFields = 'CodTakhasos'
      Size = 50
      Lookup = True
    end
    object ADOTDateBarnNamePezeshk: TStringField
      FieldKind = fkLookup
      FieldName = 'NamePezeshk'
      LookupDataSet = ADOTpezeshk
      LookupKeyFields = 'CodPezeshk'
      LookupResultField = 'NamePezeshk'
      KeyFields = 'CodPezeshk'
      Size = 50
      Lookup = True
    end
    object ADOTDateBarnRozNo: TWideStringField
      FieldName = 'RozNo'
      Size = 1
    end
    object ADOTDateBarnTedadVizizt: TIntegerField
      FieldName = 'TedadVizizt'
    end
  end
  object DSTDateBarn: TDataSource
    DataSet = ADOTDateBarn
    Left = 148
    Top = 357
  end
  object ADOTBarnRezerv: TADOTable
    Connection = ADOConnection1
    IndexFieldNames = 'CodDateBarn'
    MasterFields = 'CodDateBarn'
    MasterSource = DSTDateBarn
    TableName = 'TBarnRezerv'
    Left = 36
    Top = 413
    object ADOTBarnRezervCodDateBarn: TBCDField
      FieldName = 'CodDateBarn'
      Precision = 18
      Size = 0
    end
    object ADOTBarnRezervCodMeli: TWideStringField
      FieldName = 'CodMeli'
    end
    object ADOTBarnRezervCodBime: TWideStringField
      FieldName = 'CodBime'
    end
    object ADOTBarnRezervShomare: TIntegerField
      FieldName = 'Shomare'
    end
    object ADOTBarnRezervSaateHozor: TWideStringField
      FieldName = 'SaateHozor'
      Size = 10
    end
    object ADOTBarnRezervState: TWideStringField
      FieldName = 'State'
    end
    object ADOTBarnRezervMobil: TWideStringField
      FieldName = 'Mobil'
    end
    object ADOTBarnRezervCallerId: TWideStringField
      FieldName = 'CallerId'
    end
  end
  object DSTBarnRezerv: TDataSource
    DataSet = ADOTBarnRezerv
    Left = 148
    Top = 413
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 584
    Top = 328
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 584
    Top = 384
  end
  object TTimeWork: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingTimeWork'
    Left = 584
    Top = 96
    object TTimeWorkRoz: TStringField
      FieldName = 'Roz'
      Size = 1
    end
    object TTimeWorkDescRoz: TStringField
      FieldName = 'DescRoz'
    end
    object TTimeWorkt1h: TIntegerField
      FieldName = 't1h'
    end
    object TTimeWorkt1m: TIntegerField
      FieldName = 't1m'
    end
    object TTimeWorkt2h: TIntegerField
      FieldName = 't2h'
    end
    object TTimeWorkt2m: TIntegerField
      FieldName = 't2m'
    end
    object TTimeWorkt3h: TIntegerField
      FieldName = 't3h'
    end
    object TTimeWorkt3m: TIntegerField
      FieldName = 't3m'
    end
    object TTimeWorkt4h: TIntegerField
      FieldName = 't4h'
    end
    object TTimeWorkt4m: TIntegerField
      FieldName = 't4m'
    end
    object TTimeWorkFlagTatil: TStringField
      FieldName = 'FlagTatil'
      Size = 1
    end
    object TTimeWorkFlagActiveTime1_2: TStringField
      FieldName = 'FlagActiveTime1_2'
      Size = 1
    end
  end
  object DSADOTWeekBarname: TDataSource
    DataSet = ADOTWeekBarname
    Left = 152
    Top = 249
  end
  object ADOTWeekBarname: TADOTable
    Connection = ADOConnection1
    TableName = 'TWeekBarname'
    Left = 40
    Top = 249
    object ADOTWeekBarnameCodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTWeekBarnameCodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOTWeekBarnameShift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOTWeekBarnameTimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOTWeekBarnameTimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOTWeekBarnameTedarVizit: TIntegerField
      FieldName = 'TedarVizit'
    end
    object ADOTWeekBarnameTimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOTWeekBarnameShanbe: TBooleanField
      FieldName = 'Shanbe'
    end
    object ADOTWeekBarnameYekShanbe: TBooleanField
      FieldName = 'YekShanbe'
    end
    object ADOTWeekBarnameDoShanbe: TBooleanField
      FieldName = 'DoShanbe'
    end
    object ADOTWeekBarnameSeShanbe: TBooleanField
      FieldName = 'SeShanbe'
    end
    object ADOTWeekBarnameChharShanbe: TBooleanField
      FieldName = 'ChharShanbe'
    end
    object ADOTWeekBarnamePangShanbe: TBooleanField
      FieldName = 'PangShanbe'
    end
    object ADOTWeekBarnameGomee: TBooleanField
      FieldName = 'Gomee'
    end
    object ADOTWeekBarnameNamTakhasos: TStringField
      FieldKind = fkLookup
      FieldName = 'NamTakhasos'
      LookupDataSet = ADOTTakhasos
      LookupKeyFields = 'CodTakhasos'
      LookupResultField = 'Takhasos'
      KeyFields = 'CodTakhasos'
      Size = 50
      Lookup = True
    end
    object ADOTWeekBarnameNamePezeshk: TStringField
      FieldKind = fkLookup
      FieldName = 'NamePezeshk'
      LookupDataSet = ADOTpezeshk
      LookupKeyFields = 'CodPezeshk'
      LookupResultField = 'NamePezeshk'
      KeyFields = 'CodPezeshk'
      Size = 50
      Lookup = True
    end
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 584
    Top = 440
  end
  object DSQ4List: TDataSource
    DataSet = ADOQuery4
    Left = 520
    Top = 496
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     TBarnRezerv.CodDateBarn, TBarnRezerv.CodMeli, TBarnRe' +
        'zerv.CodBime, TBarnRezerv.Shomare, TBarnRezerv.SaateHozor, TBarn' +
        'Rezerv.State, '
      
        '                      TBarnRezerv.Mobil, TBarnRezerv.CallerId, T' +
        'DateBarn.CodDateBarn AS Expr1, TDateBarn.Date1, TDateBarn.CodTak' +
        'hasos, TDateBarn.CodPezeshk, '
      
        '                      TDateBarn.RozHafte, TDateBarn.TimeStartH, ' +
        'TDateBarn.TimeStartM, TDateBarn.TimeVizitBimar, TDateBarn.TedadV' +
        'izizt, TDateBarn.Shift, '
      
        '                      TDateBarn.State AS Expr2, TDateBarn.Desc1,' +
        ' TTakhasos.CodTakhasos AS Expr3, TTakhasos.Takhasos, Tpezeshk.Co' +
        'dPezeshk AS Expr4, '
      
        '                      Tpezeshk.NamePezeshk, Tpezeshk.fileVoice, ' +
        'Tpezeshk.Mobil AS Expr5'
      'FROM         TBarnRezerv INNER JOIN'
      
        '                      TDateBarn ON TBarnRezerv.CodDateBarn = TDa' +
        'teBarn.CodDateBarn INNER JOIN'
      
        '                      TTakhasos ON TDateBarn.CodTakhasos = TTakh' +
        'asos.CodTakhasos INNER JOIN'
      
        '                      Tpezeshk ON TDateBarn.CodPezeshk = Tpezesh' +
        'k.CodPezeshk'
      
        'order by TBarnRezerv.CodDateBarn, TBarnRezerv.Shomare, Tpezeshk.' +
        'CodPezeshk')
    Left = 584
    Top = 496
    object ADOQuery4CodDateBarn: TBCDField
      FieldName = 'CodDateBarn'
      Precision = 18
      Size = 0
    end
    object ADOQuery4CodMeli: TWideStringField
      FieldName = 'CodMeli'
    end
    object ADOQuery4CodBime: TWideStringField
      FieldName = 'CodBime'
    end
    object ADOQuery4Shomare: TIntegerField
      FieldName = 'Shomare'
    end
    object ADOQuery4SaateHozor: TWideStringField
      FieldName = 'SaateHozor'
      Size = 10
    end
    object ADOQuery4State: TWideStringField
      FieldName = 'State'
    end
    object ADOQuery4Mobil: TWideStringField
      FieldName = 'Mobil'
    end
    object ADOQuery4CallerId: TWideStringField
      FieldName = 'CallerId'
    end
    object ADOQuery4Expr1: TBCDField
      FieldName = 'Expr1'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQuery4Date1: TWideStringField
      FieldName = 'Date1'
    end
    object ADOQuery4CodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOQuery4CodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOQuery4RozHafte: TWideStringField
      FieldName = 'RozHafte'
    end
    object ADOQuery4TimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOQuery4TimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOQuery4TimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOQuery4TedadVizizt: TIntegerField
      FieldName = 'TedadVizizt'
    end
    object ADOQuery4Shift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOQuery4Expr2: TWideStringField
      FieldName = 'Expr2'
    end
    object ADOQuery4Desc1: TWideStringField
      FieldName = 'Desc1'
      Size = 50
    end
    object ADOQuery4Expr3: TAutoIncField
      FieldName = 'Expr3'
      ReadOnly = True
    end
    object ADOQuery4Takhasos: TWideStringField
      FieldName = 'Takhasos'
      Size = 50
    end
    object ADOQuery4Expr4: TAutoIncField
      FieldName = 'Expr4'
      ReadOnly = True
    end
    object ADOQuery4NamePezeshk: TWideStringField
      FieldName = 'NamePezeshk'
      Size = 50
    end
    object ADOQuery4Expr5: TWideStringField
      FieldName = 'Expr5'
      Size = 50
    end
  end
  object ADOTTimeWork: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingTimeWork'
    Left = 412
    Top = 101
    object ADOTTimeWorkRoz: TStringField
      FieldName = 'Roz'
      Size = 1
    end
    object ADOTTimeWorkDescRoz: TStringField
      FieldName = 'DescRoz'
    end
    object ADOTTimeWorkt1h: TIntegerField
      FieldName = 't1h'
    end
    object ADOTTimeWorkt1m: TIntegerField
      FieldName = 't1m'
    end
    object ADOTTimeWorkt2h: TIntegerField
      FieldName = 't2h'
    end
    object ADOTTimeWorkt2m: TIntegerField
      FieldName = 't2m'
    end
    object ADOTTimeWorkt3h: TIntegerField
      FieldName = 't3h'
    end
    object ADOTTimeWorkt3m: TIntegerField
      FieldName = 't3m'
    end
    object ADOTTimeWorkt4h: TIntegerField
      FieldName = 't4h'
    end
    object ADOTTimeWorkt4m: TIntegerField
      FieldName = 't4m'
    end
    object ADOTTimeWorkFlagTatil: TStringField
      FieldName = 'FlagTatil'
      Size = 1
    end
    object ADOTTimeWorkFlagActiveTime1_2: TStringField
      FieldName = 'FlagActiveTime1_2'
      Size = 1
    end
  end
  object DSTTimeWork: TDataSource
    DataSet = ADOTTimeWork
    Left = 492
    Top = 101
  end
  object TAyam: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingAyam'
    Left = 584
    Top = 160
    object TAyamDateAyam: TStringField
      FieldName = 'DateAyam'
      Size = 12
    end
    object TAyamDescAyam: TStringField
      FieldName = 'DescAyam'
      Size = 50
    end
    object TAyamVoiceAyam: TStringField
      FieldName = 'VoiceAyam'
    end
    object TAyamFlagTatilAyam: TStringField
      FieldName = 'FlagTatilAyam'
      Size = 1
    end
  end
  object DSTAyam: TDataSource
    DataSet = ADOTAyam
    Left = 492
    Top = 157
  end
  object ADOTAyam: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingAyam'
    Left = 420
    Top = 157
    object ADOTAyamDateAyam: TStringField
      FieldName = 'DateAyam'
      Size = 12
    end
    object ADOTAyamDescAyam: TStringField
      FieldName = 'DescAyam'
      Size = 50
    end
    object ADOTAyamVoiceAyam: TStringField
      FieldName = 'VoiceAyam'
    end
    object ADOTAyamFlagTatilAyam: TStringField
      FieldName = 'FlagTatilAyam'
      Size = 1
    end
  end
  object ADOTDateBarn2: TADOTable
    Connection = ADOConnection1
    BeforePost = ADOTDateBarn2BeforePost
    TableName = 'TDateBarn'
    Left = 244
    Top = 357
    object ADOTDateBarn2CodDateBarn: TBCDField
      FieldName = 'CodDateBarn'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOTDateBarn2Date1: TWideStringField
      FieldName = 'Date1'
    end
    object ADOTDateBarn2WeekNumber: TIntegerField
      FieldName = 'WeekNumber'
    end
    object ADOTDateBarn2CodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTDateBarn2CodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOTDateBarn2RozHafte: TWideStringField
      FieldName = 'RozHafte'
    end
    object ADOTDateBarn2TimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOTDateBarn2TimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOTDateBarn2TimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOTDateBarn2TedadVizizt: TIntegerField
      FieldName = 'TedadVizizt'
    end
    object ADOTDateBarn2Shift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOTDateBarn2State: TWideStringField
      FieldName = 'State'
    end
    object ADOTDateBarn2Desc1: TWideStringField
      FieldName = 'Desc1'
      Size = 50
    end
    object ADOTDateBarn2NamTakhasos: TStringField
      FieldKind = fkLookup
      FieldName = 'NamTakhasos'
      LookupDataSet = ADOTTakhasos
      LookupKeyFields = 'CodTakhasos'
      LookupResultField = 'Takhasos'
      KeyFields = 'CodTakhasos'
      Size = 50
      Lookup = True
    end
    object ADOTDateBarn2NamePezeshk: TStringField
      FieldKind = fkLookup
      FieldName = 'NamePezeshk'
      LookupDataSet = ADOTpezeshk
      LookupKeyFields = 'CodPezeshk'
      LookupResultField = 'NamePezeshk'
      KeyFields = 'CodPezeshk'
      Size = 50
      Lookup = True
    end
    object ADOTDateBarn2RozNo: TWideStringField
      FieldName = 'RozNo'
      Size = 1
    end
  end
  object DSADOTDateBarn2: TDataSource
    DataSet = ADOTDateBarn2
    Left = 340
    Top = 357
  end
  object ADOTZSetingNobat: TADOTable
    Connection = ADOConnection1
    TableName = 'ZSetingNobat'
    Left = 372
    Top = 221
    object ADOTZSetingNobatTypeNobatDayWeek: TWideStringField
      FieldName = 'TypeNobatDayWeek'
    end
  end
  object DSADOTZSetingNobat: TDataSource
    DataSet = ADOTZSetingNobat
    Left = 508
    Top = 221
  end
  object DSADOTWeekBarnameBox: TDataSource
    DataSet = ADOTWeekBarnameBox
    Left = 152
    Top = 209
  end
  object ADOTWeekBarnameBox: TADOTable
    Connection = ADOConnection1
    TableName = 'TWeekBarnameBox'
    Left = 40
    Top = 209
    object ADOTWeekBarnameBoxCodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOTWeekBarnameBoxCodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOTWeekBarnameBoxTedarVizit: TIntegerField
      FieldName = 'TedarVizit'
    end
    object ADOTWeekBarnameBoxTimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOTWeekBarnameBoxR_1: TBooleanField
      FieldName = 'R_1'
    end
    object ADOTWeekBarnameBoxR_2: TBooleanField
      FieldName = 'R_2'
    end
    object ADOTWeekBarnameBoxR_3: TBooleanField
      FieldName = 'R_3'
    end
    object ADOTWeekBarnameBoxR_4: TBooleanField
      FieldName = 'R_4'
    end
    object ADOTWeekBarnameBoxR_5: TBooleanField
      FieldName = 'R_5'
    end
    object ADOTWeekBarnameBoxR_6: TBooleanField
      FieldName = 'R_6'
    end
    object ADOTWeekBarnameBoxR_7: TBooleanField
      FieldName = 'R_7'
    end
    object ADOTWeekBarnameBoxR_8: TBooleanField
      FieldName = 'R_8'
    end
    object ADOTWeekBarnameBoxR_9: TBooleanField
      FieldName = 'R_9'
    end
    object ADOTWeekBarnameBoxR_10: TBooleanField
      FieldName = 'R_10'
    end
    object ADOTWeekBarnameBoxR_11: TBooleanField
      FieldName = 'R_11'
    end
    object ADOTWeekBarnameBoxR_12: TBooleanField
      FieldName = 'R_12'
    end
    object ADOTWeekBarnameBoxR_13: TBooleanField
      FieldName = 'R_13'
    end
    object ADOTWeekBarnameBoxR_14: TBooleanField
      FieldName = 'R_14'
    end
    object ADOTWeekBarnameBoxR_15: TBooleanField
      FieldName = 'R_15'
    end
    object ADOTWeekBarnameBoxR_16: TBooleanField
      FieldName = 'R_16'
    end
    object ADOTWeekBarnameBoxR_17: TBooleanField
      FieldName = 'R_17'
    end
    object ADOTWeekBarnameBoxR_18: TBooleanField
      FieldName = 'R_18'
    end
    object ADOTWeekBarnameBoxR_19: TBooleanField
      FieldName = 'R_19'
    end
    object ADOTWeekBarnameBoxR_20: TBooleanField
      FieldName = 'R_20'
    end
    object ADOTWeekBarnameBoxR_21: TBooleanField
      FieldName = 'R_21'
    end
    object ADOTWeekBarnameBoxR_22: TBooleanField
      FieldName = 'R_22'
    end
    object ADOTWeekBarnameBoxR_23: TBooleanField
      FieldName = 'R_23'
    end
    object ADOTWeekBarnameBoxR_24: TBooleanField
      FieldName = 'R_24'
    end
    object ADOTWeekBarnameBoxR_25: TBooleanField
      FieldName = 'R_25'
    end
    object ADOTWeekBarnameBoxR_26: TBooleanField
      FieldName = 'R_26'
    end
    object ADOTWeekBarnameBoxR_27: TBooleanField
      FieldName = 'R_27'
    end
    object ADOTWeekBarnameBoxR_28: TBooleanField
      FieldName = 'R_28'
    end
    object ADOTWeekBarnameBoxR_29: TBooleanField
      FieldName = 'R_29'
    end
    object ADOTWeekBarnameBoxR_30: TBooleanField
      FieldName = 'R_30'
    end
    object ADOTWeekBarnameBoxR_31: TBooleanField
      FieldName = 'R_31'
    end
    object ADOTWeekBarnameBoxR_32: TBooleanField
      FieldName = 'R_32'
    end
    object ADOTWeekBarnameBoxR_33: TBooleanField
      FieldName = 'R_33'
    end
    object ADOTWeekBarnameBoxR_34: TBooleanField
      FieldName = 'R_34'
    end
    object ADOTWeekBarnameBoxR_35: TBooleanField
      FieldName = 'R_35'
    end
    object ADOTWeekBarnameBoxR_36: TBooleanField
      FieldName = 'R_36'
    end
    object ADOTWeekBarnameBoxR_37: TBooleanField
      FieldName = 'R_37'
    end
    object ADOTWeekBarnameBoxR_38: TBooleanField
      FieldName = 'R_38'
    end
    object ADOTWeekBarnameBoxR_39: TBooleanField
      FieldName = 'R_39'
    end
    object ADOTWeekBarnameBoxR_40: TBooleanField
      FieldName = 'R_40'
    end
    object ADOTWeekBarnameBoxR_41: TBooleanField
      FieldName = 'R_41'
    end
    object ADOTWeekBarnameBoxR_42: TBooleanField
      FieldName = 'R_42'
    end
    object ADOTWeekBarnameBoxR_43: TBooleanField
      FieldName = 'R_43'
    end
    object ADOTWeekBarnameBoxR_44: TBooleanField
      FieldName = 'R_44'
    end
    object ADOTWeekBarnameBoxR_45: TBooleanField
      FieldName = 'R_45'
    end
    object ADOTWeekBarnameBoxR_46: TBooleanField
      FieldName = 'R_46'
    end
    object ADOTWeekBarnameBoxR_47: TBooleanField
      FieldName = 'R_47'
    end
    object ADOTWeekBarnameBoxR_48: TBooleanField
      FieldName = 'R_48'
    end
    object ADOTWeekBarnameBoxR_49: TBooleanField
      FieldName = 'R_49'
    end
    object ADOTWeekBarnameBoxR_50: TBooleanField
      FieldName = 'R_50'
    end
    object ADOTWeekBarnameBoxR_51: TBooleanField
      FieldName = 'R_51'
    end
    object ADOTWeekBarnameBoxR_52: TBooleanField
      FieldName = 'R_52'
    end
    object ADOTWeekBarnameBoxR_53: TBooleanField
      FieldName = 'R_53'
    end
    object ADOTWeekBarnameBoxR_54: TBooleanField
      FieldName = 'R_54'
    end
    object ADOTWeekBarnameBoxR_55: TBooleanField
      FieldName = 'R_55'
    end
    object ADOTWeekBarnameBoxR_56: TBooleanField
      FieldName = 'R_56'
    end
    object ADOTWeekBarnameBoxR_57: TBooleanField
      FieldName = 'R_57'
    end
    object ADOTWeekBarnameBoxR_58: TBooleanField
      FieldName = 'R_58'
    end
    object ADOTWeekBarnameBoxR_59: TBooleanField
      FieldName = 'R_59'
    end
    object ADOTWeekBarnameBoxR_60: TBooleanField
      FieldName = 'R_60'
    end
    object ADOTWeekBarnameBoxR_61: TBooleanField
      FieldName = 'R_61'
    end
    object ADOTWeekBarnameBoxR_62: TBooleanField
      FieldName = 'R_62'
    end
    object ADOTWeekBarnameBoxR_63: TBooleanField
      FieldName = 'R_63'
    end
    object ADOTWeekBarnameBoxR_64: TBooleanField
      FieldName = 'R_64'
    end
    object ADOTWeekBarnameBoxR_65: TBooleanField
      FieldName = 'R_65'
    end
    object ADOTWeekBarnameBoxR_66: TBooleanField
      FieldName = 'R_66'
    end
    object ADOTWeekBarnameBoxR_67: TBooleanField
      FieldName = 'R_67'
    end
    object ADOTWeekBarnameBoxR_68: TBooleanField
      FieldName = 'R_68'
    end
    object ADOTWeekBarnameBoxR_69: TBooleanField
      FieldName = 'R_69'
    end
    object ADOTWeekBarnameBoxR_70: TBooleanField
      FieldName = 'R_70'
    end
    object ADOTWeekBarnameBoxR_71: TBooleanField
      FieldName = 'R_71'
    end
    object ADOTWeekBarnameBoxR_72: TBooleanField
      FieldName = 'R_72'
    end
    object ADOTWeekBarnameBoxR_73: TBooleanField
      FieldName = 'R_73'
    end
    object ADOTWeekBarnameBoxR_74: TBooleanField
      FieldName = 'R_74'
    end
    object ADOTWeekBarnameBoxR_75: TBooleanField
      FieldName = 'R_75'
    end
    object ADOTWeekBarnameBoxR_76: TBooleanField
      FieldName = 'R_76'
    end
    object ADOTWeekBarnameBoxR_77: TBooleanField
      FieldName = 'R_77'
    end
    object ADOTWeekBarnameBoxR_78: TBooleanField
      FieldName = 'R_78'
    end
    object ADOTWeekBarnameBoxR_79: TBooleanField
      FieldName = 'R_79'
    end
    object ADOTWeekBarnameBoxR_80: TBooleanField
      FieldName = 'R_80'
    end
    object ADOTWeekBarnameBoxR_81: TBooleanField
      FieldName = 'R_81'
    end
    object ADOTWeekBarnameBoxR_82: TBooleanField
      FieldName = 'R_82'
    end
    object ADOTWeekBarnameBoxR_83: TBooleanField
      FieldName = 'R_83'
    end
    object ADOTWeekBarnameBoxR_84: TBooleanField
      FieldName = 'R_84'
    end
    object ADOTWeekBarnameBoxR_85: TBooleanField
      FieldName = 'R_85'
    end
    object ADOTWeekBarnameBoxR_86: TBooleanField
      FieldName = 'R_86'
    end
    object ADOTWeekBarnameBoxR_87: TBooleanField
      FieldName = 'R_87'
    end
    object ADOTWeekBarnameBoxR_88: TBooleanField
      FieldName = 'R_88'
    end
    object ADOTWeekBarnameBoxR_89: TBooleanField
      FieldName = 'R_89'
    end
    object ADOTWeekBarnameBoxR_90: TBooleanField
      FieldName = 'R_90'
    end
    object ADOTWeekBarnameBoxR_91: TBooleanField
      FieldName = 'R_91'
    end
    object ADOTWeekBarnameBoxR_92: TBooleanField
      FieldName = 'R_92'
    end
    object ADOTWeekBarnameBoxR_93: TBooleanField
      FieldName = 'R_93'
    end
    object ADOTWeekBarnameBoxR_94: TBooleanField
      FieldName = 'R_94'
    end
    object ADOTWeekBarnameBoxR_95: TBooleanField
      FieldName = 'R_95'
    end
    object ADOTWeekBarnameBoxR_96: TBooleanField
      FieldName = 'R_96'
    end
    object ADOTWeekBarnameBoxR_97: TBooleanField
      FieldName = 'R_97'
    end
    object ADOTWeekBarnameBoxR_98: TBooleanField
      FieldName = 'R_98'
    end
    object ADOTWeekBarnameBoxR_99: TBooleanField
      FieldName = 'R_99'
    end
    object ADOTWeekBarnameBoxR_100: TBooleanField
      FieldName = 'R_100'
    end
    object ADOTWeekBarnameBoxR_101: TBooleanField
      FieldName = 'R_101'
    end
    object ADOTWeekBarnameBoxR_102: TBooleanField
      FieldName = 'R_102'
    end
    object ADOTWeekBarnameBoxR_103: TBooleanField
      FieldName = 'R_103'
    end
    object ADOTWeekBarnameBoxR_104: TBooleanField
      FieldName = 'R_104'
    end
    object ADOTWeekBarnameBoxR_105: TBooleanField
      FieldName = 'R_105'
    end
    object ADOTWeekBarnameBoxR_106: TBooleanField
      FieldName = 'R_106'
    end
    object ADOTWeekBarnameBoxR_107: TBooleanField
      FieldName = 'R_107'
    end
    object ADOTWeekBarnameBoxR_108: TBooleanField
      FieldName = 'R_108'
    end
    object ADOTWeekBarnameBoxR_109: TBooleanField
      FieldName = 'R_109'
    end
    object ADOTWeekBarnameBoxR_110: TBooleanField
      FieldName = 'R_110'
    end
    object ADOTWeekBarnameBoxR_111: TBooleanField
      FieldName = 'R_111'
    end
    object ADOTWeekBarnameBoxR_112: TBooleanField
      FieldName = 'R_112'
    end
    object ADOTWeekBarnameBoxR_113: TBooleanField
      FieldName = 'R_113'
    end
    object ADOTWeekBarnameBoxR_114: TBooleanField
      FieldName = 'R_114'
    end
    object ADOTWeekBarnameBoxR_115: TBooleanField
      FieldName = 'R_115'
    end
    object ADOTWeekBarnameBoxR_116: TBooleanField
      FieldName = 'R_116'
    end
    object ADOTWeekBarnameBoxR_117: TBooleanField
      FieldName = 'R_117'
    end
    object ADOTWeekBarnameBoxR_118: TBooleanField
      FieldName = 'R_118'
    end
    object ADOTWeekBarnameBoxR_119: TBooleanField
      FieldName = 'R_119'
    end
    object ADOTWeekBarnameBoxR_120: TBooleanField
      FieldName = 'R_120'
    end
    object ADOTWeekBarnameBoxR_121: TBooleanField
      FieldName = 'R_121'
    end
    object ADOTWeekBarnameBoxR_122: TBooleanField
      FieldName = 'R_122'
    end
    object ADOTWeekBarnameBoxR_123: TBooleanField
      FieldName = 'R_123'
    end
    object ADOTWeekBarnameBoxR_124: TBooleanField
      FieldName = 'R_124'
    end
    object ADOTWeekBarnameBoxR_125: TBooleanField
      FieldName = 'R_125'
    end
    object ADOTWeekBarnameBoxR_126: TBooleanField
      FieldName = 'R_126'
    end
    object ADOTWeekBarnameBoxR_127: TBooleanField
      FieldName = 'R_127'
    end
    object ADOTWeekBarnameBoxR_128: TBooleanField
      FieldName = 'R_128'
    end
    object ADOTWeekBarnameBoxR_129: TBooleanField
      FieldName = 'R_129'
    end
    object ADOTWeekBarnameBoxR_130: TBooleanField
      FieldName = 'R_130'
    end
    object ADOTWeekBarnameBoxR_131: TBooleanField
      FieldName = 'R_131'
    end
    object ADOTWeekBarnameBoxR_132: TBooleanField
      FieldName = 'R_132'
    end
    object ADOTWeekBarnameBoxR_133: TBooleanField
      FieldName = 'R_133'
    end
    object ADOTWeekBarnameBoxR_134: TBooleanField
      FieldName = 'R_134'
    end
    object ADOTWeekBarnameBoxR_135: TBooleanField
      FieldName = 'R_135'
    end
    object ADOTWeekBarnameBoxR_136: TBooleanField
      FieldName = 'R_136'
    end
    object ADOTWeekBarnameBoxR_137: TBooleanField
      FieldName = 'R_137'
    end
    object ADOTWeekBarnameBoxR_138: TBooleanField
      FieldName = 'R_138'
    end
    object ADOTWeekBarnameBoxR_139: TBooleanField
      FieldName = 'R_139'
    end
    object ADOTWeekBarnameBoxR_140: TBooleanField
      FieldName = 'R_140'
    end
    object ADOTWeekBarnameBoxR_141: TBooleanField
      FieldName = 'R_141'
    end
    object ADOTWeekBarnameBoxR_142: TBooleanField
      FieldName = 'R_142'
    end
    object ADOTWeekBarnameBoxR_143: TBooleanField
      FieldName = 'R_143'
    end
    object ADOTWeekBarnameBoxR_144: TBooleanField
      FieldName = 'R_144'
    end
    object ADOTWeekBarnameBoxR_145: TBooleanField
      FieldName = 'R_145'
    end
    object ADOTWeekBarnameBoxR_146: TBooleanField
      FieldName = 'R_146'
    end
    object ADOTWeekBarnameBoxR_147: TBooleanField
      FieldName = 'R_147'
    end
    object ADOTWeekBarnameBoxR_148: TBooleanField
      FieldName = 'R_148'
    end
    object ADOTWeekBarnameBoxR_149: TBooleanField
      FieldName = 'R_149'
    end
    object ADOTWeekBarnameBoxR_150: TBooleanField
      FieldName = 'R_150'
    end
    object ADOTWeekBarnameBoxR_151: TBooleanField
      FieldName = 'R_151'
    end
    object ADOTWeekBarnameBoxR_152: TBooleanField
      FieldName = 'R_152'
    end
    object ADOTWeekBarnameBoxR_153: TBooleanField
      FieldName = 'R_153'
    end
    object ADOTWeekBarnameBoxR_154: TBooleanField
      FieldName = 'R_154'
    end
    object ADOTWeekBarnameBoxR_155: TBooleanField
      FieldName = 'R_155'
    end
    object ADOTWeekBarnameBoxR_156: TBooleanField
      FieldName = 'R_156'
    end
    object ADOTWeekBarnameBoxR_157: TBooleanField
      FieldName = 'R_157'
    end
    object ADOTWeekBarnameBoxR_158: TBooleanField
      FieldName = 'R_158'
    end
    object ADOTWeekBarnameBoxR_159: TBooleanField
      FieldName = 'R_159'
    end
    object ADOTWeekBarnameBoxR_160: TBooleanField
      FieldName = 'R_160'
    end
    object ADOTWeekBarnameBoxR_161: TBooleanField
      FieldName = 'R_161'
    end
    object ADOTWeekBarnameBoxR_162: TBooleanField
      FieldName = 'R_162'
    end
    object ADOTWeekBarnameBoxR_163: TBooleanField
      FieldName = 'R_163'
    end
    object ADOTWeekBarnameBoxR_164: TBooleanField
      FieldName = 'R_164'
    end
    object ADOTWeekBarnameBoxR_165: TBooleanField
      FieldName = 'R_165'
    end
    object ADOTWeekBarnameBoxR_166: TBooleanField
      FieldName = 'R_166'
    end
    object ADOTWeekBarnameBoxR_167: TBooleanField
      FieldName = 'R_167'
    end
    object ADOTWeekBarnameBoxR_168: TBooleanField
      FieldName = 'R_168'
    end
    object ADOTWeekBarnameBoxR_169: TBooleanField
      FieldName = 'R_169'
    end
    object ADOTWeekBarnameBoxR_170: TBooleanField
      FieldName = 'R_170'
    end
    object ADOTWeekBarnameBoxR_171: TBooleanField
      FieldName = 'R_171'
    end
    object ADOTWeekBarnameBoxR_172: TBooleanField
      FieldName = 'R_172'
    end
    object ADOTWeekBarnameBoxR_173: TBooleanField
      FieldName = 'R_173'
    end
    object ADOTWeekBarnameBoxR_174: TBooleanField
      FieldName = 'R_174'
    end
    object ADOTWeekBarnameBoxR_175: TBooleanField
      FieldName = 'R_175'
    end
    object ADOTWeekBarnameBoxR_176: TBooleanField
      FieldName = 'R_176'
    end
    object ADOTWeekBarnameBoxR_177: TBooleanField
      FieldName = 'R_177'
    end
    object ADOTWeekBarnameBoxR_178: TBooleanField
      FieldName = 'R_178'
    end
    object ADOTWeekBarnameBoxR_179: TBooleanField
      FieldName = 'R_179'
    end
    object ADOTWeekBarnameBoxR_180: TBooleanField
      FieldName = 'R_180'
    end
    object ADOTWeekBarnameBoxR_181: TBooleanField
      FieldName = 'R_181'
    end
    object ADOTWeekBarnameBoxR_182: TBooleanField
      FieldName = 'R_182'
    end
  end
  object ADOCommand1: TADOCommand
    CommandTimeout = 600
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 488
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT     TDateBarn.*, TTakhasos.Takhasos, Tpezeshk.NamePezeshk'
      'FROM         TDateBarn INNER JOIN'
      
        '                      TTakhasos ON TDateBarn.CodTakhasos = TTakh' +
        'asos.CodTakhasos INNER JOIN'
      
        '                      Tpezeshk ON TDateBarn.CodPezeshk = Tpezesh' +
        'k.CodPezeshk')
    Left = 440
    Top = 496
    object ADOQuery5CodDateBarn: TBCDField
      FieldName = 'CodDateBarn'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQuery5Date1: TWideStringField
      FieldName = 'Date1'
    end
    object ADOQuery5RozNo: TWideStringField
      FieldName = 'RozNo'
      Size = 1
    end
    object ADOQuery5WeekNumber: TIntegerField
      FieldName = 'WeekNumber'
    end
    object ADOQuery5CodTakhasos: TIntegerField
      FieldName = 'CodTakhasos'
    end
    object ADOQuery5CodPezeshk: TIntegerField
      FieldName = 'CodPezeshk'
    end
    object ADOQuery5RozHafte: TWideStringField
      FieldName = 'RozHafte'
    end
    object ADOQuery5TimeStartH: TIntegerField
      FieldName = 'TimeStartH'
    end
    object ADOQuery5TimeStartM: TIntegerField
      FieldName = 'TimeStartM'
    end
    object ADOQuery5TimeVizitBimar: TIntegerField
      FieldName = 'TimeVizitBimar'
    end
    object ADOQuery5TedadVizizt: TIntegerField
      FieldName = 'TedadVizizt'
    end
    object ADOQuery5Shift: TWideStringField
      FieldName = 'Shift'
    end
    object ADOQuery5State: TWideStringField
      FieldName = 'State'
    end
    object ADOQuery5Desc1: TWideStringField
      FieldName = 'Desc1'
      Size = 50
    end
    object ADOQuery5Takhasos: TWideStringField
      FieldName = 'Takhasos'
      Size = 50
    end
    object ADOQuery5NamePezeshk: TWideStringField
      FieldName = 'NamePezeshk'
      Size = 50
    end
  end
end
