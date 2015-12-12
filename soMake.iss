[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{972D2406-D584-4FC8-ADF5-07B801F5DC90}
AppName=soMake
AppVersion=1.0.0
AppPublisher=RedMser
DefaultDirName={pf}\soMake
DefaultGroupName=soMake
AllowNoIcons=true
LicenseFile=F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\license.txt
InfoBeforeFile=F:\Visual Studio 2015\Projects\soMake\starttext.txt
OutputDir=F:\Visual Studio 2015\Projects\soMake\soMake\bin\Setup
OutputBaseFilename=setup
Compression=lzma
SolidCompression=true
DisableReadyPage=true
ShowLanguageDialog=no

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Setup\NDP452-KB2901954-Web.exe; DestDir: {tmp}; Flags: deleteafterinstall; AfterInstall: InstallFramework; Check: FrameworkIsNotInstalled
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\soMake.exe; DestDir: {app}; Flags: ignoreversion
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\license.txt; DestDir: {app}; Flags: ignoreversion
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\readme.txt; DestDir: {app}; Flags: ignoreversion
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\soMake.exe.config; DestDir: {app}; Flags: ignoreversion
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\soMake.pdb; DestDir: {app}; Flags: ignoreversion
Source: F:\Visual Studio 2015\Projects\soMake\soMake\bin\Release\template.mkf; DestDir: {app}; Flags: ignoreversion onlyifdoesntexist
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\soMake; Filename: {app}\soMake.exe
Name: {group}\{cm:UninstallProgram,soMake}; Filename: {uninstallexe}
Name: {commondesktop}\soMake; Filename: {app}\soMake.exe; Tasks: desktopicon

[Run]
Filename: {app}\soMake.exe; Description: {cm:LaunchProgram,soMake}; Flags: nowait postinstall skipifsilent; Tasks: ; Languages: 

[Code]
procedure InitializeWizard;
begin
  WizardForm.LicenseAcceptedRadio.Checked := True;
end;
