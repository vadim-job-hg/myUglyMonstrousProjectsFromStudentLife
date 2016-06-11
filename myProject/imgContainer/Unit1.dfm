object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1060#1072#1081#1083' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
  ClientHeight = 570
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 5
    Top = 81
    Width = 825
    Height = 89
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 48
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 384
    Top = 8
    Width = 24
    Height = 13
    Caption = #1041#1072#1081#1090
  end
  object Image2: TImage
    Left = 8
    Top = 432
    Width = 825
    Height = 89
  end
  object Edit1: TEdit
    Left = 96
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 35
    Width = 537
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 448
    Top = 8
    Width = 382
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 568
    Top = 31
    Width = 262
    Height = 22
    Caption = #1054#1041#1047#1054#1056
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 176
    Width = 689
    Height = 241
    ItemHeight = 13
    TabOrder = 4
  end
  object Button2: TButton
    Left = 648
    Top = 528
    Width = 177
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    TabOrder = 5
  end
  object Button3: TButton
    Left = 568
    Top = 59
    Width = 262
    Height = 20
    Caption = #1044#1054#1041#1040#1042#1048#1058#1068
    Enabled = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 703
    Top = 392
    Width = 127
    Height = 25
    Caption = 'Remove'
    TabOrder = 7
  end
  object Button5: TButton
    Left = 703
    Top = 176
    Width = 127
    Height = 25
    Caption = 'UP'
    TabOrder = 8
  end
  object Button6: TButton
    Left = 703
    Top = 207
    Width = 127
    Height = 25
    Caption = 'Down'
    TabOrder = 9
  end
  object OpenDialog1: TOpenDialog
    Left = 96
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 160
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 392
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
        OnClick = N4Click
      end
      object N3: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080#1085#1076#1077#1082#1089#1085#1099#1081' '#1092#1072#1081#1083
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1080#1085#1076#1077#1082#1089#1085#1099#1081' '#1092#1072#1081#1083
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N6Click
      end
    end
  end
  object OpenDialog2: TOpenDialog
    Left = 192
    Top = 96
  end
  object SaveDialog2: TSaveDialog
    Left = 288
    Top = 144
  end
  object OpenDialog3: TOpenDialog
    Left = 320
    Top = 128
  end
end
