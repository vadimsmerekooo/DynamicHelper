object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Left = 207
  Top = 190
  Height = 150
  Width = 364
  object MainADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=Diagram' +
      'HelperDB.mdb;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
  end
  object MainADOQuery: TADOQuery
    Connection = MainADOConnection
    Parameters = <>
    Left = 136
  end
  object ChangePasswordADOQuery: TADOQuery
    Connection = MainADOConnection
    Parameters = <
      item
        Name = 'newpass'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'userlogin'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update Users'
      'set PasswordUser=:newpass where SurnameUser=:userlogin')
    Left = 248
  end
  object ResultUsersADOTable: TADOTable
    Active = True
    Connection = MainADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'UsersResult'
    Left = 96
    Top = 48
  end
  object ResultUsersDataSource: TDataSource
    DataSet = ResultUsersADOTable
    Left = 216
    Top = 48
  end
end
