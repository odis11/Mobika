unit UPostavkaAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, ExtCtrls, StdCtrls, Spin, ComCtrls, Mask;

type
  TfPostavkaAdd = class(TForm)
    DateTimePicker1: TDateTimePicker;
    SpinEdit1: TSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPostavkaAdd: TfPostavkaAdd;

implementation

uses UAuth, UDM, UDoljnost, UMain, USobitieAdd, USotr, USotrEdit,
  UZastavka, DB, UPostavchikAdd, UPostavchikEdit, UPostavkaEdit, UModelAdd,
  UTovarAdd, UTovarEdit;

{$R *.dfm}

procedure TfPostavkaAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key=VK_ESCape then Close;
end;

procedure TfPostavkaAdd.LabeledEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not(Key in ['0' .. '9',#8, decimalseparator]) then Key := #0;
end;

procedure TfPostavkaAdd.FormShow(Sender: TObject);
begin
DBLookupComboBox1.ListSource.DataSet.Last;
DBLookupComboBox2.ListSource.DataSet.Last;
if DBLookupComboBox1.ListFieldIndex=0 then DBEdit1.Text:='0 руб';
end;

procedure TfPostavkaAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DBLookupComboBox1.KeyValue:=0;
end;

procedure TfPostavkaAdd.SpeedButton1Click(Sender: TObject);
begin
          if  DM.IBQTovar.Locate('NAME_MODEL', fPostavkaAdd.DBLookupComboBox1.Text,[]) then begin
            DM.IBTOVAR_KOL_VO.ParamByName('TOVAR_ID').AsInteger:=DM.IBQTovarTOVAR_ID.AsInteger;
            DM.IBTOVAR_KOL_VO.ParamByName('KOL_VO_SKLAD').AsInteger:= DM.IBQTovarKOL_VO_SKLAD.AsInteger + fPostavkaAdd.SpinEdit1.Value;
         DM.IBTOVAR_KOL_VO.ExecProc;
         // DM.IBTransaction1.CommitRetaining;
            DM.IBQTovar.Close;
          DM.IBQTovar.Open;

          DM.IBPostavka_add.ParamByName('TOVAR_ID').AsString:=DBLookupComboBox1.KeyValue;
          DM.IBPostavka_add.ParamByName('DATA_POST').AsString:=DateToStr(DateTimePicker1.Date);
          DM.IBPostavka_add.ParamByName('POS_ID').AsString:=DBLookupComboBox2.KeyValue;
          DM.IBPostavka_add.ParamByName('KOL_VO').AsInteger:=StrToInt(SpinEdit1.Text);


          DM.IBPostavka_add.ExecProc;
          DM.IBTransaction1.CommitRetaining;
          DM.IBQPostavka.Close;
          DM.IBQPostavka.Open;
         fMain.SpeedButton10.Click;
         end;
end;



end.

