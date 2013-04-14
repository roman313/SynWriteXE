unit unFillBlock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, DKLang;

type
  TfmFillBlock = class(TForm)
    TntGroupBox1: TSpTBXGroupBox;
    bOk: TSpTBXButton;
    bCan: TSpTBXButton;
    TntLabel1: TSpTBXLabel;
    edLine: TSpTBXEdit;
    cbKeepWidth: TSpTBXCheckBox;
    DKLanguageController1: TDKLanguageController;
    procedure edLineChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFillBlock: TfmFillBlock;

implementation

{$R *.dfm}

procedure TfmFillBlock.edLineChange(Sender: TObject);
begin
  bOk.Enabled:= edLine.Text<>'';
end;

procedure TfmFillBlock.FormShow(Sender: TObject);
begin
  edLineChange(Self);
end;

end.
