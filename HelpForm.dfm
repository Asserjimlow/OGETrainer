object FormHelp: TFormHelp
  Left = 0
  Top = 0
  Caption = #1055#1086#1084#1086#1097#1100
  ClientHeight = 276
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblHelp: TLabel
    Left = 16
    Top = 16
    Width = 585
    Height = 121
    Caption = 'lblHelp'
  end
  object btnClose: TButton
    Left = 224
    Top = 227
    Width = 185
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = btnCloseClick
  end
end
