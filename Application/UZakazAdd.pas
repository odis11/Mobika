unit UZakazAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, Buttons, Spin;

type
  TfZakazAdd = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    Label7: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fZakazAdd: TfZakazAdd;

implementation

uses UDM, DB;

{$R *.dfm}

procedure TfZakazAdd.SpeedButton1Click(Sender: TObject);
begin

   if  DM.IBQTovar.Locate('NAME_MODEL', fZakazAdd.DBLookupComboBox1.Text,[]) then begin
            DM.IBTOVAR_KOL_VO.ParamByName('TOVAR_ID').AsInteger:=DM.IBQTovarTOVAR_ID.AsInteger;
            DM.IBTOVAR_KOL_VO.ParamByName('KOL_VO_SKLAD').AsInteger:= DM.IBQTovarKOL_VO_SKLAD.AsInteger - fZakazAdd.SpinEdit1.Value;
         DM.IBTOVAR_KOL_VO.ExecProc;
         // DM.IBTransaction1.CommitRetaining;
            DM.IBQTovar.Close;
          DM.IBQTovar.Open;

          DM.IBZakaz_add.ParamByName('Tovar_ID').AsString:=DBLookupComboBox1.KeyValue;
          DM.IBZakaz_add.ParamByName('DATA_PRODAJI').AsString:=DateToStr(DateTimePicker1.Date);
          DM.IBZakaz_add.ParamByName('OPLATA_ID').AsString:=DBLookupComboBox2.KeyValue;
          DM.IBZakaz_add.ParamByName('SOTRUDNIK_ID').AsString:=DBLookupComboBox3.KeyValue;
          DM.IBZakaz_add.ParamByName('KOL_VO').AsInteger:=StrToInt(SpinEdit1.Text);
          DM.IBZakaz_add.ParamByName('CENA').AsString:=Edit1.Text;

          DM.IBZakaz_add.ExecProc;
          DM.IBTransaction1.CommitRetaining;
          DM.IBQZakaz.Close;
          DM.IBQZakaz.Open;
          end;
end;

procedure TfZakazAdd.DBLookupComboBox1Click(Sender: TObject);
var s,a:integer;

begin
  s:=DM.IBQTovarCENA.AsInteger + DM.IBQTovarCENA.AsInteger div 5;
  edit1.Text:=IntToStr(s);
  //a:=DM.IBQTovarKOL_VO_SKLAD.AsInteger;
  Label7.Caption:=dm.IBQTovarKOL_VO_SKLAD.AsString+' ��. �� ������';

  if DBLookupComboBox1.Text='' then SpinEdit1.Value:=0
  else SpinEdit1.Value:=1;

end;

procedure TfZakazAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCape then Close;
end;

end.
