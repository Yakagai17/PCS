object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 213
  Top = 209
  Height = 265
  Width = 271
  object ADOConnection1: TADOConnection
    Left = 40
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 32
  end
end
