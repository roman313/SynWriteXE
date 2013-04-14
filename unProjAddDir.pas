unit unProjAddDir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang;

type
  TfmProjAddDir = class(TForm)
    btnOk: TButton;
    btnCan: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edInc: TEdit;
    edExc: TEdit;
    cbNoBin: TCheckBox;
    Label3: TLabel;
    edDir: TEdit;
    cbSubdir: TCheckBox;
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
