unit unToolbarSize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  TntForms, TntStdCtrls, Spin;

type
  TfmToolbarSize = class(TForm)
    GroupBoxIco: TGroupBox;
    Label1: TLabel;
    btn16: TRadioButton;
    btn32: TRadioButton;
    btnSize: TRadioButton;
    edSizeX: TSpinEdit;
    edSizeY: TSpinEdit;
    bOk: TButton;
    bCan: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
