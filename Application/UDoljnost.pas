unit UDoljnost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfDoljnost = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDoljnost: TfDoljnost;

implementation

uses UDM, UAuth, UMain, UZastavka;

{$R *.dfm}

procedure TfDoljnost.DBGrid1CellClick(Column: TColumn);
begin
      Edit1.Text:=DM.IBQDoljnostNAME_DOL.AsString;
end;

procedure TfDoljnost.SpeedButton1Click(Sender: TObject);
begin
 if (Edit2.Text='') then begin
          ShowMessage('¬ведите должность');
          edit2.Color:=clRed;
          Exit;
          end
          else begin
       DM.IBDoljnost_add.ParamByName('NAME_DOL').AsString:=Edit2.Text;

          DM.IBDoljnost_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQDoljnost.Close;
          DM.IBQDoljnost.Open;
end;
end;
procedure TfDoljnost.SpeedButton2Click(Sender: TObject);
begin
    DM.IBDoljnost_edit.ParamByName('NAME_DOL').AsString:=Edit1.Text;
          DM.IBDoljnost_edit.ExecProc;

         DM.IBTransaction1.CommitRetaining;

          DM.IBQDoljnost.Close;
          DM.IBQDoljnost.Open;
end;

procedure TfDoljnost.SpeedButton3Click(Sender: TObject);
begin
    if DM.IBQSotrudnik.Locate('NAME_DOL',Edit1.Text,[])  then
    begin
    ShowMessage('¬ы не можете удалить должность, так как она есть у сотрудника');
     Exit;
    end
    else begin
case MessageDlg('¬ы действительно хотите удалить должность',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBDoljnodt_del.ParamByName('DOLJNOST_ID').AsInteger:=DM.IBQDoljnostDOLJNOST_ID.AsInteger;
    DM.IBDoljnodt_del.ExecProc;
    end;
    IDNO: ;
    end;
   DM.IBQDoljnost.close;
   DM.IBQDoljnost.open;
end;
end;

procedure TfDoljnost.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCape then fDoljnost.Close;
end;

procedure TfDoljnost.Edit2Click(Sender: TObject);
begin
edit2.Color:=clWhite;
end;

procedure TfDoljnost.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  edit2.Color:=clWhite;
end;

end.
