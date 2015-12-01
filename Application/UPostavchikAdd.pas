unit UPostavchikAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask;

type
  TfPostavchikAdd = class(TForm)
    LabeledEdit1: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPostavchikAdd: TfPostavchikAdd;

implementation

uses UAuth, UDM, UDoljnost, UMain, UPostavkaAdd, USobitieAdd, USotr,
  USotrEdit, UZastavka, UPostavchikEdit;

{$R *.dfm}

procedure TfPostavchikAdd.SpeedButton1Click(Sender: TObject);
begin
          if (LabeledEdit1.Text='') or (LabeledEdit2.Text='') or (LabeledEdit3.Text='')  or
          (MaskEdit1.EditText='8(___)___-__-__')
          then begin
          ShowMessage('� ��� ������ ����/����!');
          Exit;
          end;

          DM.IBPostavchik_add.ParamByName('NAME_POS').AsString:= LabeledEdit1.Text;
          DM.IBPostavchik_add.ParamByName('TELEFON').AsString:=MaskEdit1.Text;
          DM.IBPostavchik_add.ParamByName('ADRES').AsString:=LabeledEdit2.Text;
          DM.IBPostavchik_add.ParamByName('CONTACT_NAME').AsString:=LabeledEdit3.Text;



          DM.IBPostavchik_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQPostavchik.Close;
          DM.IBQPostavchik.Open;


end;

procedure TfPostavchikAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCape then fPostavchikAdd.Close;
end;

end.
