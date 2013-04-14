unit unProp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, DKLang, ComCtrls, TntComCtrls;

type
  TfmProps = class(TForm)
    bOk: TSpTBXButton;
    DKLanguageController1: TDKLanguageController;
    Pages: TTntPageControl;
    tabFile: TTntTabSheet;
    TntLabel1: TSpTBXLabel;
    edPath: TSpTBXEdit;
    TntLabel2: TSpTBXLabel;
    edTime: TSpTBXEdit;
    TntLabel3: TSpTBXLabel;
    edSize: TSpTBXEdit;
    tabDoc: TTntTabSheet;
    TntLabel4: TSpTBXLabel;
    edChars: TSpTBXEdit;
    TntLabel5: TSpTBXLabel;
    edWords: TSpTBXEdit;
    TntLabel6: TSpTBXLabel;
    edLines: TSpTBXEdit;
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

