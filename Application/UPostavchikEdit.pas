unit UPostavchikEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TfPostavchikEdit = class(TForm)
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPostavchikEdit: TfPostavchikEdit;

implementation

uses UAuth, UDM, UMain;

{$R *.dfm}

procedure TfPostavchikEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCape then fPostavchikEdit.Close;
end;

procedure TfPostavchikEdit.SpeedButton1Click(Sender: TObject);
begin
          if (LabeledEdit1.Text='') or (LabeledEdit2.Text='') or (LabeledEdit3.Text='')  or
          (MaskEdit1.EditText='8(___)___-__-__')
          then begin
          ShowMessage('У вас пустые поля/поле!');
          Exit;
          end;

          DM.IBPostavchik_edit.ParamByName('NAME_POS').AsString:= LabeledEdit1.Text;
          DM.IBPostavchik_edit.ParamByName('TELEFON').AsString:=MaskEdit1.Text;
          DM.IBPostavchik_edit.ParamByName('ADRES').AsString:=LabeledEdit2.Text;
          DM.IBPostavchik_edit.ParamByName('CONTACT_NAME').AsString:=LabeledEdit3.Text;

          DM.IBPostavchik_edit.ParamByName('POS_ID').AsInteger:=DM.IBQPostavchikPOS_ID.AsInteger;

          DM.IBPostavchik_edit.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQPostavchik.Close;
          DM.IBQPostavchik.Open;
end;

procedure TfPostavchikEdit.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then SpeedButton1.Click;
end;

end.
