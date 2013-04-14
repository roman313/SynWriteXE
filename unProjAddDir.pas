unit unProjAddDir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  TntForms, TntStdCtrls, DKLang;

type
  TfmProjAddDir = class(TTntForm)
    btnOk: TSpTBXButton;
    btnCan: TSpTBXButton;
    GroupBox1: TSpTBXGroupBox;
    Label1: TSpTBXLabel;
    Label2: TSpTBXLabel;
    edInc: TSpTBXEdit;
    edExc: TSpTBXEdit;
    cbNoBin: TSpTBXCheckBox;
    Label3: TSpTBXLabel;
    edDir: TSpTBXEdit;
    cbSubdir: TSpTBXCheckBox;
    DKLanguageController1: TDKLanguageController;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmProjAddDir.FormShow(Sender: TObject);
begin
  edDir.SelStart:= Length(edDir.Text);
end;

end.
