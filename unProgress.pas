unit unProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  DKLang, Gauges, ExtCtrls;

type
  TProgressType = (
    proFindText,
    proFindFiles,
    proExclBinary,
    proBookmarks,
    proAddFolders,
    proSortFolders
    );

type
  TfmProgress = class(TForm)
    laFile: TLabel;
    DKLanguageController1: TDKLanguageController;
    bCan: TButton;
    laBin: TLabel;
    Pro: TGauge;
    LaBk: TLabel;
    TimerOnTop: TTimer;
    laText: TLabel;
    labCount: TLabel;
    laSort: TLabel;
    procedure bCanClick(Sender: TObject);
    procedure TimerOnTopTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetMode(M: TProgressType);
  end;

implementation

uses
  ATxFProc;

{$R *.dfm}

procedure TfmProgress.SetMode(m: TProgressType);
 //Align center
 procedure A(L: TLabel);
 begin
   L.Left:= (Width-L.Width) div 2;
 end;
begin
  Pro.Progress:= 0; //reset bar on mode change
  Pro.Visible:= (m<>proFindFiles);

  laText.Visible:= m=proFindText;
  laFile.Visible:= m in [proFindFiles, proAddFolders];
  laBin.Visible:= m=proExclBinary;
  laBk.Visible:= m=proBookmarks;
  labCount.Visible:= m=proAddFolders;
  laSort.Visible:= m=proSortFolders;
  Pro.Visible:= not labCount.Visible;

  A(laFile);
  A(laText);
  A(laBin);
  A(laBk);
  A(laSort);
end;

procedure TfmProgress.bCanClick(Sender: TObject);
begin
  StopFind:= true;
end;

procedure TfmProgress.TimerOnTopTimer(Sender: TObject);
begin
  TimerOnTop.Enabled:= false;
  FormStyle:= fsStayOnTop;
  //runtime OnTop setting. This sets form on top of app's
  //forms only.
end;

end.
