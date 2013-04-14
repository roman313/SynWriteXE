unit unEnc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang;

type
  TfmEnc = class(TForm)
    Button1: TSpTBXButton;
    Button2: TSpTBXButton;
    StaticText1: TTntStaticText;
    DKLanguageController1: TDKLanguageController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEnc: TfmEnc;

implementation

{$R *.dfm}

end.
