unit unProjProps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DKLang, FileCtrl;

type
  WideString = String;

type
  TfmProjProps = class(TForm)
    btnOk: TButton;
    btnCan: TButton;
    Pages: TPageControl;
    TntTabSheet1: TTabSheet;
    TntTabSheet2: TTabSheet;
    edDirs: TMemo;
    Label4: TLabel;
    edWorkDir: TEdit;
    TntLabel1: TLabel;
    edMainFN: TEdit;
    btnWorkDir: TButton;
    TntLabel3: TLabel;
    Label1: TLabel;
    cbEnc: TComboBox;
    Label2: TLabel;
    cbEnds: TComboBox;
    Label3: TLabel;
    cbLexer: TComboBox;
    btnDirAdd: TButton;
    TntLabel2: TLabel;
    DKLanguageController1: TDKLanguageController;
    TntLabel4: TLabel;
    cbSort: TComboBox;
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

{$R *.dfm}

procedure TfmProjProps.btnWorkDirClick(Sender: TObject);
var
  SDir: Widestring;
begin
  SDir:= edWorkDir.Text;
  if SelectDirectory('', '', SDir) then
    edWorkDir.Text:= SDir;
end;

procedure TfmProjProps.btnDirAddClick(Sender: TObject);
var
  SDir: Widestring;
begin
  SDir:= edWorkDir.Text;
  if SelectDirectory('', '', SDir) then
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
