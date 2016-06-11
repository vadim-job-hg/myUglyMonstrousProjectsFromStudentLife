object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1094#1080#1090#1072#1090
  ClientHeight = 355
  ClientWidth = 836
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 69
    Height = 13
    Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1077#1074#1072
  end
  object Label2: TLabel
    Left = 248
    Top = 48
    Width = 75
    Height = 13
    Caption = #1054#1090#1089#1090#1091#1087' '#1089#1087#1088#1072#1074#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 75
    Height = 13
    Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
  end
  object Label4: TLabel
    Left = 248
    Top = 8
    Width = 68
    Height = 13
    Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091
  end
  object Label5: TLabel
    Left = 24
    Top = 80
    Width = 48
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Image1: TImage
    Left = 3
    Top = 258
    Width = 825
    Height = 89
  end
  object Label6: TLabel
    Left = 472
    Top = 80
    Width = 48
    Height = 13
    Caption = #1048#1089#1090#1086#1095#1085#1080#1082
  end
  object Label7: TLabel
    Left = 368
    Top = 113
    Width = 91
    Height = 13
    Caption = #1064#1072#1085#1089' '#1074#1099#1087#1072#1076#1077#1085#1080#1103':'
  end
  object Label8: TLabel
    Left = 256
    Top = 112
    Width = 43
    Height = 13
    Caption = #1059#1088#1086#1074#1077#1085#1100
  end
  object Label9: TLabel
    Left = 24
    Top = 112
    Width = 78
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088' '#1096#1088#1080#1092#1090#1072
  end
  object Label10: TLabel
    Left = 472
    Top = 11
    Width = 76
    Height = 13
    Caption = #1048#1047#1054#1041#1056#1040#1046#1045#1053#1048#1045
  end
  object Edit1: TEdit
    Left = 105
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 105
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 336
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 336
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 105
    Top = 77
    Width = 352
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 472
    Top = 45
    Width = 337
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = #1053#1086#1074#1099#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
    Items.Strings = (
      #1053#1086#1074#1099#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081)
  end
  object Button2: TButton
    Left = 640
    Top = 104
    Width = 169
    Height = 25
    Caption = #1044#1054#1041#1040#1042#1048#1058#1068'/'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 536
    Top = 77
    Width = 273
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    Text = #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
    Items.Strings = (
      #1053#1077' '#1074#1099#1073#1088#1072#1085#1086
      #1050#1083#1072#1089#1080#1095#1077#1089#1082#1080#1081' '#1087#1080#1089#1072#1090#1077#1083#1100
      #1057#1086#1074#1088#1077#1084#1077#1085#1085#1099#1081' '#1087#1080#1089#1072#1090#1077#1083#1100
      #1060#1080#1083#1100#1084
      #1052#1091#1083#1100#1090#1092#1080#1083#1100#1084
      #1057#1077#1088#1080#1072#1083
      #1050#1086#1084#1084#1080#1082#1089
      #1048#1075#1088#1099
      #1055#1086#1101#1079#1080#1103
      #1070#1084#1086#1088#1080#1089#1090
      #1055#1077#1089#1085#1103)
  end
  object Memo1: TMemo
    Left = 8
    Top = 139
    Width = 820
    Height = 110
    TabOrder = 8
  end
  object CheckBox1: TCheckBox
    Left = 537
    Top = 112
    Width = 97
    Height = 17
    Caption = '    '#1089#1077#1082#1088#1077#1090#1085#1072#1103
    TabOrder = 9
  end
  object Edit7: TEdit
    Left = 465
    Top = 112
    Width = 66
    Height = 21
    TabOrder = 10
    Text = '1'
    OnKeyPress = Edit7KeyPress
  end
  object Edit8: TEdit
    Left = 305
    Top = 111
    Width = 57
    Height = 21
    TabOrder = 11
    Text = '-1'
    OnKeyPress = Edit8KeyPress
  end
  object Edit9: TEdit
    Left = 129
    Top = 108
    Width = 56
    Height = 21
    TabOrder = 12
    OnKeyPress = Edit9KeyPress
  end
  object ComboBox3: TComboBox
    Left = 552
    Top = 8
    Width = 257
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 13
    Text = #1057#1090#1072#1085#1076#1072#1088#1090
    Items.Strings = (
      #1057#1090#1072#1085#1076#1072#1088#1090)
  end
  object MainMenu1: TMainMenu
    Left = 136
    Top = 40
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080#1089#1090#1086#1095#1085#1080#1082' '#1094#1080#1090#1072#1090
      end
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1080#1089#1090#1086#1095#1085#1080#1082' '#1094#1080#1090#1072#1090
      end
      object N4: TMenuItem
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
        Enabled = False
      end
      object N5: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N5Click
      end
    end
  end
end
