unit unRename;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, TntStdCtrls, TntForms;

type
  TfmRename = class(TTntForm)
    btnOK: TSpTBXButton;
    btnCancel: TSpTBXButton;
    edName: TSpTBXEdit;
    labRename: TSpTBXLabel;
    edExt: TSpTBXEdit;
    Label1: TSpTBXLabel;
    procedure edNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TntFormCreate(Sender: TObject);
  private
    { Private declarations }
    FOldName: WideString;
  public
    { Public declarations }
    FEnablePrevValue: boolean;
    function GetFN: Widestring;
  end;

implementation

uses
  DKLang,
  ATxSProc;

{$R *.dfm}

procedure TfmRename.edNameChange(Sender: TObject);
begin
  btnOK.Enabled:= (edName.Text<>'') and (FEnablePrevValue or (GetFN<>FOldName));
end;

procedure TfmRename.FormShow(Sender: TObject);
begin
  FOldName:= GetFN;
  edNameChange(Self);
end;

function TfmRename.GetFN: Widestring;
begin
  Result:= edName.Text;
  if edExt.Text<>'' then
    Result:= Result+'.'+edExt.Text;
end;

procedure TfmRename.TntFormCreate(Sender: TObject);
begin
  FEnablePrevValue:= false;

  btnOK.Caption:= DKLangConstW('sOk');
  btnCancel.Caption:= DKLangConstW('sCan');
end;

end.
