[Setup]
AppName=SynWrite
AppVersion=5.2.150
AppPublisher=UVViewSoft
AppPublisherURL=http://uvviewsoft.com
AppSupportURL=http://uvviewsoft.com
DefaultDirName={pf}\SynWrite
DefaultGroupName=SynWrite
DisableProgramGroupPage=yes
OutputDir=D:\S
OutputBaseFilename=SynWrite
SetupIconFile=D:\S\Ico\Syn_mainicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "..\Syn.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\CP.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Lexers.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Tidy.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\HL\*.acp"; DestDir: "{app}\HL"; Flags: ignoreversion
Source: "..\HL\*.lxl"; DestDir: "{app}\HL"; Flags: ignoreversion confirmoverwrite
Source: "..\Lang\*"; DestDir: "{app}\Lang"; Flags: ignoreversion
Source: "..\Readme\*"; DestDir: "{app}\Readme"; Flags: ignoreversion
Source: "..\Template\colors\*"; DestDir: "{app}\Template\colors"; Flags: ignoreversion
Source: "..\Template\newdoc\*"; DestDir: "{app}\Template\newdoc"; Flags: ignoreversion
Source: "..\Template\tools\*"; DestDir: "{app}\Template\tools"; Flags: ignoreversion
Source: "..\Template\clips\*"; DestDir: "{app}\Template\clips"; Flags: ignoreversion
Source: "..\Tools\*"; DestDir: "{app}\Tools"; Flags: ignoreversion
Source: "..\Dictionaries\*"; DestDir: "{app}\Dictionaries"; Flags: ignoreversion
Source: "..\SynPlugins.sample.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\OfficeTheme.sample.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Plugins\Explorer\*"; DestDir: "{app}\Plugins\Explorer"; Flags: ignoreversion
Source: "..\Plugins\SynFTP\*"; DestDir: "{app}\Plugins\SynFTP"; Flags: ignoreversion
Source: "..\Plugins\FindIDPas\*"; DestDir: "{app}\Plugins\FindIDPas"; Flags: ignoreversion

[Icons]
Name: "{group}\SynWrite"; Filename: "{app}\Syn.exe"
Name: "{group}\SynWrite Help"; Filename: "{app}\Readme\SynWrite.chm"
Name: "{group}\{cm:UninstallProgram,SynWrite}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\SynWrite"; Filename: "{app}\Syn.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Syn.exe"; Parameters: "/reg"; Description: "Configure SynWrite file types"; Flags: nowait postinstall skipifsilent runascurrentuser
;;Filename: "{app}\Readme\History.txt"; Description: "View versions history"; Flags: nowait shellexec postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\Syn*.ini"

[Registry]
Root: HKCR; Subkey: "*\shell\SynWrite"; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\SynWrite\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\SynWrite\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Syn.exe"" ""%1"""
