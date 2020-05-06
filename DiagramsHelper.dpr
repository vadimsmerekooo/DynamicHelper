program DiagramsHelper;

uses
  Forms,
  MainWindowUnit in 'MainWindowUnit.pas' {MainWindow},
  AuthRegWindowUnit in 'AuthRegWindowUnit.pas' {AuthRegWindow},
  MainDataModuleUnit in 'MainDataModuleUnit.pas' {MainDataModule: TDataModule},
  ChangePasswordWindowUnit in 'ChangePasswordWindowUnit.pas' {ChangePasswordWindow};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAuthRegWindow, AuthRegWindow);
  Application.CreateForm(TMainWindow, MainWindow);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.CreateForm(TChangePasswordWindow, ChangePasswordWindow);
  Application.Run;
end.
