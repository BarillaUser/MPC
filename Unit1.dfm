object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Minexbank Profit Calculator v0.2'
  ClientHeight = 458
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 276
    Top = 175
    Width = 136
    Height = 25
    Caption = 'Calculate'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000001F744558745469746C650043616C63756C6174696F6E3B
      43616C63756C6174696F6E733BF443BC3C000001FE49444154785E9592CF6B13
      5110C7BF9B6C543C08E2C183D7A48A170F8AE0A569AAA7C67AF32F10515210A1
      08ED59C49FA752D083770F828762C14BDA18F1EA4D68936AD3BA5643526DD676
      DB8664C637B3FBB2293988C3BE7DEFB3F366E63BC33A2F5F7F2A2592C92CFED3
      BADD4EF9E6F5F397DD7ADDCF4E17B26030D418B1290E1A11E3FECCC23080842B
      C0CC785CAE87011C47D240B80326C6C4C5E312A31F5CD9E5585D6FE1D2991338
      9C7270249594BB885E7A396877B1BFDFC5C7CF0DB0494064134419BC8D2D548E
      1D02096BD0807E55E479BEFA285640DAFFABC2B9B01EDB38213B993EBE722A4A
      4EEA7089C26A73C50AAC5D1B3D8DB985E51E5FCD0DA13E3FD9E393F967205270
      120CD21E7FFC6C61DC046E985658A47EDFC2782E836FDE6F2DBE59ABE06C7A17
      CDD52530707088B27C3FC0D31725C0F29F004F9EBF074533DAF177F0EECD52E8
      EC9F01111900266FD97F8975DDBB1DB123C4B830558C7CCA7AB20A14DF2EC633
      C88F0C61BED4CF99033C369206132B248859616DFD17F2A6E7D5B54D006CF6A6
      B998C1D75A53ABADD41A18CBA651FDD290C2FD33606DC1DF0EF06876D10AD419
      3C9C2D1A94CBC0766B170F6684211CB7200A644D1572B1C3F0F4C428180E4233
      7C47187014D92A60B7BABC52BE71D71BD68FEAB64E076CCFF2F47291748E4E3B
      F800A023114701A46C72DDFF6D0CA00D60EF2F70DB422AC97AB57F0000000049
      454E44AE426082}
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 438
    Width = 420
    Height = 20
    Panels = <>
    PaintStyle = stpsUseLookAndFeel
    SimplePanelStyle.Active = True
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ExplicitTop = 235
  end
  object cxButton2: TcxButton
    Left = 276
    Top = 144
    Width = 136
    Height = 25
    Caption = 'Update rates && prices'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000000A744558745469746C65004261723B5E569F8C00000210
      49444154785E9593BB6B145114C6BF7918FC0BAC6D6C54103B4374832488A095
      A08B3642C4C20756A99474828DB662A18B60A5D86CEF4A66C5C71A5062112C6C
      050BC1661F73EF795C39F74E982D1474E0DCC3C7E1FBF89DB933F8CF27035000
      289B9E95F75EAC3493801080800CE9548490373EB5016E5FDCCCB71FAD0DF2AC
      586696E1D11BBD953288E0E4E2D97F04D82C20BA7CF8FC656C3FEF7500E4A504
      F9AB6171FFFA2EB2A1A8752646F8F50D4C84B8824A681D211DA115C546EFD820
      CBB38E8A0EEF5E199D3163109A0B508155F286C6DE06844C3BD7CEDDC7C397EB
      1DD3EC099932C8C70094DD6A1F7E2E31CCD73970C790CB796411C1CEF7571061
      9866EF1194C03E11E476B210483C00ECB9F9E4C3E0D6D34FF5F5C7EF06A62D80
      C54354A281BC072CC0B93680D8EF0614128A13DDD523B06E342A1AE7221A0DEC
      08100251B3C2C15E7F01BD7E01400CD193E0EB0F827392904540528359A3F6CD
      0AE47C22D8EA9E1A7CB9747ABA7561F5358005E70935291CA59D45199E3D5429
      11C40086F51850AA1C3FB4761585CA92EDECBCA0A600E7391ADA154222A2F40E
      28052017E7317D5F411C456D4647621503442505680A8CD7377F0B86C293F12E
      123C1B7E80278DDA085808AA498B91A9809913C178E6AA9DD1678C677505C0CD
      26E36AF8E62DDC741C755D4B351A7D849B69D4E3DA0D9F3DE86352FB2100CE00
      EC6D3E1E63E6F6576D7553FC07ED7E03BBD8849C24129E120000000049454E44
      AE426082}
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Margins.Bottom = 0
    Align = alTop
    Caption = '[minexbank.com] rates (update: 15.12.2017)'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 3
    ExplicitLeft = 6
    ExplicitTop = 8
    ExplicitWidth = 403
    Height = 44
    Width = 414
    object cxLabel10: TcxLabel
      Tag = 1
      Left = 106
      Top = 14
      Caption = 'week:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 15066597
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel11: TcxLabel
      Tag = 2
      Left = 210
      Top = 14
      Caption = 'month:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 15066597
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel12: TcxLabel
      Tag = 3
      Left = 321
      Top = 14
      Caption = 'year:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 15066597
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel13: TcxLabel
      Left = 46
      Top = 14
      Caption = '0,59%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16744576
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel14: TcxLabel
      Tag = 1
      Left = 145
      Top = 14
      Caption = '4,5%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16744576
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel15: TcxLabel
      Tag = 2
      Left = 254
      Top = 14
      Caption = '14,9%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16744576
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel16: TcxLabel
      Tag = 3
      Left = 357
      Top = 14
      Caption = '70%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16744576
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel9: TcxLabel
      Left = 12
      Top = 14
      Caption = 'day:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 15066597
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 3
    Top = 133
    Caption = 'parking settings'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 164
    Width = 267
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 44
      Width = 261
      Height = 110
      Align = alBottom
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ExplicitTop = 50
      ClientRectBottom = 108
      ClientRectLeft = 2
      ClientRectRight = 259
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Day'
        ImageIndex = 0
        ExplicitLeft = 3
        ExplicitHeight = 64
        object cxLabel19: TcxLabel
          Left = 226
          Top = 6
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 99
          Top = 5
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 0.590000000000000000
          Width = 121
        end
        object cxLabel20: TcxLabel
          Left = 15
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 15
          Top = 33
          Caption = 'park for'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 99
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 365
          Width = 69
        end
        object cxLabel4: TcxLabel
          Left = 174
          Top = 33
          Caption = 'day(s)'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxCheckBox2: TcxCheckBox
          Left = 15
          Top = 59
          Caption = 'include profit from every day'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 15066597
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          Width = 161
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Week'
        ImageIndex = 1
        ExplicitHeight = 56
        object cxLabel3: TcxLabel
          Left = 15
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit4: TcxSpinEdit
          Left = 99
          Top = 5
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 4.500000000000000000
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 226
          Top = 6
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 15
          Top = 33
          Caption = 'park for'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit5: TcxSpinEdit
          Left = 99
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 52
          Width = 69
        end
        object cxLabel8: TcxLabel
          Left = 174
          Top = 33
          Caption = 'week(s)'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxCheckBox3: TcxCheckBox
          Left = 15
          Top = 59
          Caption = 'include profit from every day'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 15066597
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          Width = 161
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Month'
        ImageIndex = 2
        ExplicitHeight = 56
        object cxLabel7: TcxLabel
          Left = 15
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit6: TcxSpinEdit
          Left = 99
          Top = 5
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 13.900000000000000000
          Width = 121
        end
        object cxLabel22: TcxLabel
          Left = 226
          Top = 6
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 15
          Top = 33
          Caption = 'park for'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit7: TcxSpinEdit
          Left = 99
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 12
          Width = 69
        end
        object cxLabel18: TcxLabel
          Left = 174
          Top = 33
          Caption = 'month(s)'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxCheckBox4: TcxCheckBox
          Left = 15
          Top = 59
          Caption = 'include profit from every day'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 15066597
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          Width = 161
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Year'
        ImageIndex = 3
        ExplicitHeight = 56
        object cxLabel24: TcxLabel
          Left = 15
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit8: TcxSpinEdit
          Left = 99
          Top = 5
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 70.000000000000000000
          Width = 121
        end
        object cxLabel26: TcxLabel
          Left = 226
          Top = 6
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel23: TcxLabel
          Left = 15
          Top = 33
          Caption = 'park for'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit9: TcxSpinEdit
          Left = 99
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 1
          Width = 69
        end
        object cxLabel25: TcxLabel
          Left = 174
          Top = 33
          Caption = 'year(s)'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxCheckBox5: TcxCheckBox
          Left = 15
          Top = 59
          Caption = 'include profit from every day'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 15066597
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          Width = 161
        end
      end
    end
    object cxLabel31: TcxLabel
      Left = 10
      Top = 17
      Caption = 'parking amount'
      Style.TextColor = clLime
      Transparent = True
    end
    object cxSpinEdit12: TcxSpinEdit
      Left = 94
      Top = 16
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      TabOrder = 2
      Value = 12.500000000000000000
      Width = 135
    end
    object cxLabel32: TcxLabel
      Left = 235
      Top = 17
      Caption = 'MNX'
      Style.TextColor = clLime
      Transparent = True
    end
  end
  object cxButton4: TcxButton
    Left = 276
    Top = 272
    Width = 136
    Height = 25
    Caption = 'Info'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000000E744558745469746C650044657461696C733B3496FF4C
      000002F449444154785E85916B485C471886DF397BCE5E5C77D7B58B26BA22BA
      66AB62A80A26AD622F1416FC51AC480225816090FE28810453213590B63F4A9B
      42A084D236A50905A56D6809FD2185B4A5604C40E996129BE83146E325D9B866
      E32D7B3D67CE7C9DD5B6F447C0071E9819785FF8E66344847F89847D304CD1C9
      B9D5679AA2D9E42226EFEFDEDEB42E93044F41C1FF300D51EBD0D4EFEAF754BC
      D8D2182A7CAEBE22ACA9B6A13A8FFA5EA840F5EE58C085782B50EC7372CBC2E4
      F42226A61EA0B921AC084E67982506762EE014640AB0BC2610E93E8C0B839FE0
      D01B1156ECD612DCA2861D0B0C6E4DCCCE3FA26F7F1DC5DBA78E221C24B89C69
      B4853C76021EEF58B0B0C92F9597FA4D5555616ECE22B9B60ACBC8C232393604
      CEE36910D17F4AFCEF1F6889EA233F5222FA19DDBA729C864EBE4C5DD5EE0900
      6DD23A6995342075489902C9D0813230C654009E743239A38F0E439F5CC6ED3F
      74FC36BE824977A4B4B2F5F495EA573EFE2BB8AF7FA4A4E1C8796F596BBED0C5
      B08DA336600F1F6DF25EA8A92C79E166DC8D42470E532B0CE3C6F3A0F2D7A0B8
      76A1B5713746C674E4D666905A1EBB9159D5DF81446D2977365DEC0E26A2E70E
      D2C2F7FD74EAF55769F8F33E8A74F4527DF73035BDB9443D676394A7E7833B14
      EABE46656D67A9A8BAF34B06C077FAA5673E8DB4371FAEDCBB17D9F80C6E4EAD
      E0975B695CA70E685507C1343FB899C5FE5A0DA37FC6C18D2CCC278B482F5DD5
      15009E92425B7B717910E67A0C3C99C0B3BB0991460EAE0500CDBB153ED6E5C7
      A5813D5B618BE740B64210A39002C0E9B12BBB0A7C3EF0D42A48612026605701
      B7B80F63734906B238F7CD1C24F9F3963C1D836566A795ED57421E6164FE5929
      43819DA1C635B7F561DC48E184DC549E93876A20CCFC08F3103CF3B30A603DFA
      303768FBE1722F178020808390330482990CE69236C4B31BF8F08B003EFAEA77
      98A987327C4F8EABFF24CC275F3300AAD42F2D913AB10D932A5287C35B55E728
      AAE950344F23981AB4CCD45DC1B357054F5ECCC4C727FF063F187055CFC115E1
      0000000049454E44AE426082}
    TabOrder = 5
    OnClick = cxButton4Click
  end
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 47
    Margins.Top = 0
    Align = alTop
    Caption = '[livecoin.net] price for 1 MNX (update: 15.12.2017)'
    TabOrder = 6
    ExplicitTop = 44
    Height = 86
    Width = 414
    object cxPageControl2: TcxPageControl
      Left = 3
      Top = 15
      Width = 408
      Height = 61
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet5
      Properties.CustomButtons.Buttons = <>
      ExplicitHeight = 63
      ClientRectBottom = 59
      ClientRectLeft = 2
      ClientRectRight = 406
      ClientRectTop = 26
      object cxTabSheet5: TcxTabSheet
        Caption = 'USD'
        ImageIndex = 0
        ExplicitWidth = 285
        ExplicitHeight = 165
        object cxLabel1: TcxLabel
          Left = 7
          Top = 7
          Caption = 'ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_USDASK: TcxSpinEdit
          Left = 40
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 31.000000000000000000
          Width = 157
        end
        object cxLabel21: TcxLabel
          Left = 210
          Top = 7
          Caption = 'bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cxSpinEdit_USDBID: TcxSpinEdit
          Left = 240
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Visible = False
          Width = 157
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'BTC'
        ImageIndex = 1
        ExplicitWidth = 285
        ExplicitHeight = 165
        object cxLabel27: TcxLabel
          Left = 7
          Top = 7
          Caption = 'ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_BTCASK: TcxSpinEdit
          Left = 40
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 0.001831120000000000
          Width = 157
        end
        object cxLabel28: TcxLabel
          Left = 210
          Top = 7
          Caption = 'bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cxSpinEdit_BTCBID: TcxSpinEdit
          Left = 240
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Visible = False
          Width = 157
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'ETH'
        ImageIndex = 2
        ExplicitWidth = 285
        ExplicitHeight = 165
        object cxLabel29: TcxLabel
          Left = 7
          Top = 7
          Caption = 'ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_ETHASK: TcxSpinEdit
          Left = 40
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 0.033806140000000000
          Width = 157
        end
        object cxLabel30: TcxLabel
          Left = 210
          Top = 7
          Caption = 'bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cxSpinEdit_ETHBID: TcxSpinEdit
          Left = 240
          Top = 6
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Visible = False
          Width = 157
        end
      end
    end
  end
  object cxButton5: TcxButton
    Left = 276
    Top = 241
    Width = 136
    Height = 25
    Caption = 'Settings'
    Enabled = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C00000027744558745469746C650043616C63756C6174696F6E3B
      43616C63756C6174696F6E733B4F7074696F6E733BE8BCAA3F00000291494441
      54785E8D905B48944D1CC69F79DF773D9B12465AA0B05A885DA41DD03271F390
      B56B0479E8888A7911E245825044615D44878BA4C2BE8F8850A91B89B288C490
      EC206490DBAEAD6626A950B2D2A27B5ED7D599DC996D1349E80F03CF0CCFFCF8
      CD90BB0F3FF64892A4C13F0CA5F4554D69463E638C2230CA94D9A6A9AFD92576
      8C818900060204B218826BFFBDD6009000FC0150CAE0079EEB322FA9537F08B6
      E80270B1301E8C31415A320A63E2528844B14D1D8B3095044204883260D63B8F
      BEAF56EE440500CB0082303E69476C84122CF12EB76098F86103B00EF8BB01E5
      06CD47360837C113BD400ACF4DE0FBDD3B937169B901A502DCF16204738BBAE5
      FBD3F0B87384934AB4A91CE3B0D9D16718C7DBF783686EE9F61242624E35B6D8
      FDF60A03E5659BD50D16509FB1BB90961C07A7C38549F334DC1E377A172F5796
      6B70A7B50B15B5970F785C6EA7D7EB32884F644045693A4044AE2ACB40649882
      DB2DCF204B122CD30E94E83291B43E0E078B77A0FB8DA12D6E75343E7D1EEB94
      28A5FCB71F3C35E15EBB81DBDCEF30413F68464A5202E6E67CA83BA183D1388C
      C3558D300E0CA3FA6821AC335658CC53BDDC006098B17A209E4316B3133EDF3C
      54A1D118FA32C121EFFA47A0D5E6A15F6F82766F363EE887169EB75FBDAE50C6
      B8766DC5760022D7556622325C85474F7AA04E5C0B59969093BD05A6E109EC29
      C8824A9691BA512D93B2D3F5CAE8E8F8CB930D6D795488042139592918301AE1
      7FEBD90BFFA3A8281BD5C70A30F6ED3BCE9CBF85E85551B0587E6A0880100032
      775F369BB6EAD4111131E994B19835F189572A8FEBA26EDC6C75CEBA1D0D8CC0
      EAF3B8F4608CADB80250094048EEBEBAA6FCE27AB639EB501380D0C03921BCB8
      C2104282915B8A4501CCFF7EF02F466A4CBA6EFDCB5A0000000049454E44AE42
      6082}
    TabOrder = 7
    OnClick = cxButton5Click
  end
  object cxGroupBox5: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 297
    Align = alBottom
    Caption = 'results'
    TabOrder = 8
    ExplicitTop = 274
    Height = 138
    Width = 414
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 408
      Height = 113
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 60
      ExplicitTop = 22
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1TableView1: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.Data = {
          1D0100000F00000044617461436F6E74726F6C6C657231070000001200000054
          6378537472696E6756616C75655479706512000000546378537472696E675661
          6C75655479706512000000546378537472696E6756616C756554797065120000
          00546378537472696E6756616C75655479706512000000546378537472696E67
          56616C75655479706512000000546378537472696E6756616C75655479706512
          000000546378537472696E6756616C75655479706504000000445855464D5400
          00040000005900650061007200010101010101445855464D540000050000004D
          006F006E0074006800010101010101445855464D540000040000005700650065
          006B00010101010101445855464D540000030000004400610079000101010101
          01}
        OptionsView.GroupByBox = False
        object cxGrid1TableView1Column1: TcxGridColumn
          MinWidth = 45
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 45
        end
        object cxGrid1TableView1Column7: TcxGridColumn
          Caption = 'count'
          MinWidth = 43
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Width = 43
        end
        object cxGrid1TableView1Column3: TcxGridColumn
          Caption = 'MNX total'
          Options.Filtering = False
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView1Column2: TcxGridColumn
          Caption = 'MNX profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 101
        end
        object cxGrid1TableView1Column4: TcxGridColumn
          Caption = 'USD profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 119
        end
        object cxGrid1TableView1Column5: TcxGridColumn
          Caption = 'BTC profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 114
        end
        object cxGrid1TableView1Column6: TcxGridColumn
          Caption = 'ETH profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 135
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2016Dark'
    Left = 261
    Top = 65532
  end
  object SslHttpCli1: TSslHttpCli
    URL = 'http://minexbank.com/api/finance/parking/type?page=1'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    ProxyPort = '80'
    Agent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Fire' +
      'fox/57.0'
    Accept = 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*'
    AcceptLanguage = 'en'
    Connection = 'Keep-Alive'
    NoCache = False
    ContentTypePost = 'application/x-www-form-urlencoded'
    RequestVer = '1.0'
    FollowRelocation = True
    LocationChangeMaxCount = 5
    ServerAuth = httpAuthNone
    ProxyAuth = httpAuthNone
    BandwidthLimit = 10000
    BandwidthSampling = 1000
    Options = []
    Timeout = 30
    SocksAuthentication = socksNoAuthentication
    SocketFamily = sfIPv4
    SocketErrs = wsErrTech
    SslContext = SslContext1
    Left = 313
    Top = 3
  end
  object SslContext1: TSslContext
    SslDHParamLines.Strings = (
      '-----BEGIN DH PARAMETERS-----'
      'MIIBCAKCAQEA5lgSzWKPV8ZthosYUuPWuawgmUFfSyR/1srizVn7tXNPYE10Pz/t'
      'z1i0f1JppaoBBdFQMQnVlTrZjEIinavAZwLH9HRbmjvglO0gNL46NpgzgcXQbKbn'
      'jZs4BSFF9LbhP4VvvIIKI7lR/yQFNw5GtKtV+Pi/tZ5dCaRvALadAtzAXOmEadv0'
      'KNZXc7hONXf9kyRmtwr6C5AdeIH50enVBss6zRwwGi3fW7e5D6z3FvUrHzD9fot+'
      'y89hX5iXD/v3BurTkN3rG12JoTypQ3W1VD1lEfRrJm8rbvQTqO0RCSgxc2KwIULb'
      '3ONsf1ln/Lb+UuRiUpGeb4GQqPDkn7XW8wIBAg=='
      '-----END DH PARAMETERS-----')
    SslVerifyPeer = False
    SslVerifyDepth = 9
    SslVerifyFlags = []
    SslCheckHostFlags = []
    SslSecLevel = sslSecLevel80bits
    SslOptions = [sslOpt_MICROSOFT_SESS_ID_BUG, sslOpt_NETSCAPE_CHALLENGE_BUG, sslOpt_NETSCAPE_REUSE_CIPHER_CHANGE_BUG, sslOpt_MICROSOFT_BIG_SSLV3_BUFFER, sslOpt_SSLEAY_080_CLIENT_DH_BUG, sslOpt_TLS_D5_BUG, sslOpt_TLS_BLOCK_PADDING_BUG, sslOpt_TLS_ROLLBACK_BUG, sslOpt_NO_SSLv2, sslOpt_NO_SSLv3, sslOpt_NETSCAPE_CA_DN_BUG, sslOpt_NETSCAPE_DEMO_CIPHER_CHANGE_BUG]
    SslOptions2 = [sslOpt2_NO_RENEGOTIATION, sslOpt2_NO_COMPRESSION, sslOpt2_NO_TICKET, sslOpt2_TLS_ROLLBACK_BUG, sslOpt2_DONT_INSERT_EMPTY_FRAGMENTS, sslOpt2_ALLOW_UNSAFE_LEGACY_RENEGOTIATION, sslOpt2_TLSEXT_PADDING, sslOpt2_SAFARI_ECDHE_ECDSA_BUG, sslOpt2_CISCO_ANYCONNECT, SslOpt2_LEGACY_SERVER_CONNECT, SslOpt2_ALLOW_NO_DHE_KEX]
    SslVerifyPeerModes = [SslVerifyMode_PEER]
    SslSessionCacheModes = [sslSESS_CACHE_CLIENT, sslSESS_CACHE_NO_INTERNAL_LOOKUP, sslSESS_CACHE_NO_INTERNAL_STORE]
    SslCipherList = 'ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH'
    SslVersionMethod = sslBestVer_CLIENT
    SslMinVersion = sslVerSSL3
    SslMaxVersion = sslVerMax
    SslECDHMethod = sslECDHAuto
    SslCryptoGroups = 'P-256:P-384:P-512'
    SslSessionTimeout = 300
    SslSessionCacheSize = 20480
    AutoEnableBuiltinEngines = False
    Left = 376
    Top = 1
  end
end
