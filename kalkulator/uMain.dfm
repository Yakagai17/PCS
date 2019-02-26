object Form1: TForm1
  Left = 558
  Top = 152
  Width = 348
  Height = 344
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 77
    Height = 21
    Caption = 'Bilangan 1'
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 77
    Height = 21
    Caption = 'Bilangan 2'
  end
  object Label3: TLabel
    Left = 48
    Top = 152
    Width = 37
    Height = 21
    Caption = 'Hasil'
  end
  object Label4: TLabel
    Left = 136
    Top = 152
    Width = 50
    Height = 21
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 161
    Height = 29
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 136
    Top = 80
    Width = 153
    Height = 29
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 40
    Top = 216
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 216
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
  end
  object sSkinManager1: TsSkinManager
    InternalSkins = <>
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'Tahoma'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'c:\Skins'
    SkinName = 'Black Box'
    SkinInfo = '7.7'
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
    Left = 272
    Top = 176
  end
end
