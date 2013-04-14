unit unLoadLexStyles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DKLang;

type
  TfmLoadLex = class(TForm)
    Label1: TSpTBXLabel;
    TntGroupBox1: TSpTBXGroupBox;
    List: TCheckListBox;
    bSAll: TSpTBXButton;
    bSNone: TSpTBXButton;
    bRem: TSpTBXButton;
    bOk: TSpTBXButton;
    bCan: TSpTBXButton;
    DKLanguageController1: TDKLanguageController;
    procedure FormShow(Sender: TObject);
    procedure bSAllClick(Sender: TObject);
    procedure bSNoneClick(Sender: TObject);
    procedure bRemClick(Sender: TObject);
    procedure ListClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SIniStyles: string;
  end;

//var
//  fmLoadLexStyles: TfmLoadLexStyles;

implementation

uses iniFiles, unProc;

{$R *.dfm}

procedure TfmLoadLex.FormShow(Sender: TObject);
var L: TStringList;
  i:Integer;
begin
  if SIniStyles='' then Exit;
  List.Items.Clear;
  L:= TStringList.Create;
  L.Sorted:= true;

  with TIniFile.Create(SIniStyles) do
  try
    ReadSections(L);
    for i:= 0 to L.Count-1 do
      List.Items.Add(L[i]);
  finally
    L.Free;
    Free
  end;

  bSAllClick(Self);
  bSAll.Enabled:= List.Items.Count>0;
  bSNone.Enabled:= bSAll.Enabled;
end;

procedure TfmLoadLex.bSAllClick(Sender: TObject);
var i:Integer;
begin
  with List do
    for i:= 0 to Items.Count-1 do
      Checked[i]:= true;
  ListClickCheck(Self);
end;

procedure TfmLoadLex.bSNoneClick(Sender: TObject);
var i:Integer;
begin
  with List do
    for i:= 0 to Items.Count-1 do
      Checked[i]:= false;
  ListClickCheck(Self);
end;

procedure TfmLoadLex.bRemClick(Sender: TObject);
var i:Integer;
begin
  if MessageBoxW(Handle, PWChar(DKLangConstW('MDelSt')), 'SynWrite',
    mb_okcancel or mb_iconwarning) <> idok then Exit;

  with TIniFile.Create(SIniStyles) do
  try
    with List do
      for i:= 0 to Items.Count-1 do
        if Checked[i] then
          EraseSection(Items[i]);
  finally
    Free
  end;
  
  FormShow(Self);
end;

procedure TfmLoadLex.ListClickCheck(Sender: TObject);
var i:Integer;
  en:Boolean;
begin
  en:= false;
  with List do
    for i:= 0 to Items.Count-1 do
      if Checked[i] then
        begin en:= true; Break end;
  bOk.Enabled:= en;
  bRem.Enabled:= en;
end;

end.
