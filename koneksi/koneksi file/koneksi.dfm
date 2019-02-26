object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 117
  Height = 240
  Width = 321
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=coba;Data Source=AL\GZL;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 128
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 200
    Top = 32
  end
end
