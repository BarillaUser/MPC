object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Minexbank Profit Calculator v0.3'
  ClientHeight = 569
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxBevel1: TdxBevel
    Left = 0
    Top = 26
    Width = 648
    Height = 1
    Align = alTop
    Shape = dxbsLineBottom
    ExplicitWidth = 424
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 549
    Width = 648
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container0
        Text = 'abort'
        Width = 70
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 2
        Text = '0%'
        Width = 50
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        Text = 'pleas wait, processing done: 45% '
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ExplicitTop = 610
    object dxStatusBar1Container0: TdxStatusBarContainerControl
      Left = 3
      Top = 2
      Width = 68
      Height = 15
      object cxButton1: TcxButton
        Left = 0
        Top = 0
        Width = 68
        Height = 15
        Align = alClient
        Caption = 'abort'
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
  end
  object cxGroupBox5: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 427
    Margins.Top = 0
    Align = alBottom
    Caption = 'results'
    Style.TextStyle = [fsBold]
    TabOrder = 0
    ExplicitTop = 488
    Height = 119
    Width = 642
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 636
      Height = 94
      Align = alClient
      TabOrder = 0
      object cxGrid1TableView1: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = cxGrid1TableView1CanFocusRecord
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
          0003000000440061007900010101010101445855464D54000004000000570065
          0065006B00010101010101445855464D540000050000004D006F006E00740068
          00010101010101445855464D5400000400000059006500610072000101010101
          01}
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle5
        object cxGrid1TableView1Column1: TcxGridColumn
          Caption = 'period'
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 50
        end
        object cxGrid1TableView1Column7: TcxGridColumn
          Caption = 'count'
          MinWidth = 50
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 50
        end
        object cxGrid1TableView1Column3: TcxGridColumn
          Caption = 'MNX total'
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle4
          Width = 105
        end
        object cxGrid1TableView1Column2: TcxGridColumn
          Caption = 'MNX profit'
          Options.Filtering = False
          Options.Sorting = False
          Styles.Content = cxStyle4
          Width = 105
        end
        object cxGrid1TableView1Column4: TcxGridColumn
          Caption = 'USD profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView1Column5: TcxGridColumn
          Caption = 'BTC profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView1Column6: TcxGridColumn
          Caption = 'ETH profit'
          Options.Filtering = False
          Options.Sorting = False
          Width = 105
        end
      end
      object cxGrid1TableView2: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = cxGrid1TableView2CanFocusRecord
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
          0003000000440061007900010101010101445855464D54000004000000570065
          0065006B00010101010101445855464D540000050000004D006F006E00740068
          00010101010101445855464D5400000400000059006500610072000101010101
          01}
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle5
        object cxGrid1TableView2Column1: TcxGridColumn
          Caption = 'period'
          Options.Sorting = False
          Width = 50
        end
        object cxGrid1TableView2Column2: TcxGridColumn
          Caption = 'count'
          Options.Sorting = False
          Width = 50
        end
        object cxGrid1TableView2Column3: TcxGridColumn
          Caption = 'MNX deposit need'
          Options.Sorting = False
          Styles.Content = cxStyle4
          Width = 118
        end
        object cxGrid1TableView2Column4: TcxGridColumn
          Caption = 'MNX period profit'
          Options.Sorting = False
          Styles.Content = cxStyle4
          Width = 105
        end
        object cxGrid1TableView2Column6: TcxGridColumn
          Caption = 'USD deposit need'
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView2Column7: TcxGridColumn
          Caption = 'BTC deposit need'
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView2Column8: TcxGridColumn
          Caption = 'ETH deposit need'
          Options.Sorting = False
          Width = 105
        end
      end
      object cxGrid1TableView3: TcxGridTableView
        PopupMenu = dxBarPopupMenu1
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = cxGrid1TableView3CanFocusRecord
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
          0003000000440061007900010101010101445855464D54000004000000570065
          0065006B00010101010101445855464D540000050000004D006F006E00740068
          00010101010101445855464D5400000400000059006500610072000101010101
          01}
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle5
        object cxGrid1TableView3Column1: TcxGridColumn
          Caption = 'period'
          Options.Sorting = False
          Width = 50
        end
        object cxGrid1TableView3Column2: TcxGridColumn
          Caption = 'count'
          Options.Sorting = False
          Styles.Content = cxStyle7
          Width = 50
        end
        object cxGrid1TableView3Column3: TcxGridColumn
          Caption = 'MNX total'
          Options.Sorting = False
          Styles.Content = cxStyle8
          Width = 105
        end
        object cxGrid1TableView3Column4: TcxGridColumn
          Caption = 'MNX profit'
          Options.Sorting = False
          Styles.Content = cxStyle8
          Width = 105
        end
        object cxGrid1TableView3Column6: TcxGridColumn
          Caption = 'USD profit'
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView3Column7: TcxGridColumn
          Caption = 'BTC profit'
          Options.Sorting = False
          Width = 105
        end
        object cxGrid1TableView3Column8: TcxGridColumn
          Caption = 'ETH profit'
          Options.Sorting = False
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
  end
  object dxCheckGroupBox1: TdxCheckGroupBox
    Tag = 27
    AlignWithMargins = True
    Left = 3
    Top = 27
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = '[minexbank.com] rates (update: 15.12.2017)'
    CheckBox.CheckAction = cbaNone
    Properties.OnEditValueChanged = dxCheckGroupBox1PropertiesEditValueChanged
    Style.TextColor = clSilver
    Style.TextStyle = [fsBold]
    TabOrder = 2
    Height = 47
    Width = 642
    object cxLabel10: TcxLabel
      Tag = 1
      AlignWithMargins = True
      Left = 87
      Top = 17
      Margins.Top = 0
      Align = alLeft
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
      AlignWithMargins = True
      Left = 170
      Top = 17
      Margins.Top = 0
      Align = alLeft
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
      AlignWithMargins = True
      Left = 267
      Top = 17
      Margins.Top = 0
      Align = alLeft
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
      AlignWithMargins = True
      Left = 40
      Top = 17
      Margins.Top = 0
      Align = alLeft
      Caption = '0,59%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16752029
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel14: TcxLabel
      Tag = 1
      AlignWithMargins = True
      Left = 130
      Top = 17
      Margins.Top = 0
      Align = alLeft
      Caption = '4,5%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16752029
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel15: TcxLabel
      Tag = 2
      AlignWithMargins = True
      Left = 220
      Top = 17
      Margins.Top = 0
      Align = alLeft
      Caption = '14,9%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16752029
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel16: TcxLabel
      Tag = 3
      AlignWithMargins = True
      Left = 306
      Top = 17
      Margins.Top = 0
      Align = alLeft
      Caption = '70%'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 16752029
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxLabel13Click
    end
    object cxLabel9: TcxLabel
      AlignWithMargins = True
      Left = 6
      Top = 17
      Margins.Top = 0
      Align = alLeft
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
  object dxCheckGroupBox2: TdxCheckGroupBox
    Tag = 25
    AlignWithMargins = True
    Left = 3
    Top = 160
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alClient
    Caption = 'mnx addresses'
    CheckBox.CheckAction = cbaNone
    Properties.OnEditValueChanged = dxCheckGroupBox2PropertiesEditValueChanged
    Style.TextColor = clSilver
    Style.TextStyle = [fsBold]
    TabOrder = 3
    ExplicitHeight = 163
    Height = 102
    Width = 642
    object cxGrid2: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 20
      Width = 636
      Height = 48
      Margins.Left = 0
      Margins.Right = 0
      Align = alClient
      BorderStyle = cxcbsNone
      PopupMenu = dxBarPopupMenu1
      TabOrder = 0
      ExplicitHeight = 109
      object cxGrid2TableView1: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = cxGrid2TableView1CanFocusRecord
        OnCanSelectRecord = cxGrid2TableView1CanSelectRecord
        OnCellDblClick = cxGrid2TableView1CellDblClick
        OnSelectionChanged = cxGrid2TableView1SelectionChanged
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnFilterRecord = cxGrid2TableView1DataControllerFilterRecord
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsData.Editing = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle5
        object cxGrid2TableView1Column1: TcxGridColumn
          Caption = '#'
          MinWidth = 33
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 33
        end
        object cxGrid2TableView1Column2: TcxGridColumn
          Caption = 'mnx address'
          Options.Sorting = False
          Styles.Content = cxStyle3
          Width = 214
        end
        object cxGrid2TableView1Column3: TcxGridColumn
          Caption = 'mnx balance'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = cxGrid2TableView1Column3PropertiesEditValueChanged
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 123
        end
        object cxGrid2TableView1Column4: TcxGridColumn
          Caption = 'label'
          Options.Sorting = False
          Width = 103
        end
        object cxGrid2TableView1Column7: TcxGridColumn
          Caption = 'Visible'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueGrayed = 'False'
          Visible = False
          Options.Sorting = False
        end
        object cxGrid2TableView1Column8: TcxGridColumn
          Caption = 'Update'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueGrayed = 'False'
          Visible = False
          Options.Sorting = False
        end
        object cxGrid2TableView1Column5: TcxGridColumn
          Caption = 'last update'
          MinWidth = 120
          Options.Editing = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 120
        end
        object cxGrid2TableView1Column6: TcxGridColumn
          Caption = 'status'
          Visible = False
          Options.Editing = False
          Options.Sorting = False
          Width = 163
        end
        object cxGrid2TableView1Column9: TcxGridColumn
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImageAlign = iaRight
          Properties.Images = cxImageList2
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              ImageIndex = 12
              Value = '0'
            end
            item
              ImageIndex = 13
              Value = '1'
            end>
          MinWidth = 24
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 24
          IsCaptionAssigned = True
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2TableView1
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 71
      Align = alBottom
      PanelStyle.Active = True
      Style.Edges = []
      TabOrder = 1
      ExplicitTop = 132
      Height = 21
      Width = 636
      object cxLabel34: TcxLabel
        AlignWithMargins = True
        Left = 1
        Top = 1
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'total: '
        Style.TextColor = 15066597
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxButtonEdit_TotalWalletMNXFrom: TcxButtonEdit
        Left = 38
        Top = 1
        Align = alClient
        ParentFont = False
        Properties.Buttons = <
          item
            Caption = 'place to existing amount'
            Default = True
            Kind = bkText
          end>
        Properties.HideSelection = False
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxButtonEdit_TotalWalletMNXFromPropertiesButtonClick
        Style.Color = 6908265
        Style.Edges = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 14992530
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Text = '123,345'
        Width = 597
      end
    end
  end
  object dxCheckGroupBox3: TdxCheckGroupBox
    Tag = 27
    AlignWithMargins = True
    Left = 3
    Top = 74
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = '[livecoin.net] price for 1 MNX (update: 15.12.2017)'
    CheckBox.CheckAction = cbaNone
    Properties.OnEditValueChanged = dxCheckGroupBox3PropertiesEditValueChanged
    Style.TextColor = clSilver
    Style.TextStyle = [fsBold]
    TabOrder = 4
    Height = 86
    Width = 642
    object cxPageControl2: TcxPageControl
      Left = 3
      Top = 17
      Width = 636
      Height = 59
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet5
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 57
      ClientRectLeft = 2
      ClientRectRight = 634
      ClientRectTop = 26
      object cxTabSheet5: TcxTabSheet
        Caption = 'MNX / USD'
        ImageIndex = 0
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 25
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_USDASK: TcxSpinEdit
          Tag = 11
          AlignWithMargins = True
          Left = 83
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 31.000000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxLabel21: TcxLabel
          AlignWithMargins = True
          Left = 268
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_USDBID: TcxSpinEdit
          Tag = 12
          AlignWithMargins = True
          Left = 323
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 3
          Value = 12.500000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxRadioButton_USDASK: TcxRadioButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          TabStop = True
          Transparent = True
        end
        object cxRadioButton_USDBID: TcxRadioButton
          AlignWithMargins = True
          Left = 246
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Transparent = True
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'MNX / BTC'
        ImageIndex = 1
        object cxLabel27: TcxLabel
          AlignWithMargins = True
          Left = 25
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_BTCASK: TcxSpinEdit
          Tag = 13
          AlignWithMargins = True
          Left = 83
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.001831120000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxLabel28: TcxLabel
          AlignWithMargins = True
          Left = 268
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_BTCBID: TcxSpinEdit
          Tag = 14
          AlignWithMargins = True
          Left = 323
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 3
          Value = 12.500000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxRadioButton_BTCBID: TcxRadioButton
          AlignWithMargins = True
          Left = 246
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Transparent = True
        end
        object cxRadioButton_BTCASK: TcxRadioButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          TabStop = True
          Transparent = True
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'MNX / ETH'
        ImageIndex = 2
        object cxLabel29: TcxLabel
          AlignWithMargins = True
          Left = 25
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best ask:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_ETHASK: TcxSpinEdit
          Tag = 15
          AlignWithMargins = True
          Left = 83
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.033806140000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxLabel30: TcxLabel
          AlignWithMargins = True
          Left = 268
          Top = 6
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Align = alLeft
          Caption = 'best bid:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 15066597
          Style.TextStyle = [fsBold, fsUnderline]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxSpinEdit_ETHBID: TcxSpinEdit
          Tag = 16
          AlignWithMargins = True
          Left = 323
          Top = 5
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 3
          Value = 12.500000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 157
        end
        object cxRadioButton_ETHBID: TcxRadioButton
          AlignWithMargins = True
          Left = 246
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Transparent = True
        end
        object cxRadioButton_ETHASK: TcxRadioButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 22
          Height = 25
          Margins.Right = 0
          Align = alLeft
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15066597
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          TabStop = True
          Transparent = True
        end
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 262
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'calculation'
    Style.LookAndFeel.NativeStyle = False
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 9
    ExplicitTop = 323
    Height = 165
    Width = 642
    object cxPageControl1: TcxPageControl
      Tag = 4
      Left = 9
      Top = 43
      Width = 359
      Height = 108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.Rotate = True
      Properties.TabPosition = tpLeft
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 106
      ClientRectLeft = 56
      ClientRectRight = 357
      ClientRectTop = 2
      object cxTabSheet1: TcxTabSheet
        Caption = 'Day'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 0
        ParentFont = False
        object cxLabel19: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxSpinEdit0_daybankrate: TcxSpinEdit
          Tag = 1
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.590000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel20: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 7
          Top = 33
          Caption = 'park for'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_dailyparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 7
          Width = 113
        end
        object cxLabel4: TcxLabel
          Left = 231
          Top = 33
          Caption = 'day(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox0_dayincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Week'
        ImageIndex = 1
        object cxLabel3: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_weekbankrate: TcxSpinEdit
          Tag = 2
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 4.500000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel5: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 7
          Top = 33
          Caption = 'park for'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_weeklyparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 52
          Width = 113
        end
        object cxLabel8: TcxLabel
          Left = 231
          Top = 33
          Caption = 'week(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox0_weekincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Month'
        ImageIndex = 2
        object cxLabel7: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_monthbankrate: TcxSpinEdit
          Tag = 3
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 13.900000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel22: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 7
          Top = 33
          Caption = 'park for'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_monthlyparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 12
          Width = 113
        end
        object cxLabel18: TcxLabel
          Left = 231
          Top = 33
          Caption = 'month(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox0_monthincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Year'
        ImageIndex = 3
        object cxLabel24: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_yearbankrate: TcxSpinEdit
          Tag = 4
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 70.000000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel26: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxLabel23: TcxLabel
          Left = 7
          Top = 33
          Caption = 'park for'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit0_yearlyparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 1
          Width = 113
        end
        object cxLabel25: TcxLabel
          Left = 231
          Top = 33
          Caption = 'year(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox0_yearincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet8: TcxTabSheet
        Tag = 1
        Caption = 'Day'
        ImageIndex = 4
        object cxLabel37: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit1_daybankrate: TcxSpinEdit
          Tag = 5
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.590000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel38: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxLabel47: TcxLabel
          Left = 7
          Top = 33
          Caption = 'max parks'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit1_dayparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 7
          Width = 113
        end
        object cxLabel48: TcxLabel
          Left = 231
          Top = 33
          Caption = 'day(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox1_dayincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet9: TcxTabSheet
        Tag = 1
        Caption = 'Week'
        ImageIndex = 5
        object cxLabel39: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxSpinEdit1_weekbankrate: TcxSpinEdit
          Tag = 6
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.590000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel40: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxLabel51: TcxLabel
          Left = 7
          Top = 33
          Caption = 'max parks'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit1_weekparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 52
          Width = 113
        end
        object cxLabel52: TcxLabel
          Left = 231
          Top = 33
          Caption = 'week(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox1_weekincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet10: TcxTabSheet
        Tag = 1
        Caption = 'Month'
        ImageIndex = 6
        object cxLabel41: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxSpinEdit1_monthbankrate: TcxSpinEdit
          Tag = 7
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.590000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel42: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxLabel49: TcxLabel
          Left = 7
          Top = 33
          Caption = 'max parks'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit1_monthparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 12
          Width = 113
        end
        object cxLabel50: TcxLabel
          Left = 231
          Top = 33
          Caption = 'month(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox1_monthincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
      object cxTabSheet11: TcxTabSheet
        Tag = 1
        Caption = 'Year'
        ImageIndex = 7
        object cxLabel43: TcxLabel
          Left = 231
          Top = 6
          Caption = '%'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxSpinEdit1_yearbankrate: TcxSpinEdit
          Tag = 8
          Left = 112
          Top = 5
          PopupMenu = dxBarPopupMenu2
          Properties.AssignedValues.MinValue = True
          Properties.ValueType = vtFloat
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Value = 0.590000000000000000
          OnContextPopup = OnContextPopupDoTag
          Width = 113
        end
        object cxLabel44: TcxLabel
          Left = 7
          Top = 6
          Caption = 'parking rate'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxLabel45: TcxLabel
          Left = 7
          Top = 33
          Caption = 'max parks'
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxSpinEdit1_yearparkcount: TcxSpinEdit
          Left = 112
          Top = 32
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Style.LookAndFeel.NativeStyle = False
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Value = 1
          Width = 113
        end
        object cxLabel46: TcxLabel
          Left = 231
          Top = 33
          Caption = 'year(s)'
          Style.TextColor = 15066597
          Transparent = True
        end
        object cxCheckBox1_yearincludeprofit: TcxCheckBox
          Left = 7
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
          Width = 186
        end
      end
    end
    object cxButton_Calc: TcxButton
      Left = 487
      Top = 16
      Width = 146
      Height = 21
      Caption = 'CALCULATE'
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000A744558745469746C650053756D3B6086AA4400000052
        49444154785EA5D3410AC0300845C19C5C08786F4B1725D01006E2E2AFE4CDCE
        51552333EB666FFB01B30B0031704262DDF66D801103460C1831B0163F640270
        0C003100C4001C1B88C62F2836501DA0B5078E0941F9368FF23F000000004945
        4E44AE426082}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton_CalcClick
    end
    object cxGroupBox2: TcxGroupBox
      Left = 374
      Top = 43
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 108
      Width = 259
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 49
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.Edges = []
        TabOrder = 0
        Height = 46
        Width = 253
        object cxLabel32: TcxLabel
          Left = 225
          Top = 26
          Caption = 'MNX'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel33: TcxLabel
          Left = 4
          Top = 2
          Caption = 'existing amount'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxComboBox_existing: TcxComboBox
          Left = 3
          Top = 24
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = cxComboBox_existingPropertiesEditValueChanged
          TabOrder = 2
          Width = 19
        end
        object cxCalcEdit_existing_amount: TcxCalcEdit
          Tag = 10
          Left = 18
          Top = 24
          EditValue = 0.000000000000000000
          PopupMenu = dxBarPopupMenu2
          Properties.ButtonGlyph.SourceDPI = 96
          Properties.ButtonGlyph.Data = {
            424D660200000000000036000000280000000A0000000E000000010020000000
            000000000000C40E0000C40E00000000000000000000C9AEFF00C9AEFF00C9AE
            FF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AE
            FF00A4A4A4FF5B5B5BFF5C5C5CFF5C5C5CFF5B5B5BFF5C5C5CFF5B5B5BFFA8A8
            A8FFC9AEFF00C9AEFF00343434FF414141FF3C3C3CFF3B3B3BFF424242FF3939
            39FF444444FF3F3F3FFFC9AEFF00C9AEFF00343434FFFFFFFFFF989898FF9696
            96FFFFFFFFFF929292FFFFFFFFFF404040FFC9AEFF00C9AEFF00393939FF5454
            54FF4F4F4FFF4E4E4EFF555555FF4C4C4CFF575757FF454545FFC9AEFF00C9AE
            FF00343434FFFFFFFFFF979797FF959595FFFFFFFFFF929292FFFFFFFFFF4040
            40FFC9AEFF00C9AEFF003A3A3AFF474747FF434343FF424242FF484848FF4040
            40FF494949FF464646FFC9AEFF00C9AEFF00333333FFFFFFFFFFA5A5A5FFA3A3
            A3FFFFFFFFFF9F9F9FFFFFFFFFFF3F3F3FFFC9AEFF00C9AEFF003F3F3FFF0202
            02FF010101FF010101FF010101FF000000FF020202FF4B4B4BFFC9AEFF00C9AE
            FF00353535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4141
            41FFC9AEFF00C9AEFF00323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3E3E3EFFC9AEFF00C9AEFF00353535FF282828FF454545FF4545
            45FF454545FF454545FF292929FF414141FFC9AEFF00C9AEFF00A3A3A3FF5858
            58FF525252FF525252FF525252FF525252FF575757FFA9A9A9FFC9AEFF00C9AE
            FF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AE
            FF00C9AEFF00}
          TabOrder = 3
          OnContextPopup = OnContextPopupDoTag
          Width = 201
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 3
        Top = 3
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.Edges = []
        TabOrder = 1
        Visible = False
        Height = 46
        Width = 253
        object cxLabel31: TcxLabel
          Left = 225
          Top = 26
          Caption = 'MNX'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = 15066597
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel36: TcxLabel
          Left = 3
          Top = 2
          Caption = 'expecting amount'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = 1240458
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxRadioButton1: TcxRadioButton
          Left = 130
          Top = 3
          Width = 40
          Height = 17
          Caption = '<='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 1240458
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Transparent = True
        end
        object cxRadioButton_exp_bigoreq: TcxRadioButton
          Left = 176
          Top = 3
          Width = 40
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = '>='
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 1240458
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          TabStop = True
          Transparent = True
        end
        object cxCalcEdit_expect_amount: TcxCalcEdit
          Tag = 9
          Left = 19
          Top = 24
          EditValue = 0.000000000000000000
          PopupMenu = dxBarPopupMenu2
          Properties.ButtonGlyph.SourceDPI = 96
          Properties.ButtonGlyph.Data = {
            424D660200000000000036000000280000000A0000000E000000010020000000
            000000000000C40E0000C40E00000000000000000000C9AEFF00C9AEFF00C9AE
            FF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AE
            FF00A4A4A4FF5B5B5BFF5C5C5CFF5C5C5CFF5B5B5BFF5C5C5CFF5B5B5BFFA8A8
            A8FFC9AEFF00C9AEFF00343434FF414141FF3C3C3CFF3B3B3BFF424242FF3939
            39FF444444FF3F3F3FFFC9AEFF00C9AEFF00343434FFFFFFFFFF989898FF9696
            96FFFFFFFFFF929292FFFFFFFFFF404040FFC9AEFF00C9AEFF00393939FF5454
            54FF4F4F4FFF4E4E4EFF555555FF4C4C4CFF575757FF454545FFC9AEFF00C9AE
            FF00343434FFFFFFFFFF979797FF959595FFFFFFFFFF929292FFFFFFFFFF4040
            40FFC9AEFF00C9AEFF003A3A3AFF474747FF434343FF424242FF484848FF4040
            40FF494949FF464646FFC9AEFF00C9AEFF00333333FFFFFFFFFFA5A5A5FFA3A3
            A3FFFFFFFFFF9F9F9FFFFFFFFFFF3F3F3FFFC9AEFF00C9AEFF003F3F3FFF0202
            02FF010101FF010101FF010101FF000000FF020202FF4B4B4BFFC9AEFF00C9AE
            FF00353535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4141
            41FFC9AEFF00C9AEFF00323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3E3E3EFFC9AEFF00C9AEFF00353535FF282828FF454545FF4545
            45FF454545FF454545FF292929FF414141FFC9AEFF00C9AEFF00A3A3A3FF5858
            58FF525252FF525252FF525252FF525252FF575757FFA9A9A9FFC9AEFF00C9AE
            FF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AEFF00C9AE
            FF00C9AEFF00}
          TabOrder = 4
          OnContextPopup = OnContextPopupDoTag
          Width = 200
        end
        object cxComboBox_expecting: TcxComboBox
          Left = 3
          Top = 24
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = cxComboBox_expectingPropertiesEditValueChanged
          TabOrder = 5
          Width = 19
        end
      end
    end
    object cxImageComboBox_calctype: TcxImageComboBox
      Left = 9
      Top = 16
      EditValue = '0'
      Properties.Images = cxImageList1
      Properties.Items = <
        item
          Description = 'calculate profit from existing amount of mnx'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'calculate deposit for expecting profit amount with parks limit'
          ImageIndex = 1
          Value = '1'
        end
        item
          Description = 
            'calculate period for expecting profit amount from existing amoun' +
            't of mnx'
          ImageIndex = 2
          Value = '2'
        end>
      Style.TextColor = 4737096
      Style.TextStyle = [fsBold]
      TabOrder = 3
      Width = 476
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2016Dark'
    Left = 507
    Top = 65534
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
    Options = [httpoEnableContentCoding]
    Timeout = 30
    SocksAuthentication = socksNoAuthentication
    SocketFamily = sfIPv4
    SocketErrs = wsErrTech
    SslContext = SslContext1
    Left = 365
    Top = 65535
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
    Left = 336
    Top = 65535
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cxImageList2
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 451
    Top = 65533
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 458
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'add new address ...'
      Category = 0
      Hint = 'add new address '
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'delete'
      Category = 0
      Hint = 'delete'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'edit ...'
      Category = 0
      Hint = 'edit '
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'hide selected'
      Category = 0
      Hint = 'hide selected'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'show hidden'
      Category = 0
      Hint = 'show hidden'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'enable group update'
      Category = 0
      Hint = 'enable group update'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxBarButton6Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'disable updates'
      Category = 0
      Hint = 'disable updates'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'enable updates'
      Category = 0
      Hint = 'enable updates'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'update'
      Category = 0
      Style = cxStyle5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
      OnPopup = dxBarSubItem1Popup
    end
    object dxBarButton10: TdxBarButton
      Caption = 'update all'
      Category = 0
      Hint = 'update all'
      Style = cxStyle6
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = 'minexbank rates'
      Category = 0
      Hint = 'minexbank rates'
      Style = cxStyle6
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = 'livecoin prices'
      Category = 0
      Hint = 'livecoin prices'
      Style = cxStyle6
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = 'mnx addresses balance'
      Category = 0
      Hint = 'mnx addresses balance'
      Style = cxStyle6
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton13Click
    end
    object dxBarButton16: TdxBarButton
      Caption = 'info'
      Category = 0
      Hint = 'info'
      Visible = ivAlways
      OnClick = cxButton4Click
    end
    object dxBarButton14: TdxBarButton
      Caption = '1'
      Category = 0
      Hint = '1'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000019744558745469746C6500566572746963616C6C3B416C
        69676E3B546F702F58299C0000004449444154785EDDD3B10D00200844D19BDA
        09D8C1111813C1564D449A8B26CF108ADF0111B157FE30034D3B36221E0EFB35
        60B708033164FC1870048104B240FD1AFD2B1926187D8B035B52D60000000049
        454E44AE426082}
      OnClick = dxBarButton14Click
    end
    object dxBarButton17: TdxBarButton
      Caption = '2'
      Category = 0
      Hint = '2'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001C744558745469746C6500566572746963616C6C3B416C
        69676E3B43656E7465723B629BD40000005C49444154785EBD93ED09C0300844
        6FEA4CE00E192163DAFB23858A503F88F0841078261C4244B40A0B26408157B0
        CEC6171304775E107051C043062F20FA17F7029212907941EAFF140CA7104D09
        D2F182428418DB85FE36B2B57800A7225FC2DB1EFDE90000000049454E44AE42
        6082}
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = '3'
      Category = 0
      Hint = '3'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001C744558745469746C6500566572746963616C6C3B416C
        69676E3B426F74746F6DF2CD02540000004449444154785EEDD3A11500200884
        E19BDA09D8C1111C138F6024E0110CF2DE4FFC12C0CCFC360E0E806AFD00B54A
        2AF081B1663F10AA177A11C82210A5A7AC7F2397D40646648DE762BDB5140000
        000049454E44AE426082}
      OnClick = dxBarButton18Click
    end
    object dxBarButton_copyvalueAS_1: TdxBarButton
      Caption = 'copy value as 0,12343'
      Category = 0
      Hint = 'copy value as 0,12343'
      Style = cxStyle6
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000025744558745469746C6500436F70793B426172733B5269
        62626F6E3B5374616E646172643B436C6F6E656D0EDF5B0000005A4944415478
        5EBDD0310EC0300C42D11ECC67F3D56933A40BC9174B3230613D093F922C55A5
        4DFACBE8FF5B00004901409B00401D8937AF7A0300D94ECC37E7006F1E736802
        014A014B0C484A005D036647BDFFC0920294A3C00BED2132B178826E4E000000
        0049454E44AE426082}
      OnClick = dxBarButton_copyvalueAS_1Click
    end
    object dxBarButton_copyvalueAS_2: TdxBarButton
      Caption = 'copy value as 0.0234'
      Category = 0
      Hint = 'copy value as 0.0234'
      Style = cxStyle6
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000025744558745469746C6500436F70793B426172733B5269
        62626F6E3B5374616E646172643B436C6F6E656D0EDF5B0000005A4944415478
        5EBDD0310EC0300C42D11ECC67F3D56933A40BC9174B3230613D093F922C55A5
        4DFACBE8FF5B00004901409B00401D8937AF7A0300D94ECC37E7006F1E736802
        014A014B0C484A005D036647BDFFC0920294A3C00BED2132B178826E4E000000
        0049454E44AE426082}
      OnClick = dxBarButton_copyvalueAS_2Click
    end
    object dxBarButton_pasteValue: TdxBarButton
      Caption = 'paste value as 1,234'
      Category = 0
      Hint = 'paste value as 1,234'
      Style = cxStyle6
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000021744558745469746C650050617374653B426172733B52
        6962626F6E3B5374616E646172643B259B079D0000005049444154785EDDD1B1
        0D0020084451376201F6B662B63316261407845869F16373BCC60180A6AAF045
        3B7F6067B8DFA0031B03D0009002491550F724C0BFB00D1058DA00D9CA2D8036
        E0FB109815C05A60CA2F9DBD17ADCD0000000049454E44AE426082}
      OnClick = dxBarButton_pasteValueClick
    end
    object dxBarButton19: TdxBarButton
      Caption = 'Update selected mnx address'
      Category = 0
      Hint = 'Update selected mnx address'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = dxBarButton19Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'all addresses'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton7: TdxBarButton
      Caption = 'set balance value as existing amount'
      Category = 0
      Hint = 'set balance value as existing amount'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'settings'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_updbank'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_updlive'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_updmnxaddr'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem4'
        end>
    end
    object dxBarButton_updbank: TdxBarButton
      Caption = 'update minexbank rates on start'
      Category = 0
      Hint = 'update minexbank rates on start'
      Style = cxStyle6
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      PaintStyle = psCaptionInMenu
    end
    object dxBarButton_updlive: TdxBarButton
      Caption = 'update livecoin prices on start'
      Category = 0
      Hint = 'update livecoin prices on start'
      Style = cxStyle6
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'result digits after comma'
      Category = 0
      Hint = 'result digits after comma'
      Style = cxStyle6
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 12.000000000000000000
      InternalEditValue = 0
    end
    object dxBarButton_updmnxaddr: TdxBarButton
      Caption = 'update mnx addresses on start'
      Category = 0
      Hint = 'update mnx addresses on start'
      Style = cxStyle6
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'language'
      Category = 0
      Style = cxStyle6
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end>
    end
    object dxBarButton15: TdxBarButton
      Caption = 'English'
      Category = 0
      Hint = 'English'
      Style = cxStyle6
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      GroupIndex = 1
      Down = True
      OnClick = dxBarButton15Click
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Russian'
      Category = 0
      Hint = 'Russian'
      Style = cxStyle6
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      GroupIndex = 1
      OnClick = dxBarButton20Click
    end
    object dxBarStatic1: TdxBarStatic
      Caption = '::'
      Category = 0
      Hint = '::'
      Style = cxStyle9
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = True
    OnPopup = dxBarPopupMenu1Popup
    Left = 217
    Top = 239
    PixelsPerInch = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 394
    Top = 65534
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 14992530
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9145227
      TextColor = 15455151
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9145227
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 14992530
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 16705227
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = -130649
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000018849444154388D
          8D93314823411486BF1DD78B56578885ED81205889A02460755AC955575C10D2
          EC836B8210B4B113AC2C0E0382E513248289706023585C2A6145097AD55D2A41
          5B112B51D0CC5AE8E8B826DEFDD5B0F37FFF7B6F6627489284B4446410280105
          601D5855D5D3374620F0034464029803BE005D9EAF05EC002BAA1ABF0A88A228
          04BE3E8163EDAAA47408AC003F55B515023740F81FA0D3385003EE81EE204912
          4464D43324AA7A9CA63A795CE586B769793D3FEF795C401EA83EAD6700A84FBF
          9CEEE7DDA0AD07EF1644240150D5A04300938BDFCB27C39992B13677915F3BF0
          3BE8A45B60B3BF5ACC5A636286338FFD1B13F76DCF62ACCDB943FCE6B59757D5
          1AF5E9D2D4D5C0DF63DBBBF75E8550448C07036C01B5BECB4FE57F7487B13617
          AAAA159182F7DDBA4D6B4CDC0904280C4DC44114453F80F99467F9E3ECD442A5
          B99F7333A7C1E71180DF3C3E1A5F7F80056774413EB8717EB8D3137EB80B818A
          07BAAB3BF2D37CD069A4717DF66BA95C0ADA3D67A7FE6A319B862BCDFDE77F00
          E00101CB9DA32F8097890000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000025E49444154388D
          8D935F48146114C57FE3CEBAB6B986659169568E44851892200465E64BA464EC
          43D24B1853AE54505403A298092D944322C55A96430415F8D052541051D13F0A
          9F82D215CC49488A9048FCBBEBEECC4E0FEE2E62A99D97EFE3DE7B0EE77CDC4F
          B02C8BF9B0F6F6B155AE9CD54D66D8A8B6391D47033B1AEECD9D11E60AEC2E29
          75B9B649C93D7BB3AE5A53D30705C34CF46C298E7E2CABB4BFDCFBE32F81B496
          AAF48AE09AECB4C1F14F0616A1E4685B5FA1EBCB7056B2CF6E0808090638D252
          3B02654DB500C2A6E7E7F7450DB3D19C0E17452CF35BE660A866F3E789537683
          3D9858BF56DA3DBD454B0B422EF184CD202124D86C8D0395172F88E1D1898709
          8B90F37343CAD3E12CC79DBCC044E5FA81D0CD8CDF911B25CF467A07A5942A7D
          4BEA612B4968FFEA561F497E45061072EF9FCD075E03CBE3421660DA2C9CE3D1
          A6820F63826BCA3C941461A8AFD0593694EBF4D92C3CC013DDAD5688C05DDDAD
          AE90FC4A35702B1613D114BA832EDBCB2E5FE73BA05996E5DC8D81D0BAB7677C
          B540ADE4574AE20ECA81C740BBEE568F4B7E45D1DDAA2AF915BBEE5623B22C6F
          074E03FB63061F00AD9AA6BD8F0BBCD2DDEA2EC9AF78817AE092EE56EB64593E
          102316CFB326DD40AB085C97FC8A057867DE91B6D840D73CC4388A812E113809
          2C015A0013A897FCCA84AE69822CCB1D009AA679663367D74547BA4B33268341
          336C5C0696C51CC46DD7C44E0F2FCA6736AEEC8930BB2E064ACF75029DF96FBC
          1DA191B151CB8C3623247D04921789008018BFF4EC6CF0645E3B5297B135EFCA
          E4F7E1ECFF21C33F3ED3DC9C8BC0121768D62CD04B08FC01465EEA923FB3B49C
          0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000002F349444154388D
          759351685B6514C77F37F7B6B766B919759D3A1BCB4C46D7244DAEC33DD481CE
          2982BABAD1C8B03E7560B522C2C4257BB084F661415D10C6E2B0999332AB3E58
          13150A13B5CE82B03EEC29B31DC6C6E2D06B53C44ED72C4D97DBE3436BA09DFB
          C3C739F07DE7C739E73B4711116EA7FBCEBD7297D172CF80BD5C3DAC3AF517A7
          1FEEFF64E31B6523E0B1BDFB0CE3415FFD8F4F37A7E446E579A56AD7EED4063D
          8FC8BEFCFE84750BC07DE2B9C6CEF2BD1EF7ECF55C1561A97EE5E4955DC6CFF3
          CDF5A7EBAA0A4A2D0274B72B3DFDF8C0CB004ADBB7830756AA76DCAE2CEFBE29
          F6D56DB34B2FF92F2FBE5657E5496CE4CFAD757D53BB3785970CED55B54A0DA4
          A86A7CE6E05BC7B5E5BF17BFACA5082D73F7377C35DFAC7FB4637AF1E0F699A5
          F79BFEBA7966EFD70B53B3BE86670A01D7217128A3BF449263BE6CEC0500C59B
          89B60313C09DFF8104B055C1797D251ABEF8CF0FC60DFBD7B3C3C37300DB3F8F
          6D52856781470A9164AF067C5C8824B7F8B2B1C3C0F05A9968B672AE6CA8EFFE
          7139BFF5CAB56BA3EDEDED41A0CEED70E40DC3E89D3BBA67F547BC99E87E6F26
          2ADE4CF4B488E0CD44636B560B854289D6D65679339110CBB2C4B22C191A1A12
          BFDF2FA6697E282228DE4CF4FB4224F9A82F1B4B006F006F03C596D4A54F2DCB
          FA6D7C7C1C8FC7C36717AFD2F9500B0D6B65060201DC6EF71E0D18F265630224
          56FBC849E0D4C2C2C2859E9E1E3C1E0F0087FACE53CEF5D566229148108FC7CF
          68C011E00EE0046003470A91A41D1E0CEFECEEEE5E37643F1561E7DDAB7E5757
          17FDFDFD7E4D6F343EA896CA657BB9FA0EB019180410114D55D57580079E4803
          309A7E0A005D753810114484E0C4F1B4EF8B63E2CD4407BCD9635B4CD39C4CA5
          52723B4D5CF84E82C1607EDD2E6C7BAFB7B1C9DC71AAF4FBFC514FEA5253B158
          9CCAE572E8BACE4685C3619C4E67672D83FF3BA669A6DBDADA646464442A958A
          88888C8D8D49281412D334BF11915BB771A33A3A3A76954AA5B3B66D0700CDE1
          70CCB85CAED7272727CF03FC0B5D6D68B00CF7AE900000000049454E44AE4260
          82}
      end>
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = -130593
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000000970485973000002EC000002
          EC01ED33B4FA0000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C000000D849444154388DA592414EC2401846
          DFFC9D61A0253468E2CA442555D808090B59B0E65CB4B7F02846398AD1D81BB0
          7065DA7155B1094D86E1EDDF97FF4D463D7CBC504792035B4EA3A844721D2803
          6CA3BA46655FAF2E40FE4342C5A91912A1D0BEC29D4958F65256FD0B1E7B2332
          9300740F5CEB012B3B666E533293F064C7ED0BCA1D35EE3070A3631636656953
          6E75CCBA7FD91266E58E8AC3734DCD90F79F6FD4F3FED34D4CCC6670D512EECB
          37AF04E59C73C704EF84463C35A1C13BA18BCE045F74A8D810FC13FF0F1467F8
          85542279E0485189E4BF3950466392EB73CD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000F6100000F
          6101A83FA7690000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C00000016744558744372656174696F6E2054
          696D650031322F32332F3137AAE2AEBB0000026649444154388D8D93CB4F1351
          14C6BF9976A00FB430D32A6A226A8958684C844471E34263D0B8346EC5D7C285
          71634C88C4D2680C4D2A1BC418FF031EB230B8202C204013A8116380B618A55A
          883AB44E5BA5D307C3CC71016D6C4BA2DFF2DEEF774ECEF9EE658808A5AAF7CC
          3AA5B4724FD1A80D00389619154C5CCFE78ED640A997F9BB406BDF5CF5A758C6
          BDDBA0BFE2D863AA3D58636041C04A32AB05D764713DA70E1DB599DC33779A93
          058888404468F4FA1DD62EDFF76B03210AACA5A854013145EDFD21B276F9BE35
          3EF537E43910114EF5BEB3D8DCBEA8673C520696AA7B3C42D62E9F78BA6FCE52
          28C0BBA6FBDAFB43FF84F3BADA1F24DE35FD8C88C01CE99E71AA1A4D4EDC3EC1
          1FE60D650B0580D7819FA8D4B3B8D0C0030096A50CCEBDFC20B12C73868DA795
          87CE5AF38EF0C28F145E2DC4E0995841389E299CDB05239AF69A85445AE9D42B
          2AB51DAA298663B282A9701223C1ADCEB62A0E153AB6C853C71B30194E5ED403
          60C014771E9A8F62783E86E3FBAAB6932A1F6B1B61584EC78C4512B9A2CB4D8D
          A001486DA8903754FCCEA9C86E6A459E48220B4EC78CEA6B8CDCE3453175F66B
          22CBE747B9744C40F3FE5D3057EAC00058CFA93860A928C05FE2592C8A729C37
          714FF231BEB831F8FF315E1F0811EF9A7E4E446001C06E353E18094A52CFD46A
          F9B025F24EAEE24D488AD55B8D9DDB0BDA7A920EAFDF6973FBD66E0D2DD1C7A8
          5CD675292AD3CDC11059DD3ED1E1F537E6B9A2CF74B2774E5896328F2C06FDE5
          A65AB3ADAEBA9205804832A7054439FA2BBB396C178CAEB7775BE2853468878C
          EC9ED91629ADDC57543A0F009C8E19134C9C77B9A3F57DA9F70FFDE9BDF24666
          A9120000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000000AB49444154388D
          BDD23D0AC2401086E17721889D646F61AD0748B98A08E92D84E4069EC31B6C91
          C2DE464C0A8B5C2057096C2588325682858164024EFF3DBBF36344843165E2AC
          BC020E300372025C5AEFB611B0D23C0C6C002245F81B1905D00B783DEFCB50A4
          8D1A0845DAD8BCEA5C55EF164E8784F57C8ACD2B1D30FA07BB63AD0366FBF322
          1469E79199382BD5B7DC7A67FE37831F251FA00612057003302282CDABC9D074
          EBDD03E00DE18B2A07067EABA40000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000027744558745469746C6500526566726573683B52657065
          61743B426172733B526962626F6E3B52656C6F6164CD4DF6E9000000B1494441
          54785EC593B10D02310C454162001688D8E0FA1BC2A2A3A14F895241CF128C40
          7B5DE86E1F96301FE947F249761A4EA2784DBEF3EC28C946557F623D81DC5F8D
          040AA8E04D2AD7126B42C1165C80064C608C047B2094DC40060792C16C24C913
          9C5920A683CD0723290B0137A941107A92CCBCB66CB1399230F3E8875FC1F5F9
          D8F59AD8F12A83EC8C1F1ED30A0A83190C8EC04AC4BB8504A62671AEF16424E1
          431A9B24E048C97A4FF9FFBFF103FFEC875AFFDCA9F30000000049454E44AE42
          6082}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C9AEFF00C9AE
          FF00BBE12600BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BBE12600C9AEFF00C9AEFF00C9AEFF00BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400C9AEFF00BBE12600BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BBE12600DEF19600CCE9
          5C00BCE22A00BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400D1EB6E00E4F3
          A800FFFFFF00FFFFFF00D9EF8700C7E74C00BAE12500BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400C3E54100D6ED7C00E8F5B600FFFFFF00E8F5B600D6ED7C00C2E5
          3F00BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BBE12700C8E75000DAEF8A00FFFF
          FF00FFFFFF00E3F3A700D1EB6D00BFE33300BAE12400BAE12400D3EC7200C0E4
          3900BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BDE22D00CEEA6300E0F29D00FFFFFF00EFF8CC00DDF09300DDF09300FFFF
          FF00FFFFFF00E0F29D00CEEA6300BDE22D00BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400C0E43900D3EC7200BAE12400BAE1
          2400BDE22D00CCE95E00DFF19900FFFFFF00FFFFFF00DFF19900CCE95E00BBE2
          2800BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400C0E43900D1EB6D00E3F3A700FFFF
          FF00FFFFFF00DAEF8A00C8E75000BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2500C7E74C00D9EF8800FFFFFF00FFFFFF00E4F3A800D1EB6E00BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BCE22A00CCE95D00DEF19700BBE12600BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BBE12600C9AEFF00BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BAE12400BAE12400C9AEFF00C9AEFF00C9AE
          FF00BBE12600BAE12400BAE12400BAE12400BAE12400BAE12400BAE12400BAE1
          2400BAE12400BAE12400BAE12400BBE12600C9AEFF00C9AEFF00}
        MaskColor = 13217535
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000000970485973000002EC000002
          EC01ED33B4FA0000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C000001C949444154388D9D933B6853510086
          FF73EEBD278F9B47E3238D09D582A12D0E8D71D0C5C14171A89B0E0E22D5DD4D
          70E8E022B839BBB90707C145E2201449A9D048244542B0E52229B5B979953CEE
          3DCD39C7C122A5E4C225DFFEFFFF391FE790859D4F39A9D17700720028FC2101
          5404A5AB246B15CB00F23E83A7D9A2C7CBD392D7E1FFD8FF49EB417E2F9CDA39
          10EE17DD67462DB168ED6124B3773B9434C34493F5A381F3BA5B9BF72C0811FA
          E77AF04CF571746E9467331157C958C969B1E7AD6ABCEC7697B8920080930503
          46C8E67D33537F12BB184B50966D0A37BD3EB28D37DD5FF3DBFC70E2980EE0E5
          DBF357D5328BDF04D4155BF27CA1DF303F0F9BCC1A0FBD1CE056F05CEFE7517F
          9D28A554C969BB1F067B810DA7837DE14C0C5D36CCD18A99DABD134A8E535AE0
          D016FCF7AB4ECD2659ABA8263BD0C47220567F60660E6E0413D424BADC74DB76
          A1DF88979CF635AE64E2B4031884EEDE0D25AB8FA273E3052372B62D39FB3A6A
          B167CD1F972ABC77C1CB41612DB1D85B09CFCE1A842EDA82E73E0EF7B517ADED
          B4351E9289F73901514AA96F6EC77EDF6FCC6C381DDDCB816741D62A0A4CF11A
          8F91144065CA30007CA782D2558094F1EF8BFA5E06B025287DFA176334B82873
          92BD1D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001B744558745469746C65004164643B506C75733B426172
          733B526962626F6E3B9506332F0000007949444154785EA593D109C0200C441D
          2583F89DE9748A0E93750407B011AE20012D721FEF43731E494C52CE39A24E75
          CC69C070A751BF1EC4294E77C6860E8D4403711E887E8156568382C00DE533D0
          43DA09ECCAD184E68C5B035067D008039BC1161F9D08DA461BD025D04DA4BF91
          1C247E94F965A2D7F90519455F5C4B07B1DE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000002A744558745469746C6500436F6E746163743B43617264
          3B496E666F3B44657461696C3B506572736F6E3B45646974E1B19358000000AE
          49444154785EB593310A02311444FF9DF61C5EC7CE2212F008360B360B168285
          588895A017B0DBDA62AF31EEFF2CEC24013F647160F87CC8BC4C8A0880459618
          2396D80095FA13E0D9BFB1BB743AF920FB27C0C2EBE3DEA6231750D5A07C42A9
          004000CB4A02E8870FBAD71D9B53AB53F7BC41586D6FCD684C6E1240FBB85AFD
          C9B693E630411240381F1860BB2ABF992106705484F327548747BB7F41B82E87
          018802DCDFC6210E5700E6DAEC2FAFDC0D609074E1780000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000011744558745469746C6500436F6E746163743B4E6577E3
          53EF7E0000008F49444154785EB593310A80300C00F36A3707A1E0135C0A2E05
          07C1419C9C04FD805B6707BF1149E810441AB1367084407224D002222601C618
          4C81051F239360F53BD6A3A32C1B2551010F175DC359095DA06FA09F2001C9A3
          C09F07BA6DC6B2B794B90E8DB415D0668167815D26144D5C877827A886560AA8
          A621E62E0880F60E7828C63F8208EA09DA6FCB2FB80065610A597B5407080000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000027744558745469746C6500526566726573683B52657065
          61743B426172733B526962626F6E3B52656C6F6164CD4DF6E900000084494441
          54785ECD93BB0D80300C44B1C42854D9C51B640B24DAB005235078AE648D70C5
          55C8587C1A8A5738E73CE53BF4DE3FF143C1B26F023230D088714C420127AFA0
          7B30934890D958410189145099E548601414676B859945824641720489597B24
          60ED126E81F508F442A0770E7102E248F4C935DA6925FAE621CD94EB3FFFC227
          0E912BC32FAF09F0EB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000013744558745469746C6500436865636B427574746F6E73
          3B8852EE91000001AE49444154785E75523B4E0331101D3B8988C459E869200D
          3D6C2810EC2E1F81448738028740B4900DA1CA878A8E0624DA1C068192F8C7CC
          D8DE4D36623FF67866DE9BE7B10500341E06D377D968741C38A08726E7C88ECB
          6A20B756F3CFDB8BED3DCC5934D12B4188CEF5D1D61AA05A099EE3EABE3FDDA1
          C2B42602618CE5E042D912E7960C7AFD2760A325416BCE97910010CF405B81EA
          44BC2E06AF70759E60BEF1CE4A818AFB0E807A0F04839F8A315C9E2551815822
          F069D6BA08887170985BBC4C103C823C4D7C13B55925D0CA2028281082E758BF
          4FE0DE0832049F669E40A94A81E4E685265AF4F59E279CE4504DD11FC32382D3
          937D066BF419FCB5A929B05A936EDA020286343349AF18428A95F3F4106CD923
          24A8375185E3B318CC8E0F9804C84EBB58B90B1CB550E668ED6A3D3086F2F938
          3304904C076C73136D751CACC48426D62E92637662CA0988715ED21BAA03DB12
          4CED184119EB9379103E31425C9C6559C4981A81D5BE079B6D5C86AAD68900E4
          F27C42645AB2ADE55024D0B3F9CFC7CDDDDB6EBCF31417C241F9843E88A0663E
          FBFEA2D38F32485B1BFF56B04B79FFD82E807F9D73E60F8705474B406D9F9D00
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000029744558745469746C650052656D6F76653B44656C6574653B426172
          733B526962626F6E3B5374616E646172643B635648300000026449444154785E
          A551494C5351146568194A2B583746627F458902118892AAB811369246043462
          8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
          26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
          86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
          AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
          DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
          15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
          B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
          89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
          EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
          3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
          EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
          446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
          62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
          DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
          65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
          655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
          4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
          A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
          BFC080A205F60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001F744558745469746C65004C6F63616C697A6174696F6E
          3B576F726C643B45617274683B3213439F0000032949444154785E4D934B685C
          650085BFFBCFBD7327F3B8794C26994C226921A11903D3C4504D1A8BE8A60F1F
          8806D28DAD15842E6C445D14A55DD8A6B88D8B20E82ADD88421521B88C0BA550
          A3681B5A68D39048D3CE23C9DC793EEEDCC76F0B59CC81B339F09DDDA7482951
          14859668C4E940F177830C6223B16D932245A00A34E5D3B01FD1022A7413894D
          9E997DF5E4A51B5F5D5D5ABD7665E9CFC5C51BAB2F9D98FFA36FEAE277DDC933
          A781A8A228EAD3B61EA0D089111F999B3FFADAE0B7B3A7478FA991666878A847
          94714457CA4D88D1C63BA181B185DE17E6AE0171400550008050DFCB9FCEF74F
          E5E6C6A762222A3B8888286DFE5E6EE562E4F31637F7AEA2E57BE9DA3CEE94D3
          B79776EE2C5E06B23EC0177FF1FC9BFA81E21577785D2FAB269EE1A0E892AD9D
          3881CE713CB707657B90ACFF377C56A7F03B03438AAA6F5BE6FD7B02D085DE31
          53EFDC08979C22DBB5C7FC7B679B4CFA08FEE8144D278863E968E220C742D31C
          1972310CCDF085126F03860A0484169EA8BB5582992E6AD532A9C40718B1A334
          AD00958247ADE062955DF2BE2CEFCED8E8AA45361D4A01610104347F7722E00E
          7120789694719970649A92A963663D4A1987F29E43AD68B12336B99BDB41840A
          481188024115F0292240A73CC5FA93650E718147E626D20DE2B91DD8F536EA45
          857A017239877F9E9824EC0EA4E7022000CFAD57D35E799848FD751EDEFD915B
          1BE7F8EBF17BACAF2FB0BBB541395BC52AFAF1FD37C5D6CD380F570EE359D53C
          D0108065D7326B546C1C3349A5B88D541D9C781A33799D4CDB454AB9551A853D
          2299930C3CF81CA7DA8753DFBD075404506D141EFC6AD7368BC26A202A132855
          1DEA1A2812FBD01AE557E6688ECE6384041E0D2A95F58A5379F40B50148095BF
          FFC3722DFFF7CFAA9271A3DA1881AD1388DD30582A48A0AD492CFD16F84CCCDA
          9A572FDD5EB672BFFF04D4D8F742050E768D7E78BD7F72A13430F9B5548F3F2F
          957371A9CFA464CFF467B26FE21BD99EFCA2AC27DEF81E1802B4672C2D626940
          7F64F0D485F6E4FB2B46EAEC6EFBE18FECF6B14FECD0C8F94CDBE0EC8A3F36FD
          31F01CA019A92F693D68B5330CF40349601C180346F6B730209E31FBE57FDF9B
          69B57B8C41DD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000014744558745469746C650052756C65733B5761726E696E
          673B0BD1AE46000002EB49444154785E4D935F689B5518879F73929A6649930E
          57B7A64163BA1B61F32E5DA70C04A573A23015E79D0C51A2171365420B6DC310
          D7A288A28ECE4E6138D9D83A6FD64E443BB032717688FF8515265D8DB36B3086
          CE6C59BEEF7CE73507F6C19EC3EFF0DE3C2FEF81F7281121442905A06F490407
          086081C0E55647037C91BFDDC90A687BBF3BB5ED7026F5C6B16CFAEC5436BD7C
          BC27BDFC712675F6C0FAE45BA3EBD63C08C49552FA44368DC34D10CAB10F33E9
          9752118A11212F2204A2B022B8230237C42E5D311C1EA95E7B07A88B88D5CE75
          F24426F5CADA882A6954BEE7F15D6CF9E0083BCEFFC6CE1F17B8FFD011EE7CE2
          6922E8BB366806873BE3834042B5D04074DF1DC907D24A152D24EE797990FEF7
          0EB1EEA1EDCCCC7DCDA9AFE6A8ACEFA1EFED03DCBB77088B8A776976EF4EC6B6
          036D006BDEEDEE983C994DCBB93DCF4B48A9342A07270ECAF8F8B84C4E4ECAFC
          FCBC38665F785626D6C6E5D554EC28D0A981F604EA3E6B2133F00821F57A9DA6
          D7A45AADD26834B8B4740947EEE147F1C592843E2011056271A5EE0E44E82AF4
          13D26C7AD46A352A950AC944C2D5F014746FD98A09A01DB2403C0A44ACA09408
          8EA9A99318E3B3BABACAE2E222BEEF532EFFC5C68DBD3804C1582150E05C0D04
          351B5C76FECAF9EFE8EB2B303B7B866BF5BA93F13CAF95A67B128EF2B96F3162
          F937B015C0D34073C5D85F2CC2D2E733E4723946464730418031ADF8C635A150
          28E0B830338DB1B012C8EF4043BBEB0F2FF8ACD5B17AF1D3137CFFE67E7AF379
          C6C6C6D8BC79138E8181018AC52273AFBFC6CFC78E520B64B51CD8D3C07F0AD0
          40D78BA9F6FD9BDAF4330ADA7A9FDC456EC76364FAB7E2F8B335F685E9697E6A
          C94D11B32072FC94912160395CE528D0F35CF2B67DF9A8DE99103A7D2B04D662
          AC60C4D542CDCAD54561E6742025A02C22BE06F8644387012E7F54F786BF699A
          E15F4DF06545ECDF1ECA73F947585EB072E607CB484B1E727229A6FDF0331172
          73B5E3400AE8B8593B1A401DB80A5C17111B3AFF0338A781C131C708F6000000
          0049454E44AE426082}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000300000A1A01004B3B0300A5500400DF590400FA590400FA5004
          00DF3B0300A51A01004B0300000A000000000000000000000000000000000000
          00000A00001D33020090540400EC580400F74C0400D6450300C1450300C14C04
          00D6580400F7540400EC330200900A00001D0000000000000000000000000A00
          001D3E0300AD590400FA440300BE1E0100560900001B02000008020000080900
          001B1E010056440300BE590400FA3E0300AD0A00001D00000000030000093302
          0090590400FA3703009A08000017000000000000000000000000000000000000
          000000000000080000183703009A590400FA33020090030000091A01004B5404
          00EB430300BD0A00001E0D0000250F00002C0A00001C1000002E0D0000250B00
          00201000002F0800001808000019440300BE540400EB1A01004B3B0300A55804
          00F61E01005506000012470300C6540400EB34020092560400F0460300C53D03
          00AA590400F92F020084000000001E010056580400F63B0300A54F0400DE4C04
          00D60900001B010000042B02007A4D0400D7350200955B0400FF4B0400D14103
          00B55B0400FF3202008D000000000A00001C4C0400D64F0400DE5A0400FB4503
          00C10200000800000000030000090A00001E2001005B5A0400FC4B0400D14103
          00B55B0400FF3202008D0000000002000008450300C15A0400FB5A0400FB4503
          00C1020000080000000000000000000000000E000028490300CC490400CD4003
          00B45B0400FF3202008D0000000002000008450300C15A0400FB4F0400DE4C04
          00D60A00001C000000000000000000000000000000010E0000291601003F3A03
          00A35B0400FF3202008D000000000A00001C4C0400D64F0400DE3B0300A55804
          00F61E0100560000000000000000000000000000000000000000000000002802
          00715A0400FD3202008D000000001E010056580400F63B0300A51A01004B5404
          00EB440300BE0900001A00000000000000000000000000000000000000000700
          0014250200671901004608000018440300BE540400EB1A01004B030000093302
          0090590400FA3703009A08000019000000000000000000000000000000000000
          000000000000080000183703009A590400FA3302009003000009000000000A00
          001D3E0300AD590400FA440300BE1E0100560900001B02000008020000080900
          001B1E010056440300BE590400FA3E0300AD0A00001D00000000000000000000
          00000A00001D33020090540400EC580400F74C0400D6450300C1450300C14C04
          00D6580400F7540400EC330200900A00001D0000000000000000000000000000
          0000000000000300000A1A01004B3B0300A5500400DF590400FA590400FA5004
          00DF3B0300A51A01004B0300000A000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C00300008001000007E000000000000000080000000800001008
          00001C0800001C0800001F8800000F80000007E0000080010000C0030000E007
          0000}
      end>
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton_copyvalueAS_1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_pasteValue'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton_copyvalueAS_2'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu2Popup
    Left = 435
    Top = 48
    PixelsPerInch = 96
  end
end
