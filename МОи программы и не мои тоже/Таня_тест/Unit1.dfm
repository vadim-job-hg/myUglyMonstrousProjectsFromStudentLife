object Form1: TForm1
  Left = 118
  Top = 123
  Width = 788
  Height = 481
  Caption = #1058#1077#1089#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 80
    Top = 48
    Width = 54
    Height = 13
    Caption = #1042#1086#1087#1088#1086#1089' N1'
  end
  object Label1: TLabel
    Left = 98
    Top = 288
    Width = 157
    Height = 24
    Caption = #1055#1088#1072#1074#1080#1083#1100#1085#1099#1093' = 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 386
    Top = 288
    Width = 181
    Height = 24
    Caption = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1099#1093' = 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 96
    Top = 72
    Width = 497
    Height = 209
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1086#1074
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 89
      Height = 17
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 56
      Width = 97
      Height = 17
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 88
      Width = 97
      Height = 17
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 112
      Width = 97
      Height = 17
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 136
      Width = 97
      Height = 17
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 417
      Height = 21
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 48
      Top = 56
      Width = 417
      Height = 21
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 48
      Top = 80
      Width = 417
      Height = 21
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 48
      Top = 112
      Width = 417
      Height = 21
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 48
      Top = 136
      Width = 417
      Height = 21
      TabOrder = 9
    end
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 248
    Width = 75
    Height = 25
    Caption = #1054#1090#1074#1077#1090
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit6: TEdit
    Left = 136
    Top = 48
    Width = 457
    Height = 21
    TabOrder = 2
    Text = 'Edit6'
  end
  object Edit7: TEdit
    Left = 624
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit7'
    Visible = False
  end
  object Edit8: TEdit
    Left = 624
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit8'
    Visible = False
  end
  object Edit9: TEdit
    Left = 624
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit9'
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = '.dbt'
    Left = 144
    Top = 8
  end
end
