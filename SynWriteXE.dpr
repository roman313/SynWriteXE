program SynWriteXE;

uses
  FastMM4,
  Forms,
  unEx in 'unEx.pas' {fmSynEx},
  unMain in 'unMain.pas' {fmMain},
  unAb in 'unAb.pas' {fmAb},
  unFrame in 'unFrame.pas' {EditorFrame: TFrame},
  unSetup in 'unSetup.pas' {fmSetup},
  unSR in 'unSR.pas' {fmSR},
  unSearch in 'unSearch.pas',
  unEnc in 'unEnc.pas' {fmEnc},
  unTool in 'unTool.pas' {fmTools},
  VCLFixes,
  unSR2 in 'unSR2.pas' {fmSRFiles},
  unTool2 in 'unTool2.pas' {fmToolOutput},
  unProgress in 'unProgress.pas' {fmProgress},
  unExtr in 'unExtr.pas' {fmExtract},
  unClip in 'unClip.pas' {fmClip},
  unProc in 'unProc.pas',
  unShell in 'unShell.pas' {fmShell},
  unInsTxt in 'unInsTxt.pas' {fmInsTxt},
  unLoadLexStyles in 'unLoadLexStyles.pas' {fmLoadLex},
  unMacroEdit in 'unMacroEdit.pas' {fmMacroEdit},
  unGoto in 'unGoto.pas' {fmGoto},
  unCmds in 'unCmds.pas',
  unMap in 'unMap.pas' {fmMap},
  unSRTree in 'unSRTree.pas' {fmSRTree},
  unSearchInList in 'unSearchInList.pas',
  unProcTabbin in 'unProcTabbin.pas',
  unTabSw in 'unTabSw.pas',
  unTabSwForm in 'unTabSwForm.pas' {fmTabSw},
  unProp in 'unProp.pas' {fmProps},
  unSetupOvr in 'unSetupOvr.pas' {fmSetupOvr},
  unGotoBkmk in 'unGotoBkmk.pas' {fmGotoBkmk},
  unLoremIpsum in 'unLoremIpsum.pas' {fmLoremIpsum},
  unFav in 'unFav.pas' {fmFav},
  unProj in 'unProj.pas' {fmProj},
  unProjAddDir in 'unProjAddDir.pas' {fmProjAddDir: TForm},
  unProjProps in 'unProjProps.pas' {fmProjProps: TForm},
  unClips in 'unClips.pas' {fmClips},
  unNumConv in 'unNumConv.pas' {fmNumConv: TForm},
  ATSynPlugins in 'ATSynPlugins.pas',
  unFillBlock in 'unFillBlock.pas' {fmFillBlock},
  unSort in 'unSort.pas' {fmSort},
  unProcSort in 'unProcSort.pas',
  unCmdList in 'unCmdList.pas' {fmCmdList},
  unProjList in 'unProjList.pas' {fmProjList: TForm},
  unRename in 'unRename.pas' {fmRename: TForm};

{$R *.res}
{$R *.dkl_const.res}

begin
  if not CheckInst then Exit;
  Application.Initialize;
  Application.Title := 'SynWriteXE';
  Application.HintHidePause := 5000;
  Application.CreateForm(TfmSynEx, fmSynEx);
  if not CheckIni then Exit;
  Application.Run;
end.
