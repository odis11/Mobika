unit UTovarEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask;

type
  TfTovarEdit = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    DBLookupComboBox6: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTovarEdit: TfTovarEdit;

implementation

uses UDM, UAuth, UDoljnost, UMain, UModelAdd, UPostavchikAdd,
  UPostavchikEdit, UPostavkaAdd, UPostavkaEdit, USobitieAdd, USotr,
  USotrEdit, UTovarAdd, UZastavka;

{$R *.dfm}

procedure TfTovarEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCape then Close;
end;

procedure TfTovarEdit.SpeedButton1Click(Sender: TObject);
begin
          DM.IBTovar_edit.ParamByName('CENA').AsString:=LabeledEdit1.Text;
          DM.IBTovar_edit.ParamByName('KOL_VO_SKLAD').AsString:=LabeledEdit2.Text;
          DM.IBTovar_edit.ParamByName('MODEL_ID').AsString:=DBLookupComboBox6.KeyValue;

          DM.IBTovar_edit.ParamByName('TOVAR_ID').AsInteger:=DM.IBQTovarTOVAR_ID.AsInteger;
         
          DM.IBTovar_edit.ExecProc;

         DM.IBTransaction1.CommitRetaining;

          DM.IBQTovar.Close;
          DM.IBQTovar.Open;
end;

end.
