program BarnameHafte;

uses
  Forms,
  Umenu in 'Umenu.pas' {FormMenu},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UESetModNobat in 'UESetModNobat.pas' {FormEnterSetModeNobatDayWeek},
  URecVoic in 'URecVoic.pas' {FormRecVoic},
  UWeekBarnameBox in 'UWeekBarnameBox.pas' {FormWeekBarnameBox},
  UMenu2 in 'UMenu2.pas' {FormMenu2},
  UAyam in 'UAyam.pas' {FormAyam},
  UListBarnam in 'UListBarnam.pas' {FormListBarname},
  UListBPez in 'UListBPez.pas' {FormListBimarPezeshk},
  UTakhasos in 'UTakhasos.pas' {FormTakhasos},
  UInsPezD in 'UInsPezD.pas' {FormInsertPezDate},
  UBarname in 'UBarname.pas' {FormBarname},
  Upezeshk in 'Upezeshk.pas' {FormPezeshk},
  UETimeW in 'UETimeW.pas' {FormEnterTimeWorkNobat},
  UTestDate in 'UTestDate.pas' {FormDateTest},
  UDateBarn in 'UDateBarn.pas' {FormDateBarn},
  UWeekBarname in 'UWeekBarname.pas' {FormWeekBarname},
  UListGPez in 'UListGPez.pas' {FormListKolPezeshk},
  UListBarWek in 'UListBarWek.pas' {FormListBarnameWeek};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormMenu2, FormMenu2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormEnterSetModeNobatDayWeek, FormEnterSetModeNobatDayWeek);
  Application.CreateForm(TFormRecVoic, FormRecVoic);
  Application.CreateForm(TFormWeekBarnameBox, FormWeekBarnameBox);
  Application.CreateForm(TFormAyam, FormAyam);
  Application.CreateForm(TFormListBarname, FormListBarname);
  Application.CreateForm(TFormListBimarPezeshk, FormListBimarPezeshk);
  Application.CreateForm(TFormTakhasos, FormTakhasos);
  Application.CreateForm(TFormInsertPezDate, FormInsertPezDate);
  Application.CreateForm(TFormBarname, FormBarname);
  Application.CreateForm(TFormPezeshk, FormPezeshk);
  Application.CreateForm(TFormEnterTimeWorkNobat, FormEnterTimeWorkNobat);
  Application.CreateForm(TFormDateTest, FormDateTest);
  Application.CreateForm(TFormDateBarn, FormDateBarn);
  Application.CreateForm(TFormWeekBarname, FormWeekBarname);
  Application.CreateForm(TFormListKolPezeshk, FormListKolPezeshk);
  Application.CreateForm(TFormListBarnameWeek, FormListBarnameWeek);
  Application.Run;
end.
