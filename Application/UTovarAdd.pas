unit UTovarAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls, ExtCtrls;

type
  TfTovarAdd = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    procedure LabeledEdit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTovarAdd: TfTovarAdd;

implementation

uses UAuth, UDM, UDoljnost, UMain, UModelAdd, UPostavchikAdd,
  UPostavchikEdit, UPostavkaAdd, UPostavkaEdit, USobitieAdd, USotr,
  USotrEdit, UZastavka;

{$R *.dfm}

procedure TfTovarAdd.LabeledEdit2Change(Sender: TObject);
begin
    LabeledEdit2.Text:='0';
end;

procedure TfTovarAdd.SpeedButton2Click(Sender: TObject);
begin
 fModelAdd.ShowModal;
end;

procedure TfTovarAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCape then Close;
end;

procedure TfTovarAdd.FormShow(Sender: TObject);
begin
 DBLookupComboBox6.ListSource.DataSet.Last;
end;

procedure TfTovarAdd.SpeedButton1Click(Sender: TObject);
begin
        DM.IBTovar_add.ParamByName('CENA').AsString:=LabeledEdit1.Text;
        DM.IBTovar_add.ParamByName('MODEL_ID').AsString:=DBLookupComboBox6.KeyValue;
        DM.IBTovar_add.ParamByName('KOL_VO_SKLAD').AsString:=LabeledEdit2.Text;


          DM.IBTovar_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQTovar.Close;
          DM.IBQTovar.Open;
end;

end.
