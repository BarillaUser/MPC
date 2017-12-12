object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Minexbank Profit Calculator v0.1'
  ClientHeight = 255
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
    Left = 284
    Top = 123
    Width = 125
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
    Top = 235
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
  end
  object cxButton2: TcxButton
    Left = 284
    Top = 92
    Width = 125
    Height = 25
    Caption = 'Update rates'
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
    Left = 6
    Top = 8
    Caption = 'bank rates (update: 20.12.2017)'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Height = 44
    Width = 403
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
    Left = 6
    Top = 52
    Caption = 'parking round'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 109
    Width = 267
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 15
      Width = 261
      Height = 84
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      OnChange = cxPageControl1Change
      ClientRectBottom = 82
      ClientRectLeft = 2
      ClientRectRight = 259
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Day'
        ImageIndex = 0
        object cxLabel17: TcxLabel
          Left = 9
          Top = 4
          Caption = 'parking amount'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 93
          Top = 3
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Value = 12.500000000000000000
          Width = 121
        end
        object cxLabel18: TcxLabel
          Left = 220
          Top = 4
          Caption = 'MNX'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 220
          Top = 31
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 93
          Top = 30
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 4
          Value = 0.590000000000000000
          Width = 121
        end
        object cxLabel20: TcxLabel
          Left = 9
          Top = 31
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Week'
        ImageIndex = 1
        object cxLabel2: TcxLabel
          Left = 9
          Top = 4
          Caption = 'parking amount'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 9
          Top = 31
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit4: TcxSpinEdit
          Left = 93
          Top = 30
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Value = 4.500000000000000000
          Width = 121
        end
        object cxSpinEdit5: TcxSpinEdit
          Left = 93
          Top = 3
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 220
          Top = 4
          Caption = 'MNX'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 220
          Top = 31
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Month'
        ImageIndex = 2
        object cxLabel6: TcxLabel
          Left = 9
          Top = 4
          Caption = 'parking amount'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 9
          Top = 31
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit6: TcxSpinEdit
          Left = 93
          Top = 30
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Value = 13.900000000000000000
          Width = 121
        end
        object cxSpinEdit7: TcxSpinEdit
          Left = 93
          Top = 3
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 220
          Top = 4
          Caption = 'MNX'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel22: TcxLabel
          Left = 220
          Top = 31
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Year'
        ImageIndex = 3
        object cxLabel23: TcxLabel
          Left = 9
          Top = 4
          Caption = 'parking amount'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel24: TcxLabel
          Left = 9
          Top = 31
          Caption = 'parking rate'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxSpinEdit8: TcxSpinEdit
          Left = 93
          Top = 30
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Value = 70.000000000000000000
          Width = 121
        end
        object cxSpinEdit9: TcxSpinEdit
          Left = 93
          Top = 3
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Value = 12.500000000000000000
          Width = 121
        end
        object cxLabel25: TcxLabel
          Left = 220
          Top = 4
          Caption = 'MNX'
          Style.TextColor = clLime
          Transparent = True
        end
        object cxLabel26: TcxLabel
          Left = 220
          Top = 31
          Caption = '%'
          Style.TextColor = clLime
          Transparent = True
        end
      end
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 6
    Top = 161
    Caption = 'calc settings'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 69
    Width = 267
    object cxLabel21: TcxLabel
      Left = 10
      Top = 18
      Caption = 'calc for'
      Style.TextColor = 15066597
      Transparent = True
    end
    object cxSpinEdit3: TcxSpinEdit
      Left = 57
      Top = 17
      Properties.MinValue = 1.000000000000000000
      Properties.ValueType = vtInt
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Value = 3
      Width = 69
    end
    object cxCheckBox1: TcxCheckBox
      Left = 10
      Top = 41
      Caption = 'include profit from every round'
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 15066597
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Transparent = True
      Width = 171
    end
    object cxLabel1: TcxLabel
      Left = 132
      Top = 18
      Caption = 'round(s) = day(s)'
      Style.TextColor = 15066597
      Transparent = True
    end
  end
  object cxButton3: TcxButton
    Left = 284
    Top = 154
    Width = 125
    Height = 25
    Caption = 'View detailed result'
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000000E744558745469746C65004C697374426F783B0357E96A
      0000018E49444154785E7D52BD4A0341109E4DA258F82242109B44B03168A388
      58042120162156561AD427B0129F40D1222068A18520D828DA5AA8A04F72C118
      DDDB19776677E3925C32DCCECF31F3CDB7335B2022504AE54EAFDE1E544E5580
      85F8634B6CE50445A00075FABCBD595A24225300272AF9D29566BD14EAC13B99
      727CF632CF35EC07003086B821202BF9A8D799E8DF1F1FCBDB5C847E00658C81
      20E737EF805C6815A2834A920EEC36E604CCE020001894DB4A516DA518B1573D
      468C4A79080CA08F0102F9C4CBBBCF4C063BF559C93169160383D215D1C0FA52
      314C9CAD67C160E8AF3082015A7B71FB110D94844DD2FE8666BD0C04A3181009
      83DAEAB4BB772000CA6D85527B86CC0019C00FB365B7E09A93585649BB037B8D
      B26F92C98037E066B0B13613BA7BE502A25F4092DC0100952202FA35B6AE5FC3
      E3E1586CDB32D8DF2A010E1922A01BA248A33A05CA0D5E6C2C8490FD901049D0
      C726265D224545F12AF9643040FDD37D3C38BC5F90C218A16F131C68DD7DB24E
      1A03E893A3EAB28F150C4AFC8F7CB1E6E00F942D47B1285CD8E9000000004945
      4E44AE426082}
    TabOrder = 6
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 284
    Top = 203
    Width = 125
    Height = 25
    Caption = 'About'
    LookAndFeel.NativeStyle = False
    TabOrder = 7
    OnClick = cxButton4Click
  end
  object cxComboBox1: TcxComboBox
    Left = 284
    Top = 58
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'English'
      'Russian')
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 8
    Text = 'English'
    Width = 125
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2016Dark'
    Left = 240
    Top = 152
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
    Left = 218
    Top = 71
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
    Left = 197
    Top = 79
  end
end
