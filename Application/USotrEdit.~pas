unit USotrEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TfSotrEdit = class(TForm)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    MaskEdit5: TMaskEdit;
    Memo2: TMemo;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit5Exit(Sender: TObject);
    procedure LabeledEdit9Exit(Sender: TObject);
    procedure LabeledEdit10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSotrEdit: TfSotrEdit;

implementation

uses UDM;

{$R *.dfm}

procedure TfSotrEdit.SpeedButton4Click(Sender: TObject);
begin
      if (LabeledEdit5.Text='') or (LabeledEdit9.Text='') or (LabeledEdit10.Text='') or (Memo2.Lines.Text='') or
          (MaskEdit5.Text='') or (DBLookupComboBox2.Text='') or (LabeledEdit12.Text='') or (LabeledEdit11.Text='') or (LabeledEdit13.Text='')
          then begin
          ShowMessage('У вас пустые поля/поле!');
          Exit;
          end;

          {if DM.IBQSotrudnik.Locate('SERIA_NOM_PAS',MaskEdit5.Text,[]) then begin
          ShowMessage('Измените поле. Тут совпадение номера и серии паспорта!');
          Exit;
          end
          else begin}

        DM.IBSotrudnik_edit.ParamByName('FAM').AsString:=LabeledEdit5.Text;
           DM.IBSotrudnik_edit.ParamByName('IMYA').AsString:=LabeledEdit9.Text;
          DM.IBSotrudnik_edit.ParamByName('OTCH').AsString:=LabeledEdit10.Text;
           DM.IBSotrudnik_edit.ParamByName('SERIA_NOM_PAS').AsString:=MaskEdit5.Text;
          DM.IBSotrudnik_edit.ParamByName('DATA_VIDACHI').AsString:=datetostr(DateTimePicker3.Date);
          DM.IBSotrudnik_edit.ParamByName('DOLJNOST_ID').AsString:=DBLookupComboBox2.KeyValue;
           DM.IBSotrudnik_edit.ParamByName('DATA_ROJ').AsString:=datetostr(DateTimePicker4.Date);
          DM.IBSotrudnik_edit.ParamByName('MESTO_ROJ').AsString:=LabeledEdit12.Text;
          DM.IBSotrudnik_edit.ParamByName('ADRES').AsString:=LabeledEdit13.Text;
          DM.IBSotrudnik_edit.ParamByName('OKLAD').AsString:=LabeledEdit11.Text;
           DM.IBSotrudnik_edit.ParamByName('KEM_VIDAN').AsMemo:=Memo2.Lines.Text;



          DM.IBSotrudnik_edit.ParamByName('SOTRUDNIK_ID').AsInteger:=DM.IBQSotrudnikSOTRUDNIK_ID.AsInteger;
         
          DM.IBSotrudnik_edit.ExecProc;

         DM.IBTransaction1.CommitRetaining;

          DM.IBQSotrudnik.Close;
          DM.IBQSotrudnik.Open;
end;

procedure TfSotrEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then SpeedButton4.Click;
if key=VK_ESCape then fSotrEdit.Close;
end;

procedure TfSotrEdit.FormShow(Sender: TObject);
begin
 fSotrEdit.DBLookupComboBox2.ListSource.DataSet.Last;
end;

procedure TfSotrEdit.LabeledEdit5Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit5.Text<>'' then begin
    s:=LabeledEdit5.Text;
    LabeledEdit5.Text:=AnsiUpperCase(LabeledEdit5.Text[1])+LabeledEdit5.Text;
    s:=LabeledEdit5.Text;
    Delete(s,2,1);
    LabeledEdit5.Text:=s;
    end;
end;

procedure TfSotrEdit.LabeledEdit9Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit9.Text<>'' then begin
    s:=LabeledEdit9.Text;
    LabeledEdit9.Text:=AnsiUpperCase(LabeledEdit9.Text[1])+LabeledEdit9.Text;
    s:=LabeledEdit9.Text;
    Delete(s,2,1);
    LabeledEdit9.Text:=s;
    end;
end;

procedure TfSotrEdit.LabeledEdit10Exit(Sender: TObject);
var s: String;
begin
    if LabeledEdit10.Text<>'' then begin
    s:=LabeledEdit10.Text;
    LabeledEdit10.Text:=AnsiUpperCase(LabeledEdit10.Text[1])+LabeledEdit10.Text;
    s:=LabeledEdit10.Text;
    Delete(s,2,1);
    LabeledEdit10.Text:=s;
    end;
end;

end.
