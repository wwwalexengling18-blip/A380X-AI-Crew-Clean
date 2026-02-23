#define MyAppName "A380X AI Crew"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "A380X AI Crew Project"
#define MyAppExeName "A380X_AI.exe"

[Setup]
AppId={{A380X-AI-CREW}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=Output
OutputBaseFilename=A380X_AI_Setup
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
DisableProgramGroupPage=yes

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "Desktop-Symbol erstellen"; GroupDescription: "Zusätzliche Symbole:"; Flags: unchecked

[Files]
; Haupt-EXE (muss vorher durch PyInstaller in /dist erzeugt werden)
Source: "..\dist\A380X_AI.exe"; DestDir: "{app}"; Flags: ignoreversion

; Deine CMD Starter (optional, aber praktisch)
Source: "..\A380X_AI_Run.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Run.cmd'))
Source: "..\A380X_AI_Install.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Install.cmd'))
Source: "..\A380X_AI_Doctor.cmd"; DestDir: "{app}"; Flags: ignoreversion; Check: FileExists(ExpandConstant('{src}\..\A380X_AI_Doctor.cmd'))

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{#MyAppName} starten"; Flags: nowait postinstall skipifsilent
