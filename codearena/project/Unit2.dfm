object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 627
  ClientWidth = 1276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 1170
    Height = 153
    TabOrder = 0
  end
  object Button1: TButton
    Left = 1184
    Top = 8
    Width = 80
    Height = 25
    Caption = 'CONNECT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1184
    Top = 39
    Width = 80
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 1184
    Top = 70
    Width = 80
    Height = 25
    Caption = 'RECIEVE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object CppWebBrowser1: TCppWebBrowser
    Left = 8
    Top = 248
    Width = 1170
    Height = 819
    TabOrder = 4
    ControlData = {
      4C000000EC780000A55400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button4: TButton
    Left = 1016
    Top = 167
    Width = 155
    Height = 25
    Caption = 'USE THE SCRIPT'
    TabOrder = 5
  end
  object NW: TButton
    Left = 96
    Top = 167
    Width = 42
    Height = 25
    Caption = 'NW'
    TabOrder = 6
  end
  object NE: TButton
    Left = 144
    Top = 167
    Width = 39
    Height = 25
    Caption = 'NE'
    TabOrder = 7
  end
  object E: TButton
    Left = 168
    Top = 192
    Width = 39
    Height = 25
    Caption = 'E'
    TabOrder = 8
  end
  object W: TButton
    Left = 64
    Top = 192
    Width = 35
    Height = 25
    Caption = 'W'
    TabOrder = 9
  end
  object SW: TButton
    Left = 96
    Top = 217
    Width = 42
    Height = 25
    Caption = 'SW'
    TabOrder = 10
  end
  object SE: TButton
    Left = 144
    Top = 217
    Width = 39
    Height = 25
    Caption = 'SE'
    TabOrder = 11
  end
  object Button5: TButton
    Left = 280
    Top = 159
    Width = 75
    Height = 18
    Caption = 'DRAG'
    TabOrder = 12
  end
  object Button6: TButton
    Left = 280
    Top = 183
    Width = 75
    Height = 17
    Caption = 'HEAL'
    TabOrder = 13
  end
  object Button7: TButton
    Left = 280
    Top = 206
    Width = 75
    Height = 18
    Caption = 'DROP'
    TabOrder = 14
  end
  object Button8: TButton
    Left = 280
    Top = 230
    Width = 75
    Height = 17
    Caption = 'ATTACK'
    TabOrder = 15
  end
  object Button9: TButton
    Left = 424
    Top = 167
    Width = 97
    Height = 25
    Caption = 'ROTATE LEFT'
    TabOrder = 16
  end
  object Button10: TButton
    Left = 424
    Top = 202
    Width = 97
    Height = 25
    Caption = 'ROTATE RIGHT'
    TabOrder = 17
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = 'codearena.eu'
    Port = 7654
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    Left = 24
    Top = 32
  end
  object Timer1: TTimer
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 16
    Top = 176
  end
end
