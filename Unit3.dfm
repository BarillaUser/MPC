object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'detailed result'
  ClientHeight = 280
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxMemo1: TcxMemo
    Left = 0
    Top = 0
    Align = alClient
    Lines.Strings = (
      '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      'amount: 12,500 mnx'
      'rate: 4,5 %'
      'period: 1 month'
      '---'
      '[round 1] profit: 0,5438 | total: 13,0435 | 1 month | '
      '---'
      'total amount: 13,543434  || total profit: 0,323'
      '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    ParentFont = False
    Properties.ScrollBars = ssBoth
    Properties.WordWrap = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 280
    Width = 613
  end
end
