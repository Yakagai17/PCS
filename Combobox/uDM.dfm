object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 146
  Top = 145
  Height = 218
  Width = 215
  object ADOConnection1: TADOConnection
    Left = 32
    Top = 24
  end
  object QueryJurusan: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 96
  end
end
