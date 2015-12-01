unit USotr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, sMaskEdit,
  sCustomComboEdit, sTooledit;

type
  TfSotrAdd = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    add: TSpeedButton;
    Label9: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    MaskEdit2: TMaskEdit;
    Memo1: TMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton3: TSpeedButton;
    procedure addClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure LabeledEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit1Exit(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit2Exit(Sender: TObject);
    procedure LabeledEdit3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSotrAdd: TfSotrAdd;

implementation

uses UDM, UDoljnost;

{$R *.dfm}

procedure TfSotrAdd.addClick(Sender: TObject);
begin
          if (LabeledEdit1.Text='') or (LabeledEdit2.Text='') or (LabeledEdit3.Text='') or (Memo1.Lines.Text='') or
          (MaskEdit2.EditText='__ __ ______') or (DBLookupComboBox1.Text='') or (LabeledEdit4.Text='') or (LabeledEdit6.Text='') or (LabeledEdit7.Text='')
          then begin
          ShowMessage('У вас пустые поля/поле!');
          Exit;
          end;

          if DM.IBQSotrudnik.Locate('SERIA_NOM_PAS',MaskEdit2.Text,[]) then begin
          ShowMessage('Измените поле. Тут совпадение номера и серии паспорта!');
          Exit;
          end
          else begin

          DM.IBSotrudnik_add.ParamByName('FAM').AsString:=LabeledEdit1.Text;
          DM.IBSotrudnik_add.ParamByName('IMYA').AsString:=LabeledEdit2.Text;
          DM.IBSotrudnik_add.ParamByName('OTCH').AsString:=LabeledEdit3.Text;

          DM.IBSotrudnik_add.ParamByName('SERIA_NOM_PAS').AsString:=MaskEdit2.Text;
          DM.IBSotrudnik_add.ParamByName('DATA_VIDACHI').AsString:=datetostr(DateTimePicker1.Date);
          DM.IBSotrudnik_add.ParamByName('DOLJNOST_ID').AsString:=DBLookupComboBox1.KeyValue;

          DM.IBSotrudnik_add.ParamByName('DATA_ROJ').AsString:=datetostr(DateTimePicker2.Date);
          DM.IBSotrudnik_add.ParamByName('MESTO_ROJ').AsString:=LabeledEdit6.Text;
          DM.IBSotrudnik_add.ParamByName('ADRES').AsString:=LabeledEdit7.Text;

          DM.IBSotrudnik_add.ParamByName('OKLAD').AsString:=LabeledEdit4.Text;
          DM.IBSotrudnik_add.ParamByName('KEM_VIDAN').AsMemo:=Memo1.Lines.Text;


          DM.IBSotrudnik_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQSotrudnik.Close;
          DM.IBQSotrudnik.Open;

          end;
end;

procedure TfSotrAdd.SpeedButton3Click(Sender: TObject);
begin
fDoljnost.Show;
end;

procedure TfSotrAdd.LabeledEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0' .. '9',#8, decimalseparator]) then Key := #0;
end;

procedure TfSotrAdd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then add.Click;

end;

procedure TfSotrAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCape then fSotrAdd.Close;
end;

procedure TfSotrAdd.LabeledEdit1Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit1.Text<>'' then begin
    s:=LabeledEdit1.Text;
    LabeledEdit1.Text:=AnsiUpperCase(LabeledEdit1.Text[1])+LabeledEdit1.Text;
    s:=LabeledEdit1.Text;
    Delete(s,2,1);
    LabeledEdit1.Text:=s;
    end;


end;

procedure TfSotrAdd.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['А'..'Я', 'а'..'я', #8 ]) then  Key := #0;
end;

procedure TfSotrAdd.LabeledEdit2Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit2.Text<>'' then begin
    s:=LabeledEdit2.Text;
    LabeledEdit2.Text:=AnsiUpperCase(LabeledEdit2.Text[1])+LabeledEdit2.Text;
    s:=LabeledEdit2.Text;
    Delete(s,2,1);
    LabeledEdit2.Text:=s;
    end;
end;

procedure TfSotrAdd.LabeledEdit3Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit3.Text<>'' then begin
    s:=LabeledEdit3.Text;
    LabeledEdit3.Text:=AnsiUpperCase(LabeledEdit3.Text[1])+LabeledEdit3.Text;
    s:=LabeledEdit3.Text;
    Delete(s,2,1);
    LabeledEdit3.Text:=s;
    end;
end;

procedure TfSotrAdd.FormShow(Sender: TObject);
begin
 fSotrAdd.DBLookupComboBox1.ListSource.DataSet.Last;
end;

end.
