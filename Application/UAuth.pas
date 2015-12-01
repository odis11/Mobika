unit UAuth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, XPMan, jpeg, sSpeedButton;

type
  TfAuth = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAuth: TfAuth;

implementation

uses UMain, UZastavka, UDM;

{$R *.dfm}

procedure TfAuth.SpeedButton2Click(Sender: TObject);
begin
    fAuth.Close;
end;

procedure TfAuth.SpeedButton1Click(Sender: TObject);
begin
if (DM.IBQAvtoriz.Locate('LOGINN',LabeledEdit1.Text,[]))
and (DM.IBQAvtorizPASWORD.AsString=LabeledEdit2.Text) then
begin
    ShowMessage('WELCOME '+LabeledEdit1.Text);
    fMain.Show;
    fAuth.Hide;
end
else
begin
  ShowMessage('Неверное имя пользователя или пароль. Проверьте правильность введенных данных.');
  LabeledEdit2.Text:='';
end;
end;


procedure TfAuth.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then SpeedButton1.Click;
end;

procedure TfAuth.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_ESCape then SpeedButton2.Click;
end;

procedure TfAuth.Button1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  Edit1.Text:=OpenDialog1.FileName;
end;

procedure TfAuth.Button2Click(Sender: TObject);
begin
 DM.IBDatabase1.Connected:=False;
 DM.IBDatabase1.DatabaseName:='';
 DM.IBDatabase1.DatabaseName:='localhost'+':'+Edit1.Text;
 try
  DM.IBDatabase1.Connected:=True;
  DM.IBSotrudnikDESC.Open;
  DM.IBQSotrudnik.Open;
  DM.IBQDoljnost.Open;
  DM.IBQSobitie_sotr.Open;
  DM.IBQSobitie.Open;
  DM.IBQTip_dokum.Open;
  DM.IBQZakaz.Open;
  DM.IBQOplata.Open;
  DM.IBQPostavchik.Open;
  DM.IBQPostavka.Open;
  DM.IBQTovar.Open;
  DM.IBQModel.Open;
  DM.IBQOS.Open;
  DM.IBQMemory.Open;
  DM.IBQCPU.Open;
  DM.IBQCamera.Open;
  DM.IBQVid.Open;
  DM.IBQMarka.Open;
  DM.IBQAvtoriz.Open;
 except
  ShowMessage('Ошибка!!!');
  exit;
end;
  ShowMessage('Подключено');

end;

end.
