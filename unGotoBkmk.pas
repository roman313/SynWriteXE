unit unGotoBkmk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang;

type
  TfmGotoBkmk = class(TForm)
    List: TListBox;
    bOk: TButton;
    bCan: TButton;
    TntLabel1: TLabel;
    DKLanguageController1: TDKLanguageController;
    procedure ListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmGotoBkmk.ListDblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

end.
