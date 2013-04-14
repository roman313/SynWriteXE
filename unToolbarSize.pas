unit unToolbarSize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TfmToolbarSize = class(TForm)
    GroupBoxIco: TSpTBXGroupBox;
    Label1: TSpTBXLabel;
    btn16: TSpTBXRadioButton;
    btn32: TSpTBXRadioButton;
    btnSize: TSpTBXRadioButton;
    edSizeX: TSpinEdit;
    edSizeY: TSpinEdit;
    bOk: TSpTBXButton;
    bCan: TSpTBXButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
