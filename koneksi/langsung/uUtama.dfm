object fUtama: TfUtama
  Left = 220
  Top = 135
  Width = 928
  Height = 480
  Caption = 'Form Desain Utama'
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
    Width = 409
    Height = 409
    Caption = 'Data '
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 112
      Width = 19
      Height = 21
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 24
      Top = 152
      Width = 35
      Height = 21
      Caption = 'NIM'
    end
    object Label3: TLabel
      Left = 24
      Top = 192
      Width = 55
      Height = 21
      Caption = 'NAMA'
    end
    object Label4: TLabel
      Left = 24
      Top = 232
      Width = 57
      Height = 21
      Caption = 'PRODI'
    end
    object Label5: TLabel
      Left = 24
      Top = 272
      Width = 59
      Height = 21
      Caption = 'KELAS'
    end
    object Label6: TLabel
      Left = 24
      Top = 312
      Width = 101
      Height = 21
      Caption = 'Jenis Kelamin'
    end
    object Panel1: TPanel
      Left = 16
      Top = 24
      Width = 377
      Height = 49
      Caption = 'Form Isian Data Mahasiswa'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 152
      Top = 104
      Width = 233
      Height = 29
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 152
      Top = 144
      Width = 233
      Height = 29
      TabOrder = 2
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 152
      Top = 184
      Width = 233
      Height = 29
      TabOrder = 3
      Text = 'Edit3'
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 224
      Width = 233
      Height = 29
      ItemHeight = 21
      TabOrder = 4
      Text = '- PILIH -'
      Items.Strings = (
        'Teknik Informatika'
        'Akuntansi'
        'Sistem Informasi')
    end
    object ComboBox2: TComboBox
      Left = 152
      Top = 264
      Width = 233
      Height = 29
      ItemHeight = 21
      TabOrder = 5
      Text = '- PILIH -'
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
    end
    object ComboBox3: TComboBox
      Left = 152
      Top = 304
      Width = 233
      Height = 29
      ItemHeight = 21
      TabOrder = 6
      Text = '- PILIH -'
      Items.Strings = (
        'Laki-Laki'
        'Perempuan')
    end
    object Button1: TButton
      Left = 8
      Top = 360
      Width = 81
      Height = 33
      Caption = 'INSERT'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 360
      Width = 89
      Height = 33
      Caption = 'UPDATE'
      TabOrder = 8
    end
    object Button3: TButton
      Left = 208
      Top = 360
      Width = 89
      Height = 33
      Caption = 'DELETE'
      TabOrder = 9
    end
    object Button4: TButton
      Left = 312
      Top = 360
      Width = 81
      Height = 33
      Caption = 'VIEW'
      TabOrder = 10
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 432
    Top = 72
    Width = 457
    Height = 353
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 776
    Top = 24
    Width = 105
    Height = 33
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = Button5Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=coba;Data Source=AL\GZL;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 448
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 600
    Top = 16
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'mahasiswa'
    Left = 528
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 704
    Top = 16
  end
end
