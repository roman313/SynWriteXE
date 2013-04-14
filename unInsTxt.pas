unit unInsTxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DKLang;

type
  TfmInsTxt = class(TForm)
    TntGroupBox1: TSpTBXGroupBox;
    bText: TSpTBXRadioButton;
    bNumber: TSpTBXRadioButton;
    bBullets: TSpTBXRadioButton;
    TntLabel1: TSpTBXLabel;
    TntLabel2: TSpTBXLabel;
    ed1: TSpTBXComboBox;
    ed2: TSpTBXComboBox;
    edStart: TSpinEdit;
    edDigits: TSpinEdit;
    edTail: TSpTBXComboBox;
    TntLabel3: TSpTBXLabel;
    TntLabel4: TSpTBXLabel;
    lab1: TSpTBXLabel;
    lab2: TSpTBXLabel;
    TntGroupBox2: TSpTBXGroupBox;
    TntLabel8: TSpTBXLabel;
    bAtCol: TSpTBXRadioButton;
    bAfterSp: TSpTBXRadioButton;
    edCol: TSpinEdit;
    cbSkip: TSpTBXCheckBox;
    bOk: TSpTBXButton;
    bCan: TSpTBXButton;
    bAfterStr: TSpTBXRadioButton;
    edStrAfter: TSpTBXComboBox;
    DKLanguageController1: TDKLanguageController;
    TntLabel5: TSpTBXLabel;
    TntLabel6: TSpTBXLabel;
    edBegin: TSpTBXComboBox;
    TntGroupBox3: TSpTBXGroupBox;
    labNoteSel: TSpTBXLabel;
    labNoteNoSel: TSpTBXLabel;
    labCounter: TSpTBXLabel;
    edCounter: TSpinEdit;
    procedure edStartChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bTextClick(Sender: TObject);
    procedure edCounterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    SRCount: integer;
    SIni: string;
    procedure SetMode(Sel: boolean);
  end;

var
  fmInsTxt: TfmInsTxt;

implementation

uses ATxSProc,
  iniFiles, unProc;

{$R *.dfm}

procedure TfmInsTxt.edStartChange(Sender: TObject);
var
  N:Integer;
begin
  N:= edStart.Value;
  lab1.Caption:= edBegin.Text + SFormatNum(N, edDigits.Value) + edTail.Text;
  lab2.Caption:= edBegin.Text + SFormatNum(N+1, edDigits.Value) + edTail.Text;
end;

const
  cs = 'InsTxt';

procedure TfmInsTxt.FormShow(Sender: TObject);
begin
  SLoadCombo(ed1, SIni, 'Ins_Ed1Hist');
  SLoadCombo(ed2, SIni, 'Ins_Ed2Hist');
  SLoadCombo(edBegin, SIni, 'Ins_EdBeginHist');
  SLoadCombo(edTail, SIni, 'Ins_EdTailHist');
  SLoadCombo(edStrAfter, SIni, 'Ins_EdStrHist');

  {if edTail.Text='' then
    edTail.Text:= '. ';}

  with TIniFile.Create(SIni) do
  try
    case ReadInteger(cs, 'Mode', 0) of
      0: bText.Checked:= true;
      1: bNumber.Checked:= true;
      2: bBullets.Checked:= true;
    end;
    if bAfterSp.Enabled then
    case ReadInteger(cs, 'Begin', 0) of
      0: bAtCol.Checked:= true;
      1: bAfterSp.Checked:= true;
      2: bAfterStr.Checked:= true;
    end;
    edStart.Value:= ReadInteger(cs, 'NStart', 1);
    edDigits.Value:= ReadInteger(cs, 'NDigits', 1);
    edCol.Value:= ReadInteger(cs, 'Col', 0);
    cbSkip.Checked:= ReadBool(cs, 'SkipEm', false);

    if ReadBool(cs, 'Ed1_em', false) then ed1.Text:= '';
    if ReadBool(cs, 'Ed2_em', false) then ed2.Text:= '';
    if ReadBool(cs, 'EdTail_em', false) then edTail.Text:= '';
    if ReadBool(cs, 'EdBegin_em', false) then edBegin.Text:= '';
  finally
    Free
  end;

  edStartChange(Self);
  bTextClick(Self);
end;

procedure TfmInsTxt.FormClose(Sender: TObject; var Action: TCloseAction);
var n: Integer;
begin
  if ModalResult<>mrOk then Exit;

  SSave(ed1, SRCount);
  SSave(ed2, SRCount);
  SSave(edTail, SRCount);
  SSave(edBegin, SRCount);
  SSave(edStrAfter, SRCount);

  SSaveCombo(ed1, SIni, 'Ins_Ed1Hist');
  SSaveCombo(ed2, SIni, 'Ins_Ed2Hist');
  SSaveCombo(edBegin, SIni, 'Ins_EdBeginHist');
  SSaveCombo(edTail, SIni, 'Ins_EdTailHist');
  SSaveCombo(edStrAfter, SIni, 'Ins_EdStrHist');

  with TIniFile.Create(SIni) do
  try
    if bText.Checked then n:= 0 else
     if bNumber.Checked then n:= 1 else n:= 2;
    WriteInteger(cs, 'Mode', n);
    if bAtCol.Checked then n:= 0 else
     if bAfterSp.Checked then n:= 1 else n:= 2;
    WriteInteger(cs, 'Begin', n);
    WriteInteger(cs, 'NStart', edStart.Value);
    WriteInteger(cs, 'NDigits', edDigits.Value);
    WriteInteger(cs, 'Col', edCol.Value);
    WriteBool(cs, 'SkipEm', cbSkip.Checked);
    WriteBool(cs, 'Ed1_em', ed1.Text='');
    WriteBool(cs, 'Ed2_em', ed2.Text='');
    WriteBool(cs, 'EdTail_em', edTail.Text='');
    WriteBool(cs, 'EdBegin_em', edBegin.Text='');
  finally
    Free
  end;
end;

procedure TfmInsTxt.FormCreate(Sender: TObject);
begin
  SRCount:= 20;
  SIni:= '';
end;

procedure TfmInsTxt.bTextClick(Sender: TObject);
begin
  ed1.Enabled:= bText.Checked;
  ed2.Enabled:= ed1.Enabled;
  edStart.Enabled:= bNumber.Checked;
  edDigits.Enabled:= edStart.Enabled;
  edTail.Enabled:= edStart.Enabled;
  edBegin.Enabled:= edStart.Enabled;
end;

procedure TfmInsTxt.SetMode(Sel: boolean);
begin
  labNoteSel.Visible:= Sel;
  labNoteNoSel.Visible:= not Sel;
  edCounter.Enabled:= not Sel;
  labCounter.Enabled:= not Sel;

  bAfterSp.Enabled:= Sel;
  bAfterStr.Enabled:= Sel;
  cbSkip.Enabled:= Sel;
  edStrAfter.Enabled:= Sel;
  if not Sel then
    bAtCol.Checked:= true;
end;

procedure TfmInsTxt.edCounterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    ModalResult:= mrCancel;
    Key:= 0;
    Exit
  end;
  if key = VK_RETURN then
  begin
    ModalResult:= mrOk;
    Key:= 0;
    Exit
  end;
end;

end.
