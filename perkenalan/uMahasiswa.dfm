object Form1: TForm1
  Left = 344
  Top = 151
  Width = 655
  Height = 298
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 31
    Height = 19
    Caption = 'NIM'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 37
    Height = 19
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 48
    Top = 136
    Width = 45
    Height = 19
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 112
    Top = 40
    Width = 161
    Height = 27
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 161
    Height = 27
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 112
    Top = 128
    Width = 161
    Height = 27
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 104
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Tampil'
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 16
    Width = 321
    Height = 225
    Caption = 'Mahasiswa'
    TabOrder = 4
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 162
      Height = 19
      Caption = 'Nomor Induk Mahasiswa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 88
      Width = 99
      Height = 19
      Caption = 'Nama Lengkap'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 144
      Width = 51
      Height = 19
      Caption = 'Jurusan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 224
      Top = 168
      Width = 29
      Height = 19
      Caption = 'TTD'
    end
    object Label8: TLabel
      Left = 48
      Top = 56
      Width = 42
      Height = 19
      Caption = 'Label8'
    end
    object Label9: TLabel
      Left = 48
      Top = 112
      Width = 42
      Height = 19
      Caption = 'Label9'
    end
    object Label10: TLabel
      Left = 56
      Top = 168
      Width = 50
      Height = 19
      Caption = 'Label10'
    end
    object Label11: TLabel
      Left = 216
      Top = 192
      Width = 49
      Height = 19
      Caption = 'Label11'
    end
  end
  object sSkinManager1: TsSkinManager
    InternalSkins = <>
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'Tahoma'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'c:\Skins'
    SkinName = 'Beijing Ext'
    SkinInfo = '8'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheck' +
      'ListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = 'TBitBtn'
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'
    ThirdParty.ThirdListViews = 'TListView'
    ThirdParty.ThirdPanels = 'TPanel'
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'
    ThirdParty.ThirdTreeViews = 'TTreeView'
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TColorBox'
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = 'TPageControl'
    ThirdParty.ThirdTabControl = 'TTabControl'
    ThirdParty.ThirdToolBar = 'TToolBar'
    ThirdParty.ThirdStatusBar = 'TStatusBar'
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'
    ThirdParty.ThirdScrollControl = 'TScrollBox'
    ThirdParty.ThirdUpDown = 'TUpDown'
    ThirdParty.ThirdScrollBar = 'TScrollBar'
    ThirdParty.ThirdStaticText = 'TStaticText'
    ThirdParty.ThirdNativePaint = ' '
    Left = 24
    Top = 200
  end
end
