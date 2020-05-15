unit MainDataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TMainDataModule = class(TDataModule)
    MainADOConnection: TADOConnection;
    MainADOQuery: TADOQuery;
    ChangePasswordADOQuery: TADOQuery;
    ResultUsersADOTable: TADOTable;
    ResultUsersDataSource: TDataSource;
    BestResultADOTabel: TADOTable;
    BestResultTableDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDataModule: TMainDataModule;

implementation
uses AuthRegWindowUnit;
{$R *.dfm}

end.
