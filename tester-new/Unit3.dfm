object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 527
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object memText: TMemo
    Left = 16
    Top = 40
    Width = 662
    Height = 161
    Lines.Strings = (
      'memText')
    TabOrder = 0
  end
  object cbVoices: TComboBox
    Left = 16
    Top = 13
    Width = 662
    Height = 21
    TabOrder = 1
    Text = 'cbVoices'
    OnChange = cbVoicesChange
  end
  object bbtnPlay: TButton
    Left = 16
    Top = 207
    Width = 57
    Height = 25
    Caption = 'bbtnPlay'
    TabOrder = 2
    OnClick = bbtnPlayClick
  end
  object bbtnPause: TButton
    Left = 79
    Top = 207
    Width = 58
    Height = 25
    Caption = 'bbtnPause'
    TabOrder = 3
  end
  object bbtnStop: TButton
    Left = 143
    Top = 207
    Width = 58
    Height = 25
    Caption = 'bbtnStop'
    TabOrder = 4
  end
  object SpVoice1: TSpVoice
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 336
    Top = 168
  end
end
