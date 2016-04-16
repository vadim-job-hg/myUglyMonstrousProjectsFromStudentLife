object Form4: TForm4
  Left = 104
  Top = 196
  Width = 878
  Height = 644
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 817
    Height = 265
    Caption = '?????????'
    TabOrder = 0
    Visible = False
    object BitBtn1: TBitBtn
      Left = 48
      Top = 48
      Width = 113
      Height = 25
      Caption = '??? ????'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 248
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    FileName = 'D:\Final Fantasy VIII\????????\Final_fantasy_2.jpg'
    FilterIndex = 2
    Left = 208
    Top = 56
  end
end
