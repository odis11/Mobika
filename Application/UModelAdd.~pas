unit UModelAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Grids, DBGrids;

type
  TfModelAdd = class(TForm)
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    DBLookupComboBox5: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    DBLookupComboBox6: TDBLookupComboBox;
    LabeledEdit1: TLabeledEdit;
    SpeedButton7: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fModelAdd: TfModelAdd;

implementation

uses UDM, UAuth, UDoljnost, UMain, UPostavchikAdd, UPostavchikEdit,
  UPostavkaAdd, UPostavkaEdit, USobitieAdd, USotr, USotrEdit, UTovarAdd,
  UZastavka;

{$R *.dfm}

procedure TfModelAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCape then Close;
end;

procedure TfModelAdd.FormShow(Sender: TObject);
begin
 DBLookupComboBox1.ListSource.DataSet.Last;
DBLookupComboBox2.ListSource.DataSet.Last;
 DBLookupComboBox3.ListSource.DataSet.Last;
 DBLookupComboBox4.ListSource.DataSet.Last;
 DBLookupComboBox5.ListSource.DataSet.Last;
 DBLookupComboBox6.ListSource.DataSet.Last;
end;

procedure TfModelAdd.SpeedButton7Click(Sender: TObject);
begin
        DM.IBModel_add.ParamByName('OS_ID').AsString:=DBLookupComboBox1.KeyValue;
        DM.IBModel_add.ParamByName('CPU_ID').AsString:=DBLookupComboBox2.KeyValue;
        DM.IBModel_add.ParamByName('MEMORY_ID').AsString:=DBLookupComboBox3.KeyValue;
        DM.IBModel_add.ParamByName('CAMERA_ID').AsString:=DBLookupComboBox4.KeyValue;
        DM.IBModel_add.ParamByName('MARKA_ID').AsString:=DBLookupComboBox5.KeyValue;
        DM.IBModel_add.ParamByName('VID_ID').AsString:=DBLookupComboBox6.KeyValue;
        DM.IBModel_add.ParamByName('NAME_MODEL').AsString:=LabeledEdit1.Text;


          DM.IBModel_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQModel.Close;
          DM.IBQModel.Open;
end;

end.
