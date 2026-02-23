#define MyAppName "A380X AI Crew"
#define MyAppExeName "A380X_AI.exe"
#define MyAppVersion "0.1.0"

[Setup]
AppId={{A8F5D7C8-9F7B-4B27-9B2F-9A1D2C0F9E11}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={userdocs}\FBW_A380_Tools\A380-AI-Crew
DefaultGroupName={#MyAppName}
OutputDir=Output
OutputBaseFilename=A380X_AI_Setup
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]
; ✅ DAS ist der wichtige Teil:
; PyInstaller legt die EXE hier ab: dist\A380X_AI\A380X_AI.exe
Source: "..\dist\A380X_AI\A380X_AI.exe"; DestDir: "{app}"; Flags: ignoreversion

; Optional: Tools / SOPs / Config
Source: "..\tools\*"; DestDir: "{app}\tools"; Flags: recursesubdirs ignoreversion
Source: "..\src\*"; DestDir: "{app}\src"; Flags: recursesubdirs ignoreversion
Source: "..\sop\*"; DestDir: "{app}\sop"; Flags: recursesubdirs ignoreversion
Source: "..\requirements.txt"; DestDir: "{app}"; Flags: ignoreversion

; CMD-Starter (wenn vorhanden)
Source: "..\A380X_AI_Run.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Run.cmd'))
Source: "..\A380X_AI_Doctor.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Doctor.cmd'))
Source: "..\A380X_AI_Install.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Install.cmd'))

[Icons]
Name: "{group}\A380X AI Crew (Run)"; Filename: "{app}\A380X_AI.exe"
Name: "{group}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\A380X_AI.exe"; Description: "A380X AI Crew starten"; Flags: nowait postinstall skipifsilent
