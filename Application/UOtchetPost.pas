unit UOtchetPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxExportPDF, frxPreview;

type
  TfOtchetPost = class(TForm)
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOtchetPost: TfOtchetPost;

implementation

uses UDM;

{$R *.dfm}

end.
