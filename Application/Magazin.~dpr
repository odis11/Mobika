program Magazin;

uses
  Forms,
  UZastavka in 'UZastavka.pas' {fZastavka},
  UAuth in 'UAuth.pas' {fAuth},
  UMain in 'UMain.pas' {fMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UDoljnost in 'UDoljnost.pas' {fDoljnost},
  USotr in 'USotr.pas' {fSotrAdd},
  USotrEdit in 'USotrEdit.pas' {fSotrEdit},
  USobitieAdd in 'USobitieAdd.pas' {fSobitie},
  UPostavkaAdd in 'UPostavkaAdd.pas' {fPostavkaAdd},
  UPostavchikAdd in 'UPostavchikAdd.pas' {fPostavchikAdd},
  UPostavchikEdit in 'UPostavchikEdit.pas' {fPostavchikEdit},
  UPostavkaEdit in 'UPostavkaEdit.pas' {fPostavkaEdit},
  UModelAdd in 'UModelAdd.pas' {fModelAdd},
  UTovarAdd in 'UTovarAdd.pas' {fTovarAdd},
  UTovarEdit in 'UTovarEdit.pas' {fTovarEdit},
  UZakazAdd in 'UZakazAdd.pas' {fZakazAdd},
  UDogovor in 'UDogovor.pas' {fDogovor},
  sort in 'Sort.pas',
  UOtchetPost in 'UOtchetPost.pas' {fOtchetPost};

{$R *.res}

begin
  Application.Initialize;
  fZastavka:=TfZastavka.Create(Application);
  fZastavka.show;
  fZastavka.Update;
  while fZastavka.Timer1.Enabled do
  Application.ProcessMessages;
  fZastavka.Hide;
  fZastavka.Free;
  Application.CreateForm(TfAuth, fAuth);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfDoljnost, fDoljnost);
  Application.CreateForm(TfSotrAdd, fSotrAdd);
  Application.CreateForm(TfSotrEdit, fSotrEdit);
  Application.CreateForm(TfSobitie, fSobitie);
  Application.CreateForm(TfPostavkaAdd, fPostavkaAdd);
  Application.CreateForm(TfPostavchikAdd, fPostavchikAdd);
  Application.CreateForm(TfPostavchikEdit, fPostavchikEdit);
  Application.CreateForm(TfPostavkaEdit, fPostavkaEdit);
  Application.CreateForm(TfModelAdd, fModelAdd);
  Application.CreateForm(TfTovarAdd, fTovarAdd);
  Application.CreateForm(TfTovarEdit, fTovarEdit);
  Application.CreateForm(TfZakazAdd, fZakazAdd);
  Application.CreateForm(TfDogovor, fDogovor);
  Application.CreateForm(TfOtchetPost, fOtchetPost);
  Application.Run;
end.
