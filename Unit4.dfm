object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'new address'
  ClientHeight = 209
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  DesignSize = (
    413
    209)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 6
    Top = 8
    Anchors = [akLeft, akTop, akRight]
    Caption = 'properties'
    Constraints.MinWidth = 315
    Style.TextStyle = [fsBold]
    StyleDisabled.TextStyle = [fsBold]
    TabOrder = 0
    ExplicitWidth = 315
    DesignSize = (
      399
      156)
    Height = 163
    Width = 399
    object cxLabel1: TcxLabel
      Left = 12
      Top = 20
      Caption = 'mnx address'
      Style.TextColor = 15066597
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 13
      Top = 47
      Caption = 'mnx balance'
      Style.TextColor = 15066597
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 13
      Top = 74
      Caption = 'label'
      Style.TextColor = 15066597
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      Transparent = True
    end
    object cxCheckBox_mnxenableupdate: TcxCheckBox
      Left = 12
      Top = 125
      Caption = 'enable balance updates for this address'
      State = cbsChecked
      Style.TextColor = 15066597
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 3
      Transparent = True
      Width = 247
    end
    object cxCheckBox_mnxvisible: TcxCheckBox
      Left = 12
      Top = 100
      Caption = 'show this address in main window'
      State = cbsChecked
      Style.TextColor = 15066597
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 4
      Transparent = True
      Width = 212
    end
    object cxTextEdit_mnxlabel: TcxTextEdit
      Left = 126
      Top = 73
      Anchors = [akLeft, akTop, akRight]
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 5
      ExplicitWidth = 233
      Width = 263
    end
    object cxCalcEdit_mnxbalance: TcxCalcEdit
      Left = 126
      Top = 46
      Anchors = [akLeft, akTop, akRight]
      EditValue = 0.000000000000000000
      Properties.QuickClose = True
      Style.TextStyle = [fsBold]
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 6
      ExplicitWidth = 233
      Width = 263
    end
    object cxButtonEdit_mnxaddress: TcxButtonEdit
      Left = 126
      Top = 19
      Anchors = [akLeft, akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000021744558745469746C650050617374653B426172733B52
            6962626F6E3B5374616E646172643B259B079D0000005049444154785EDDD1B1
            0D0020084451376201F6B662B63316261407845869F16373BCC60180A6AAF045
            3B7F6067B8DFA0031B03D0009002491550F724C0BFB00D1058DA00D9CA2D8036
            E0FB109815C05A60CA2F9DBD17ADCD0000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = cxButtonEdit_mnxaddressPropertiesButtonClick
      StyleDisabled.TextStyle = [fsBold]
      TabOrder = 7
      ExplicitWidth = 233
      Width = 263
    end
  end
  object cxButton2: TcxButton
    Left = 249
    Top = 177
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'cancel'
    ModalResult = 2
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 165
  end
  object cxButton3: TcxButton
    Left = 330
    Top = 177
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'ok'
    ModalResult = 1
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 246
  end
end
