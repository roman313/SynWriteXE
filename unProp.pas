unit unProp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang, ComCtrls;

type
  TfmProps = class(TForm)
    bOk: TButton;
    DKLanguageController1: TDKLanguageController;
    Pages: TPageControl;
    tabFile: TTabSheet;
    TntLabel1: TLabel;
    edPath: TEdit;
    TntLabel2: TLabel;
    edTime: TEdit;
    TntLabel3: TLabel;
    edSize: TEdit;
    tabDoc: TTabSheet;
    TntLabel4: TLabel;
    edChars: TEdit;
    TntLabel5: TLabel;
    edWords: TEdit;
    TntLabel6: TLabel;
    edLines: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FIniFN: string;
  end;

//var
//  fmProps: TfmProps;

implementation

uses IniFiles;

{$R *.dfm}

procedure TfmProps.FormShow(Sender: TObject);
begin
  with TIniFile.Create(FIniFN) do
  try
    Width:= ReadInteger('Win', 'PropW', Width);
    Height:= ReadInteger('Win', 'PropH', Height);
    Pages.ActivePageIndex:= ReadInteger('Win', 'PropTab', 0);
  finally
    Free
  end;
end;

procedure TfmProps.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with TIniFile.Create(FIniFN) do
  try
    WriteInteger('Win', 'PropW', Width);
    WriteInteger('Win', 'PropH', Height);
    WriteInteger('Win', 'PropTab', Pages.ActivePageIndex);
  finally
    Free
  end;
end;

end.

