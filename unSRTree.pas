unit unSRTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang;

type
  TfmSRTree = class(TForm)
    edText: TSpTBXComboBox;
    TntLabel1: TSpTBXLabel;
    gOp: TSpTBXGroupBox;
    cbRE: TSpTBXCheckBox;
    cbCase: TSpTBXCheckBox;
    cbWords: TSpTBXCheckBox;
    gDir: TSpTBXGroupBox;
    bFor: TSpTBXRadioButton;
    bBack: TSpTBXRadioButton;
    gScop: TSpTBXGroupBox;
    cbFromCur: TSpTBXCheckBox;
    bFNext: TSpTBXButton;
    bCan: TSpTBXButton;
    DKLanguageController1: TDKLanguageController;
    procedure edTextChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FIniFN: string;
    FSearchFor: Widestring;
  end;

var
  fmSRTree: TfmSRTree;

implementation

uses IniFiles,
  unProc;

{$R *.dfm}

procedure TfmSRTree.edTextChange(Sender: TObject);
begin
  bFNext.Enabled:= edText.Text<>'';
end;

procedure TfmSRTree.FormShow(Sender: TObject);
begin
  if FIniFN='' then
    Exception.Create('Ini nil');
  with TIniFile.Create(FIniFN) do
  try
    Left:= ReadInteger('SearchTree', 'WLeft', Self.Monitor.Left + (Self.Monitor.Width - Width) div 2);
    Top:= ReadInteger('SearchTree', 'WTop', Self.Monitor.Top + (Self.Monitor.Height - Height) div 2);

    cbCase.Checked:= ReadBool('SearchTree', 'Case', false);
    cbWords.Checked:= ReadBool('SearchTree', 'Words', false);
    cbRE.Checked:= ReadBool('SearchTree', 'RE', false);
    bBack.Checked:= ReadBool('SearchTree', 'Back', false);
    bFor.Checked:= not bBack.Checked;
    cbFromCur.Checked:= ReadBool('SearchTree', 'FromCur', false);
  finally
    Free;
  end;

  SLoadCombo(edText, FIniFN, 'SearchTreeText');
  edText.Text:= FSearchFor;
  edTextChange(Self);
end;

procedure TfmSRTree.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult<>mrOk then Exit;
  if FIniFN='' then
    Exception.Create('Ini nil');

  with TIniFile.Create(FIniFN) do
  try
    WriteInteger('SearchTree', 'WLeft', Left);
    WriteInteger('SearchTree', 'WTop', Top);

    WriteBool('SearchTree', 'Case', cbCase.Checked);
    WriteBool('SearchTree', 'Words', cbWords.Checked);
    WriteBool('SearchTree', 'RE', cbRE.Checked);
    WriteBool('SearchTree', 'Back', bBack.Checked);
    WriteBool('SearchTree', 'FromCur', cbFromCur.Checked);
  finally
    Free;
  end;
  
  SSave(edText, 10);
  SSaveCombo(edText, FIniFN, 'SearchTreeText');
end;

end.
