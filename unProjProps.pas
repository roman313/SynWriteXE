unit unProjProps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DKLang;

type
  TfmProjProps = class(TForm)
    btnOk: TSpTBXButton;
    btnCan: TSpTBXButton;
    Pages: TTntPageControl;
    TntTabSheet1: TTntTabSheet;
    TntTabSheet2: TTntTabSheet;
    edDirs: TTntMemo;
    Label4: TSpTBXLabel;
    edWorkDir: TSpTBXEdit;
    TntLabel1: TSpTBXLabel;
    edMainFN: TSpTBXEdit;
    btnWorkDir: TSpTBXButton;
    TntLabel3: TSpTBXLabel;
    Label1: TSpTBXLabel;
    cbEnc: TSpTBXComboBox;
    Label2: TSpTBXLabel;
    cbEnds: TSpTBXComboBox;
    Label3: TSpTBXLabel;
    cbLexer: TSpTBXComboBox;
    btnDirAdd: TSpTBXButton;
    TntLabel2: TSpTBXLabel;
    DKLanguageController1: TDKLanguageController;
    TntLabel4: TSpTBXLabel;
    cbSort: TSpTBXComboBox;
    procedure btnWorkDirClick(Sender: TObject);
    procedure btnDirAddClick(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
    procedure edDirsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  TntFileCtrl;

{$R *.dfm}

procedure TfmProjProps.btnWorkDirClick(Sender: TObject);
var
  SDir: Widestring;
begin
  SDir:= edWorkDir.Text;
  if WideSelectDirectory('', '', SDir) then
    edWorkDir.Text:= SDir;
end;

procedure TfmProjProps.btnDirAddClick(Sender: TObject);
var
  SDir: Widestring;
begin
  SDir:= edWorkDir.Text;
  if WideSelectDirectory('', '', SDir) then
    edDirs.Lines.Add(SDir);
end;

procedure TfmProjProps.TntFormShow(Sender: TObject);
begin
  Pages.ActivePageIndex:= 0;
end;

procedure TfmProjProps.edDirsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=vk_escape) then btnCan.Click;
end;

end.
