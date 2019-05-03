object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 147
  Top = 169
  Height = 218
  Width = 226
  object ADOConnection1: TADOConnection
    Left = 32
    Top = 24
  end
  object QueryView: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 80
    Top = 112
  end
end
