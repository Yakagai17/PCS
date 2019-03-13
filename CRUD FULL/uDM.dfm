object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 192
  Top = 117
  Height = 287
  Width = 293
  object ADOConnection1: TADOConnection
    Left = 120
    Top = 16
  end
  object QueryInsert: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 80
  end
  object QueryView: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 184
    Top = 104
  end
  object QueryUpdate: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 40
    Top = 176
  end
  object QueryDelete: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 192
    Top = 176
  end
end
