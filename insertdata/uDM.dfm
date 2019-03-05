object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 176
  Top = 135
  Height = 241
  Width = 278
  object ADOConnection1: TADOConnection
    Left = 40
    Top = 32
  end
  object QueryTampil: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 168
    Top = 32
  end
  object QueryInsert: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 104
  end
end
