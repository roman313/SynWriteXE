unit unLoremIpsum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DKLang;

type
  TfmLoremIpsum = class(TForm)
    bOk: TSpTBXButton;
    bCopy: TSpTBXButton;
    bCan: TSpTBXButton;
    GroupBox1: TSpTBXGroupBox;
    cbSent: TSpTBXRadioButton;
    cbPara: TSpTBXRadioButton;
    edCount: TSpinEdit;
    Label1: TSpTBXLabel;
    cbTags: TSpTBXCheckBox;
    DKLanguageController1: TDKLanguageController;
    Label2: TSpTBXLabel;
    procedure edCountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbWordsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ATxFProc;

{$R *.dfm}

procedure TfmLoremIpsum.edCountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=vk_return) then
  begin
    bOk.Click;
    Key:= 0;
    Exit
  end;
  if (Key=vk_escape) then
  begin
    bCan.Click;
    Key:= 0;
    Exit
  end;
end;

procedure TfmLoremIpsum.cbWordsClick(Sender: TObject);
begin
  cbTags.Enabled:= cbPara.Checked;
end;

procedure TfmLoremIpsum.FormShow(Sender: TObject);
begin
  cbWordsClick(Self);
end;

procedure TfmLoremIpsum.Label2Click(Sender: TObject);
begin
  FOpenURL('http://en.wikipedia.org/wiki/Lorem_ipsum', Handle);
end;

end.
