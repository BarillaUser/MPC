object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'settings'
  ClientHeight = 141
  ClientWidth = 260
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
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 6
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Align = alTop
    Alignment = alTopRight
    Caption = 'common'
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 244
    Height = 96
    Width = 248
    object cxComboBox1: TcxComboBox
      Left = 109
      Top = 20
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'English'
        'Russian')
      TabOrder = 0
      Text = 'English'
      Width = 119
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 22
      Caption = 'language'
      Style.TextColor = 15066597
      Transparent = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 8
      Top = 49
      Caption = 'update rates && prices on application start'
      Style.TextColor = 15066597
      TabOrder = 2
      Transparent = True
      Width = 220
    end
  end
  object cxButton1: TcxButton
    Left = 179
    Top = 108
    Width = 75
    Height = 25
    Caption = 'ok'
    TabOrder = 1
  end
end
