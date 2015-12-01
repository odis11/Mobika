unit USobitieAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, sLabel,
  sMemo, Buttons, sGroupBox, sSpeedButton;

type
  TfSobitie = class(TForm)
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    sMemo1: TsMemo;
    Label3: TLabel;
    sGroupBox1: TsGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    sSpeedButton1: TsSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    LabeledEdit2: TLabeledEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    sMemo2: TsMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    sSpeedButton2: TsSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSobitie: TfSobitie;

implementation

uses UAuth, UDM, UDoljnost, UMain, USotr, USotrEdit, UZastavka, DB,
  UPostavkaAdd, sort;

{$R *.dfm}

procedure TfSobitie.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCape then fSobitie.Close;
    if key=VK_RIGHT then  TabSheet2.Show;
    if key=VK_LEFT then  TabSheet1.Show;
end;

procedure TfSobitie.SpeedButton1Click(Sender: TObject);
begin
      if DM.IBQSobitie.Locate('NAME_SOB',Edit2.Text,[])  then
    begin
    ShowMessage('Документ присутствует в событии.');
     Exit;
    end
    else begin
     if  (Edit2.Text='') then
    ShowMessage('Перед тем как удалить, выберите документ!')
    else begin
case MessageDlg('Вы действительно хотите удалить событие?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBTip_dokum_del.ParamByName('TIP_DOKUM_ID').AsInteger:=DM.IBQTip_dokumTIP_DOKUM_ID.AsInteger;
    DM.IBTip_dokum_del.ExecProc;
    Edit2.Text:='';
    end;
    IDNO: ;
    end;
   DM.IBQTip_dokum.close;
   DM.IBQTip_dokum.open;

   end;
end;
end;


procedure TfSobitie.sSpeedButton1Click(Sender: TObject);
begin
        if (DBLookupComboBox3.Text='') or (DBLookupComboBox2.Text='') then begin
        ShowMessage('Вы не выбрали сотрудника или событие!');
        Exit;
        end
        else begin
       DM.IBSobitie_sotr_add.ParamByName('SOTRUDNIK_ID').AsInteger:=DBLookupComboBox3.KeyValue;
         DM.IBSobitie_sotr_add.ParamByName('SOBITIE_ID').AsInteger:=DBLookupComboBox2.KeyValue;

          DM.IBSobitie_sotr_add.ExecProc;
          DM.IBTransaction1.CommitRetaining;
          DM.IBQSobitie_sotr.Close;
          DM.IBQSobitie_sotr.Open;
          end;
end;

procedure TfSobitie.DBGrid1CellClick(Column: TColumn);
begin
     DBLookupComboBox2.KeyValue:=DM.IBQSobitieSOBITIE_ID.AsInteger;

     DateTimePicker2.Date:=StrToDate(DM.IBQSobitieDATA_UTVERJ.AsString);
       DBLookupComboBox4.KeyValue:=DM.IBQSobitieTIP_DOKUM_ID.AsInteger;
       LabeledEdit2.Text:=DM.IBQSobitieNAME_SOB.AsString;
       sMemo2.Text:=DM.IBQSobitieSODERJAN_DOKUM.AsString;
end;

procedure TfSobitie.SpeedButton2Click(Sender: TObject);
begin
          DM.IBSobitie_edit.ParamByName('DATA_UTVERJ').AsString:= DateToStr(DateTimePicker2.Date);
          DM.IBSobitie_edit.ParamByName('TIP_DOKUM_ID').AsInteger:=DBLookupComboBox4.KeyValue;
          DM.IBSobitie_edit.ParamByName('NAME_SOB').AsString:=LabeledEdit2.Text;
          DM.IBSobitie_edit.ParamByName('SODERJAN_DOKUM').AsMemo:=sMemo2.Text;


          DM.IBSobitie_edit.ParamByName('SOBITIE_ID').AsInteger:=DM.IBQSobitieSOBITIE_ID.AsInteger;
          DM.IBSobitie_edit.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQSobitie.Close;
          DM.IBQSobitie.Open;

          DM.IBQSobitie_sotr.Close;
          DM.IBQSobitie_sotr.Open;
end;

procedure TfSobitie.SpeedButton3Click(Sender: TObject);
begin
     if  (fSobitie.LabeledEdit2.Text='') then
    ShowMessage('Перед тем как удалить, выберите событие!')
    else begin

    if DM.IBQSobitie_sotr.Locate('NAME_SOB',fSobitie.LabeledEdit2.Text,[])  then
    begin
    ShowMessage('Удалите сначала событие сотрудника!!!');

    Exit;
    end
    else begin



case MessageDlg('Вы действительно хотите удалить событие?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBSobitie_del.ParamByName('SOBITIE_ID').AsInteger:=DM.IBQSobitieSOBITIE_ID.AsInteger;
    DM.IBSobitie_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQSobitie.close;
   DM.IBQSobitie.open;
   end;
end;
end;

procedure TfSobitie.sSpeedButton2Click(Sender: TObject);
begin
     
      if fSobitie.ClientWidth =771 then begin
fSobitie.ClientWidth:=1008 ;
fSobitie.sSpeedButton2.Caption:='З'+#13+#10+' '+#13+#10+'А'+#13+#10+' '+#13+#10+'К'+#13+#10+' '+#13+#10+'Р'
      +#13+#10+' '+#13+#10+'Ы'+#13+#10+' '+#13+#10+'Т'+#13+#10+' '+#13+#10+'Ь';
end
else begin
fSobitie.ClientWidth:=771;
fSobitie.sSpeedButton2.Caption:='Т'+#13+#10+'И'+#13+#10+'П'+#13+#10+' '
      +#13+#10+'Д'+#13+#10+'К'+#13+#10+'У'+#13+#10+'М'+#13+#10+'Е'
      +#13+#10+'Н'+#13+#10+'Т'+#13+#10+'А';
end;



end;

procedure TfSobitie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   fSobitie.ClientWidth:=771;
    fSobitie.sSpeedButton2.Caption:='Т'+#13+#10+'И'+#13+#10+'П'+#13+#10+' '
      +#13+#10+'Д'+#13+#10+'К'+#13+#10+'У'+#13+#10+'М'+#13+#10+'Е'
      +#13+#10+'Н'+#13+#10+'Т'+#13+#10+'А';

end;

procedure TfSobitie.FormCreate(Sender: TObject);
begin
      fSobitie.ClientWidth:=771;
    fSobitie.sSpeedButton2.Caption:='Т'+#13+#10+'И'+#13+#10+'П'+#13+#10+' '
      +#13+#10+'Д'+#13+#10+'К'+#13+#10+'У'+#13+#10+'М'+#13+#10+'Е'
      +#13+#10+'Н'+#13+#10+'Т'+#13+#10+'А';
end;

procedure TfSobitie.SpeedButton7Click(Sender: TObject);
begin
          if (Edit1.Text='') then begin
          ShowMessage('Пустое поле');
          Exit;
          end
          else begin
     DM.IBTip_dokum_add.ParamByName('NAME_TIP').AsString:=Edit1.Text;

          Edit1.Text:='';
          DM.IBTip_dokum_add.ExecProc;
          DM.IBTransaction1.CommitRetaining;
          DM.IBQTip_dokum.Close;
          DM.IBQTip_dokum.Open;
end;
end;
procedure TfSobitie.SpeedButton5Click(Sender: TObject);
begin
    DM.IBTip_dokum_edit.ParamByName('NAME_TIP').AsString:=Edit2.Text;


          DM.IBTip_dokum_edit.ParamByName('TIP_DOKUM_ID').AsInteger:=DM.IBQTip_dokumTIP_DOKUM_ID.AsInteger;
          DM.IBTip_dokum_edit.ExecProc;

          DM.IBTransaction1.CommitRetaining;


          DM.IBQTip_dokum.Close;
          DM.IBQTip_dokum.Open;
end;

procedure TfSobitie.DBGrid2CellClick(Column: TColumn);
begin
    Edit2.Text:=DM.IBQTip_dokumNAME_TIP.AsString;
end;

procedure TfSobitie.FormShow(Sender: TObject);
begin
  fSobitie.DBLookupComboBox1.ListSource.DataSet.Last;
 fSobitie.DBLookupComboBox2.ListSource.DataSet.Last;
  fSobitie.DBLookupComboBox3.ListSource.DataSet.Last;
  fSobitie.DBLookupComboBox4.ListSource.DataSet.Last;
end;

procedure TfSobitie.SpeedButton4Click(Sender: TObject);
begin

          DM.IBSobitie_add.ParamByName('DATA_UTVERJ').AsString:= DateToStr(DateTimePicker2.Date);
          DM.IBSobitie_add.ParamByName('TIP_DOKUM_ID').AsInteger:=DBLookupComboBox4.KeyValue;
          DM.IBSobitie_add.ParamByName('NAME_SOB').AsString:=LabeledEdit2.Text;
          DM.IBSobitie_add.ParamByName('SODERJAN_DOKUM').AsMemo:=sMemo2.Text;



          DM.IBSobitie_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQSobitie.Close;
          DM.IBQSobitie.Open;

          DM.IBQSobitie_sotr.Close;
          DM.IBQSobitie_sotr.Open;
end;

procedure TfSobitie.DBGrid1TitleClick(Column: TColumn);
begin
DBSort(DM.IBQSobitie,DBGrid1,Column);
end;

end.
