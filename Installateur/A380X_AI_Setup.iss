#define MyAppName "A380X AI Crew"
#define MyAppVersion "1.0"
#define MyAppExeName "A380X_AI.exe"

[Setup]
AppId={{A380X-AI-CREW}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={autopf}\A380X AI Crew
DefaultGroupName=A380X AI Crew
OutputDir=Output
OutputBaseFilename=A380X_AI_Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

Source: "..\A380X_AI_Run.cmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\A380X_AI.exe"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\dist\A380X_AI.exe'))
Source: "..\dist\A380X_AI\A380X_AI.exe"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\dist\A380X_AI\A380X_AI.exe'))

[Icons]
Name: "{group}\A380X AI Crew"; Filename: "{app}\A380X_AI.exe"
Name: "{group}\Uninstall A380X AI Crew"; Filename: "{uninstallexe}"
Name: "{group}\A380X AI Crew (CMD offen)"; Filename: "{cmd}"; Parameters: "/k ""{app}\A380X_AI_Run.cmd"""

[Run]
Filename: "{cmd}"; Parameters: "/k ""{app}\A380X_AI_Run.cmd"""; Description: "A380X AI Crew starten (CMD offen)"; Flags: postinstall skipifsilent
