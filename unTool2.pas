unit unTool2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, Tntforms, DKLang, ExtCtrls, Menus,
  TntMenus, tntClasses;

type
  TfmToolOutput = class(TTntForm)
    bOk: TSpTBXButton;
    bCancel: TSpTBXButton;
    TntGroupBox1: TSpTBXGroupBox;
    TntLabel1: TSpTBXLabel;
    TntLabel2: TSpTBXLabel;
    edRE: TSpTBXEdit;
    TntLabel3: TSpTBXLabel;
    TntLabel4: TSpTBXLabel;
    edFN: TSpTBXComboBox;
    edLn: TSpTBXComboBox;
    edCol: TSpTBXComboBox;
    TntLabel5: TSpTBXLabel;
    DKLanguageController1: TDKLanguageController;
    TntLabel6: TSpTBXLabel;
    edTest: TSpTBXEdit;
    bTest: TSpTBXButton;
    Bevel1: TBevel;
    bPre: TSpTBXButton;
    Bevel2: TBevel;
    mnuPreset: TSpTBXPopupMenu;
    cbNoTag: TSpTBXCheckBox;
    procedure TntFormCreate(Sender: TObject);
    procedure bTestClick(Sender: TObject);
    procedure bPreClick(Sender: TObject);
    procedure mnuPresetPopup(Sender: TObject);
    procedure TntFormDestroy(Sender: TObject);
    procedure edTestChange(Sender: TObject);
    procedure TntFormShow(Sender: TObject);
  private
    { Private declarations }
    FList: TTntStringList;
    procedure MnuClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmToolOutput: TfmToolOutput;

implementation

uses unProc, ATxFProc, inifiles;

{$R *.dfm}

procedure TfmToolOutput.TntFormCreate(Sender: TObject);
var i:Integer;
  sd:Widestring;
begin
  with edFN.Items do begin Add('--'); for i:= 1 to 8 do Add(Inttostr(i)); end;
  with edLn.Items do begin Add('--'); for i:= 1 to 8 do Add(Inttostr(i)); end;
  with edCol.Items do begin Add('--'); for i:= 1 to 8 do Add(Inttostr(i)); end;

  FList:= TTntStringlist.Create;
  sd:= ExtractFileDir(GetModuleName(HInstance))+'\Template\tools';
  FFindToList(FList, sd, '*.tool', false, false, false, false);
  FList.Sort;
end;

procedure TfmToolOutput.bTestClick(Sender: TObject);
var
  fn: Widestring;
  n_line, n_col:Integer;
begin
  fn:= '';
  SParseOut(edTest.Text, edRE.Text,
    edFN.ItemIndex, edLn.ItemIndex, edCol.ItemIndex, fn, n_line, n_col);

  if fn='' then begin Msg(DKLangConstW('O_fn')); Exit end;
  if n_line<=0 then begin Msg(DKLangConstW('O_l')); Exit end;

  MsgInfo(WideFormat(DKLangConstW('O_ok'), [fn, n_line, n_col]));
end;

procedure TfmToolOutput.bPreClick(Sender: TObject);
var p:TPoint;
begin
  p:= Point(0, bPre.Height);
  p:= bPre.ClientToScreen(p);
  MnuPreset.Popup(p.x, p.y);
end;

function MenuItemName(const fn:string):string;
begin
  with TIniFile.Create(fn) do
  try
    Result:= Format('%s'#9'(%s)',
      [ReadString('Tool', 'name', ''),
       ReadString('Tool', 'exe', '')]);
  finally
    Free
  end;
end;

procedure TfmToolOutput.mnuPresetPopup(Sender: TObject);
var
  i: Integer;
  m: TMenuItem;
begin
  with mnuPreset.Items do
  begin
    Clear;
    for i:= 0 to FList.Count-1 do
    begin
      m:= TMenuItem.Create(Self);
      m.Caption:= MenuItemName(FList[i]);
      m.Tag:= i;
      m.OnClick:= MnuClick;
      Add(m);
    end;
  end;
end;

procedure TfmToolOutput.TntFormDestroy(Sender: TObject);
begin
  FreeAndNil(FList);
end;

procedure TfmToolOutput.MnuClick(Sender: TObject);
begin
  with TIniFile.Create(FList[TMenuItem(Sender).Tag]) do
  try
    edRE.Text:= ReadString('Regex', 's', '');
    edFN.ItemIndex:= ReadInteger('Regex', 'fn', 0);
    edLn.ItemIndex:= ReadInteger('Regex', 'line', 0);
    edCol.ItemIndex:= ReadInteger('Regex', 'col', 0);
  finally
    Free
  end;
end;

procedure TfmToolOutput.edTestChange(Sender: TObject);
begin
  bTest.Enabled:= edTest.Text<>'';
end;

procedure TfmToolOutput.TntFormShow(Sender: TObject);
begin
  edTestChange(Self);
end;

end.
