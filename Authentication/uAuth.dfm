object fAuth: TfAuth
  Left = 188
  Top = 122
  Width = 438
  Height = 426
  Caption = 'Sistem Informasi'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 401
    Height = 369
    Caption = 'Authentication'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 96
      Width = 74
      Height = 21
      Caption = 'Username'
    end
    object Label2: TLabel
      Left = 32
      Top = 168
      Width = 74
      Height = 21
      Caption = 'Password'
    end
    object Edit1: TEdit
      Left = 32
      Top = 128
      Width = 345
      Height = 29
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 32
      Top = 200
      Width = 345
      Height = 29
      PasswordChar = '*'
      TabOrder = 1
      Text = 'Edit2'
    end
    object Button1: TButton
      Left = 32
      Top = 272
      Width = 121
      Height = 57
      Caption = 'LOGIN'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 272
      Width = 121
      Height = 57
      Caption = 'EXIT'
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 32
      Top = 32
      Width = 345
      Height = 57
      Caption = 'LOGIN'
      TabOrder = 4
    end
  end
end
