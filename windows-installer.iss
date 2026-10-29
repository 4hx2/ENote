[Setup]
AppName=ENote
AppVersion=0.1.0
DefaultDirName={autopf}\ENote
DefaultGroupName=ENote
OutputDir=.
OutputBaseFilename=ENote-Setup
UninstallDisplayIcon={app}\ENote.exe
ArchitecturesInstallIn64BitMode=x64
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Files]
Source: "app.html"; DestDir: "{app}"; DestName: "ENote.html"
Source: "manifest.webmanifest"; DestDir: "{app}"
Source: "sw.js"; DestDir: "{app}"
Source: "assets\*"; DestDir: "{app}\assets"; Flags: recursesubdirs
Source: "ENote.exe"; DestDir: "{app}"

[Icons]
Name: "{group}\ENote"; Filename: "{app}\ENote.exe"
Name: "{commondesktop}\ENote"; Filename: "{app}\ENote.exe"

[Run]
Filename: "{app}\ENote.exe"; Description: "Запустить ENote"; Flags: postinstall nowait skipifsilent
