unit UZastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPMan, ExtCtrls, jpeg, sSkinManager,
  acProgressBar, sGauge, sLabel;

type
  TfZastavka = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    sSkinManager1: TsSkinManager;
    sGauge1: TsGauge;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fZastavka: TfZastavka;

implementation

{$R *.dfm}

procedure TfZastavka.Timer1Timer(Sender: TObject);
begin
randomize;
if sGauge1.Progress = 100 then
begin
  Timer1.Enabled:=false;
  sGauge1.Visible:=false;
  fZastavka.Height:=fZastavka.Height-480;
  sleep(1000);
  end
else
  begin
  sGauge1.Progress:=sGauge1.Progress+random(16);
  //sLabel1.Caption:='Загрузка '+ inttostr(sGauge1.Progress)+' %';
  end;
end;

end.
