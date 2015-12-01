unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, ImgList;

type
  TfMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid3: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBGrid5: TDBGrid;
    Label1: TLabel;
    SpeedButton10: TSpeedButton;
    ImageList1: TImageList;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    DBGrid4: TDBGrid;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Edit2: TEdit;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton15: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid6: TDBGrid;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Button1: TButton;

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  sr: Boolean;


implementation

uses UAuth, UDM, UDoljnost, UZastavka, USotr, USotrEdit, DateUtils,
  IBQuery, USobitieAdd, DB, Math, comobj, UPostavkaAdd, UPostavchikAdd,
  UPostavchikEdit, UPostavkaEdit, UModelAdd, UTovarAdd, UTovarEdit,
  UZakazAdd, UDogovor, sort, UOtchetPost;

{$R *.dfm}

procedure TfMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  case messageBox(Handle,'Вы хотите выйти из приложения?','Выход', MB_YESNO or mb_iconquestion) of
  IDYES:
  begin
     fAuth.close;
     CanClose := True;
  end;

  IDNO:
  begin

     CanClose := false;
  end;

  //IDCANCEL: canClose := false;
  end;
end;



procedure TfMain.DBGrid1CellClick(Column: TColumn);
begin
      With fSotrEdit do begin
      LabeledEdit5.Text:=DM.IBQSotrudnikFAM.AsString;
       LabeledEdit9.Text:=DM.IBQSotrudnikIMYA.AsString;
        LabeledEdit10.Text:=DM.IBQSotrudnikOTCH.AsString;
        Memo2.Lines.Text:=DM.IBQSotrudnikKEM_VIDAN.AsString;
       MaskEdit5.Text:=DM.IBQSotrudnikSERIA_NOM_PAS.AsString;
       DateTimePicker3.Date:=StrToDate(DM.IBQSotrudnikDATA_VIDACHI.AsString);
       DBLookupComboBox2.KeyValue:=DM.IBQSotrudnikDOLJNOST_ID.AsInteger;
       DateTimePicker4.Date:=StrToDate(DM.IBQSotrudnikDATA_ROJ.AsString);
       LabeledEdit12.Text:=DM.IBQSotrudnikMESTO_ROJ.AsString;
       LabeledEdit13.Text:=DM.IBQSotrudnikADRES.AsString;
       LabeledEdit11.Text:=DM.IBQSotrudnikOKLAD.AsString;
     end;
end;

procedure TfMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
    if (key=VK_INSERT) and (TabSheet10.Showing=true) then  SpeedButton1.Click;
    if key=VK_DELETE then SpeedButton6.Click;
    if key=VK_ESCape then CloseQuery;
    if (key=VK_INSERT) and (TabSheet11.Showing=true) then  SpeedButton2.Click;

   

    if  (key=VK_DOWN) and (PageControl1.TabIndex=0) then begin
    PageControl2.SetFocus;
    end;

    if  (key=VK_DOWN) and (PageControl1.TabIndex=1) then begin
    PageControl3.SetFocus;
    end;


    if  (key=VK_DOWN) and (PageControl1.TabIndex=2) then begin
    PageControl4.SetFocus;
    end;

   if key=VK_UP then PageControl1.SetFocus;


end;

procedure TfMain.SpeedButton5Click(Sender: TObject);

begin
  case messageBox(Handle,'Вы действительно хотите поменять пользователя?','Смена поьзователя', MB_YESNO or mb_iconquestion) of
  IDYES:
  begin
     fAuth.Show;
     fAuth.LabeledEdit2.Text:='';
     fMain.Hide;
  end;

  IDNO:
  begin

  end;
  end;
  end;
procedure TfMain.SpeedButton1Click(Sender: TObject);
begin
  fSotrAdd.ShowModal;
end;

procedure TfMain.SpeedButton6Click(Sender: TObject);
var s,s1,s2: String;
begin
    if  (fSotrEdit.LabeledEdit5.Text='') then
    ShowMessage('Перед тем как удалить, выберите сотрудника!')
    else begin

    if DM.IBQSobitie_sotr.Locate('FAM',fSotrEdit.LabeledEdit5.Text,[])  then
    begin
    ShowMessage('Удалите сначала событие сотрудника!!!');

    Exit;
    end
    else begin

    s:=fSotrEdit.LabeledEdit5.Text;
    s1:=fSotrEdit.LabeledEdit9.Text;
    s2:=fSotrEdit.LabeledEdit10.Text;
     case MessageDlg('Вы действительно хотите удалить"'+ s +' '+ s1+' '+s2+'а"?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBSobitie_sotr_del.ParamByName('SOBITIE_SOTR_ID').AsInteger:=DM.IBQSobitie_sotrSOBITIE_SOTR_ID.AsInteger;
    DM.IBSobitie_sotr_del.ExecProc;


    DM.IBSotrudnik_del.ParamByName('SOTRUDNIK_ID').AsInteger:=DM.IBQSotrudnikSOTRUDNIK_ID.AsInteger;
    DM.IBSotrudnik_del.ExecProc;

    end;
    IDNO: ;
    end;

   DM.IBQSotrudnik.close;
   DM.IBQSotrudnik.open;
   end;
end;
end;

procedure TfMain.SpeedButton3Click(Sender: TObject);
begin
 if  (fSotrEdit.LabeledEdit5.Text='') then
    ShowMessage('Перед тем как редактировать, выберите сотрудника')
    else
fSotrEdit.ShowModal;
end;

procedure TfMain.DBGrid1TitleClick(Column: TColumn);
begin
DBSort(DM.IBQSotrudnik,DBGrid1,Column);
    
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
      sr:=true;

     
end;

procedure TfMain.Edit1Change(Sender: TObject);
begin

    fMain.DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
    DM.IBQSotrudnik.Locate('FAM',Edit1.Text,[lopartialkey, locaseinsensitive]);
    end;

procedure TfMain.Edit1Exit(Sender: TObject);
begin
    fMain.DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    Edit1.Text:='Искать...';
    

end;

procedure TfMain.Edit1Click(Sender: TObject);
begin
      Edit1.Text:='';
end;

procedure TfMain.SpeedButton2Click(Sender: TObject);
begin
    fSobitie.ShowModal;
end;

procedure TfMain.SpeedButton7Click(Sender: TObject);
begin

case MessageDlg('Вы действительно хотите удалить событие сотрудника?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBSobitie_sotr_del.ParamByName('SOBITIE_SOTR_ID').AsInteger:=DM.IBQSobitie_sotrSOBITIE_SOTR_ID.AsInteger;
    DM.IBSobitie_sotr_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQSobitie_sotr.close;
   DM.IBQSobitie_sotr.open;
end;

procedure TfMain.SpeedButton10Click(Sender: TObject);
var b: Integer;
    i: Integer;
begin
    DBGrid3.SelectedField.DataSet.First;
    b:=0;
    DM.IBQPostavka.RecordCount;
    for i:=1 to DM.IBQPostavka.RecordCount do
    begin
    b:=b+dm.IBQPostavkaKOL_VO.AsInteger*dm.IBQPostavkaCENA.AsInteger;
    DM.IBQPostavka.Next;

    end;
     Label2.Caption:=inttostr(b)+' руб';
    end;



procedure TfMain.SpeedButton4Click(Sender: TObject);
begin

case MessageDlg('Вы действительно хотите удалить поставку товара?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBPostavka_del.ParamByName('POSTAVKA_ID').AsInteger:=DM.IBQPostavkaPOSTAVKA_ID.AsInteger;
    DM.IBPostavka_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQPostavka.close;
   DM.IBQPostavka.open;
   fMain.SpeedButton10.Click;
end;

procedure TfMain.SpeedButton11Click(Sender: TObject);
  begin
  fDogovor.frxReport1.ShowReport;
  fDogovor.frxReport1.Export(fDogovor.frxPDFExport1);
  end;

procedure TfMain.SpeedButton9Click(Sender: TObject);
begin
    fPostavkaAdd.ShowModal;
end;

procedure TfMain.SpeedButton20Click(Sender: TObject);
begin
fPostavchikAdd.ShowModal;
end;

procedure TfMain.DBGrid4CellClick(Column: TColumn);
begin
      With fPostavchikEdit do begin
      LabeledEdit1.Text:=DM.IBQPostavchikNAME_POS.AsString;
      LabeledEdit2.Text:=DM.IBQPostavchikADRES.AsString;
      LabeledEdit3.Text:=DM.IBQPostavchikCONTACT_NAME.AsString;
      MaskEdit1.Text:=DM.IBQPostavchikTELEFON.AsString;
     end;
end;

procedure TfMain.SpeedButton19Click(Sender: TObject);
begin
if  (fPostavchikEdit.LabeledEdit1.Text='') then
    ShowMessage('Перед тем как редактировать, выберите поставщика')
    else
fPostavchikEdit.ShowModal;
end;

procedure TfMain.SpeedButton18Click(Sender: TObject);
begin
     if  (fPostavchikEdit.LabeledEdit1.Text='') then
    ShowMessage('Перед тем как удалить, выберите поставщика')
    else begin

    if DM.IBQPostavka.Locate('NAME_POS',fPostavchikEdit.LabeledEdit1.Text,[])  then
    begin
    ShowMessage('Присутствуют поставки товара');

    Exit;
    end
    else begin



case MessageDlg('Вы действительно хотите удалить поставщика?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBPostavchik_del.ParamByName('POS_ID').AsInteger:=DM.IBQPostavchikPOS_ID.AsInteger;
    DM.IBPostavchik_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQPostavchik.close;
   DM.IBQPostavchik.open;
   end;
end;
end;

procedure TfMain.DBGrid3CellClick(Column: TColumn);
begin

      With fPostavkaEdit do begin
      DBLookupComboBox1.KeyValue:=DM.IBQPostavkaTOVAR_ID.AsInteger;
      DBLookupComboBox2.KeyValue:=DM.IBQPostavkaPOS_ID.AsInteger;

      SpinEdit1.Value:=DM.IBQPostavkaKOL_VO.AsInteger;

      DateTimePicker1.Date:=StrToDate(DM.IBQPostavkaDATA_POST.AsString);


end;
end;
procedure TfMain.SpeedButton17Click(Sender: TObject);
begin
case MessageDlg('Вы действительно хотите удалить товар?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBTovar_del.ParamByName('TOVAR_ID').AsInteger:=DM.IBQTovarTOVAR_ID.AsInteger;
    DM.IBTovar_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQTovar.close;
   DM.IBQTovar.open;
   end;



procedure TfMain.SpeedButton16Click(Sender: TObject);
begin
fTovarAdd.ShowModal;
end;

procedure TfMain.DBGrid5CellClick(Column: TColumn);
begin
 fTovarEdit.LabeledEdit1.Text:=DM.IBQTovarCENA.AsString;
  fTovarEdit.LabeledEdit2.Text:=DM.IBQTovarKOL_VO_SKLAD.AsString;
  fTovarEdit.DBLookupComboBox6.KeyValue:=dm.IBQTovarMODEL_ID.AsString;
end;

procedure TfMain.SpeedButton15Click(Sender: TObject);
begin
 fTovarEdit.ShowModal;
end;

procedure TfMain.SpeedButton22Click(Sender: TObject);
begin
case MessageDlg('Вы действительно хотите удалить заказ?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBZakaz_del.ParamByName('ZAKAZ_ID').AsInteger:=DM.IBQZakazZAKAZ_ID.AsInteger;
    DM.IBZakaz_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQZakaz.close;
   DM.IBQZakaz.open;
end;

procedure TfMain.FormShow(Sender: TObject);
begin
fMain.SpeedButton10.Click;
end;

procedure TfMain.SpeedButton23Click(Sender: TObject);
begin
 fZakazAdd.ShowModal;
end;

procedure TfMain.DBGrid6TitleClick(Column: TColumn);
begin
DBSort(DM.IBQZakaz,DBGrid6,Column);
end;

procedure TfMain.DBGrid3TitleClick(Column: TColumn);
begin
DBSort(DM.IBQPostavka,DBGrid3,Column);
end;

procedure TfMain.DBGrid5TitleClick(Column: TColumn);
begin
DBSort(DM.IBQTovar,DBGrid5,Column);
end;

procedure TfMain.DBGrid4TitleClick(Column: TColumn);
begin
DBSort(DM.IBQPostavchik,DBGrid4,Column);
end;

procedure TfMain.DBGrid2TitleClick(Column: TColumn);
begin
DBSort(DM.IBQSobitie_sotr,DBGrid2,Column);
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
fOtchetPost.frxReport1.ShowReport;
  fOtchetPost.frxReport1.Export(fOtchetPost.frxPDFExport1);
end;

procedure TfMain.Edit2Change(Sender: TObject);
begin
    fMain.DBGrid4.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
    DM.IBQPostavchik.Locate('NAME_POS',Edit2.Text,[lopartialkey, locaseinsensitive]);
end;

procedure TfMain.Edit2Click(Sender: TObject);
begin
   Edit2.Text:='';
end;

procedure TfMain.Edit2Exit(Sender: TObject);
begin
      fMain.DBGrid1.Options:=[dgTitles,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    Edit1.Text:='Искать...';
end;

end.









