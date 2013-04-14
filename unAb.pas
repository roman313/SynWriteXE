unit unAb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DKLang;

type
  TfmAb = class(TForm)
    GroupBox4: TSpTBXGroupBox;
    Label12: TSpTBXLabel;
    Label11: TSpTBXLabel;
    Label9: TSpTBXLabel;
    LabelWn: TSpTBXLabel;
    GroupBox5: TSpTBXGroupBox;
    LabelW1: TSpTBXLabel;
    Button1: TSpTBXButton;
    Labelw2: TSpTBXLabel;
    LabelW0: TSpTBXLabel;
    Label4: TSpTBXLabel;
    LabelWEm: TSpTBXLabel;
    DKLanguageController1: TDKLanguageController;
    LabelWV: TSpTBXLabel;
    Labelw3: TSpTBXLabel;
    LabelWA: TSpTBXLabel;
    LabelForum: TSpTBXLabel;
    procedure Button1Click(Sender: TObject);
    procedure LabelWEmClick(Sender: TObject);
    procedure LabelW1Click(Sender: TObject);
    procedure Labelw2Click(Sender: TObject);
    procedure Labelw3Click(Sender: TObject);
    procedure LabelWAClick(Sender: TObject);
    procedure LabelForumClick(Sender: TObject);
  private
    { Private declarations }
    procedure FOp(const s: string);
  public
    { Public declarations }
  end;

var
  fmAb: TfmAb;

implementation

uses ATxFProc;

{$R *.dfm}

procedure TfmAb.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmAb.FOp(const s: string);
begin
  FOpenUrl(s, Handle);
end;

procedure TfmAb.LabelWEmClick(Sender: TObject);
begin
  FOp('mailto:support@uvviewsoft.com?subject=SynWrite');
end;

procedure TfmAb.LabelW1Click(Sender: TObject);
begin
  FOp('http://www.econtrol.ru/');
end;

procedure TfmAb.Labelw2Click(Sender: TObject);
begin
  FOp('https://sourceforge.net/projects/synwrite/');
end;

procedure TfmAb.Labelw3Click(Sender: TObject);
begin
  FOp('http://www.uvviewsoft.com/synwrite/');
end;

procedure TfmAb.LabelWAClick(Sender: TObject);
begin
  FOp('http://www.addictivesoftware.com/');
end;

procedure TfmAb.LabelForumClick(Sender: TObject);
begin
  FOp('http://synwrite.sourceforge.net/forums/');
end;

end.
