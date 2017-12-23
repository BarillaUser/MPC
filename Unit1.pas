unit Unit1;

interface

{
*************************************************************************
prj: MinexBank Profit Calculator
ver: 0.3
wtf address : inbox2@zoho.com
donate MNX  : XLJ2FXXB7gRLFiThd7WGyVgerhXje5FqBR

Used components\libs:
                    DevExpress VCL 17.1.5   (http://devexpress.com)
                    ICS V8.51               (http://wiki.overbyte.eu)
                    Synopse mORMot          (http://synopse.info)     
*************************************************************************
}

{$REGION ' hide '}
// http://minexbank.com/api/finance/parking/type?page=1
// [{"id":1,"name":"Daily","rate":0.59,"period":86400},{"id":2,"name":"Weekly","rate":4.5,"period":604800},{"id":3,"name":"Monthly","rate":13.9,"period":2592000},{"id":4,"name":"Yearly","rate":70,"period":31536000}]

{$ENDREGION}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.IniFiles, Math,
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.Menus, Dialogs, System.StrUtils, Vcl.Clipbrd,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,   Vcl.Graphics,

  OverbyteIcsWndControl, OverbyteIcsHttpProt, OverbyteIcsWSocket,  OverbyteIcsIniFiles,

  IMSH.StringUnits,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxClasses, dxBar, cxCheckBox, cxImage, cxLabel, cxMemo, cxButtons, cxPC, dxSkinscxPCPainter,
  cxGroupBox, dxStatusBar, cxDropDownEdit, dxSkinsCore, dxSkinOffice2016Dark, dxSkinsdxStatusBarPainter,
  dxSkinsForm, dxSkinsdxBarPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGridLevel, cxGrid, dxCheckGroupBox,
  cxSplitter, cxButtonEdit, dxBevel, cxBarEditItem, cxCalc, cxRadioGroup, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, cxImageComboBox, cxImageList, dxBarExtItems;

type

  TRBankRates = packed record
    id    : integer;
    name  : string;
    rate  : double;
    period: integer;
  end;
  TRBankRatesArray = array of TRBankRates;


  TRLivecoinExchangePrice = packed record
      cur      : string; //"MNX",
      symbol   : string; //"MNX/USD",
      last     : Double; //30.94999,
      high     : Double; //34.58,
      low      : Double; //2E+1,
      volume   : Double; //2109.32137868,
      vwap     : Double; //29.30945484,
      max_bid  : Double; //34.89,
      min_ask  : Double; //2E+1,
      best_bid : Double; //29.00001,
      best_ask : Double; //30.94999
  end;




  TForm1 = class(TForm)
    cxButton_Calc: TcxButton;
    dxStatusBar1: TdxStatusBar;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxLabel19: TcxLabel;
    cxSpinEdit0_daybankrate: TcxSpinEdit;
    cxLabel20: TcxLabel;
    dxSkinController1: TdxSkinController;
    cxLabel3: TcxLabel;
    cxSpinEdit0_weekbankrate: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxSpinEdit0_monthbankrate: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxSpinEdit0_yearbankrate: TcxSpinEdit;
    cxLabel26: TcxLabel;
    SslHttpCli1: TSslHttpCli;
    SslContext1: TSslContext;
    cxLabel32: TcxLabel;
    cxLabel2: TcxLabel;
    cxSpinEdit0_dailyparkcount: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxCheckBox0_dayincludeprofit: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxSpinEdit0_weeklyparkcount: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxCheckBox0_weekincludeprofit: TcxCheckBox;
    cxLabel17: TcxLabel;
    cxSpinEdit0_monthlyparkcount: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxCheckBox0_monthincludeprofit: TcxCheckBox;
    cxLabel23: TcxLabel;
    cxSpinEdit0_yearlyparkcount: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxCheckBox0_yearincludeprofit: TcxCheckBox;
    cxGroupBox5: TcxGroupBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1TableView1Column2: TcxGridColumn;
    cxGrid1TableView1Column3: TcxGridColumn;
    cxGrid1TableView1Column4: TcxGridColumn;
    cxGrid1TableView1Column5: TcxGridColumn;
    cxGrid1TableView1Column6: TcxGridColumn;
    cxGrid1TableView1Column7: TcxGridColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxSpinEdit_USDASK: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxSpinEdit_USDBID: TcxSpinEdit;
    cxLabel27: TcxLabel;
    cxSpinEdit_BTCASK: TcxSpinEdit;
    cxLabel28: TcxLabel;
    cxSpinEdit_BTCBID: TcxSpinEdit;
    cxLabel29: TcxLabel;
    cxSpinEdit_ETHASK: TcxSpinEdit;
    cxLabel30: TcxLabel;
    cxSpinEdit_ETHBID: TcxSpinEdit;
    dxCheckGroupBox1: TdxCheckGroupBox;
    dxCheckGroupBox2: TdxCheckGroupBox;
    dxCheckGroupBox3: TdxCheckGroupBox;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2TableView1: TcxGridTableView;
    cxGrid2TableView1Column1: TcxGridColumn;
    cxGrid2TableView1Column2: TcxGridColumn;
    cxGrid2TableView1Column3: TcxGridColumn;
    cxGrid2TableView1Column4: TcxGridColumn;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel34: TcxLabel;
    cxButtonEdit_TotalWalletMNXFrom: TcxButtonEdit;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBevel1: TdxBevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel36: TcxLabel;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxLabel37: TcxLabel;
    cxSpinEdit1_daybankrate: TcxSpinEdit;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxSpinEdit1_weekbankrate: TcxSpinEdit;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxSpinEdit1_monthbankrate: TcxSpinEdit;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxSpinEdit1_yearbankrate: TcxSpinEdit;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxSpinEdit1_yearparkcount: TcxSpinEdit;
    cxLabel46: TcxLabel;
    cxCheckBox1_yearincludeprofit: TcxCheckBox;
    cxLabel47: TcxLabel;
    cxSpinEdit1_dayparkcount: TcxSpinEdit;
    cxLabel48: TcxLabel;
    cxCheckBox1_dayincludeprofit: TcxCheckBox;
    cxLabel49: TcxLabel;
    cxSpinEdit1_monthparkcount: TcxSpinEdit;
    cxLabel50: TcxLabel;
    cxCheckBox1_monthincludeprofit: TcxCheckBox;
    cxLabel51: TcxLabel;
    cxSpinEdit1_weekparkcount: TcxSpinEdit;
    cxLabel52: TcxLabel;
    cxCheckBox1_weekincludeprofit: TcxCheckBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton_exp_bigoreq: TcxRadioButton;
    dxBarButton14: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    cxGrid1TableView2: TcxGridTableView;
    cxGrid1TableView2Column1: TcxGridColumn;
    cxGrid1TableView2Column2: TcxGridColumn;
    cxGrid1TableView2Column3: TcxGridColumn;
    cxGrid1TableView2Column6: TcxGridColumn;
    cxGrid1TableView2Column7: TcxGridColumn;
    cxGrid1TableView2Column8: TcxGridColumn;
    cxCalcEdit_expect_amount: TcxCalcEdit;
    cxComboBox_expecting: TcxComboBox;
    cxComboBox_existing: TcxComboBox;
    cxCalcEdit_existing_amount: TcxCalcEdit;
    cxImageList1: TcxImageList;
    cxImageComboBox_calctype: TcxImageComboBox;
    cxImageList2: TcxImageList;
    cxGrid1TableView2Column4: TcxGridColumn;
    cxGrid1TableView3: TcxGridTableView;
    cxGrid1TableView3Column1: TcxGridColumn;
    cxGrid1TableView3Column2: TcxGridColumn;
    cxGrid1TableView3Column3: TcxGridColumn;
    cxGrid1TableView3Column4: TcxGridColumn;
    cxGrid1TableView3Column6: TcxGridColumn;
    cxGrid1TableView3Column7: TcxGridColumn;
    cxGrid1TableView3Column8: TcxGridColumn;
    cxStyle4: TcxStyle;
    cxRadioButton_USDASK: TcxRadioButton;
    cxRadioButton_USDBID: TcxRadioButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton_copyvalueAS_1: TdxBarButton;
    dxBarButton_copyvalueAS_2: TdxBarButton;
    dxBarButton_pasteValue: TdxBarButton;
    cxRadioButton_BTCBID: TcxRadioButton;
    cxRadioButton_BTCASK: TcxRadioButton;
    cxRadioButton_ETHBID: TcxRadioButton;
    cxRadioButton_ETHASK: TcxRadioButton;
    dxStatusBar1Container0: TdxStatusBarContainerControl;
    cxButton1: TcxButton;
    cxGrid2TableView1Column5: TcxGridColumn;
    cxGrid2TableView1Column6: TcxGridColumn;
    cxGrid2TableView1Column7: TcxGridColumn;
    cxGrid2TableView1Column8: TcxGridColumn;
    cxStyle5: TcxStyle;
    dxBarButton19: TdxBarButton;
    cxGrid2TableView1Column9: TcxGridColumn;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton_updbank: TdxBarButton;
    cxStyle6: TcxStyle;
    dxBarButton_updlive: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    dxBarButton_updmnxaddr: TdxBarButton;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton20: TdxBarButton;
    cxStyle9: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    procedure cxButton_CalcClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLabel13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxCheckGroupBox1PropertiesEditValueChanged(Sender: TObject);
    procedure dxCheckGroupBox3PropertiesEditValueChanged(Sender: TObject);
    procedure dxCheckGroupBox2PropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton_copyvalueAS_1Click(Sender: TObject);
    procedure dxBarPopupMenu2Popup(Sender: TObject);
    procedure OnContextPopupDoTag(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure dxBarButton_copyvalueAS_2Click(Sender: TObject);
    procedure dxBarButton_pasteValueClick(Sender: TObject);
    procedure cxButtonEdit_TotalWalletMNXFromPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid2TableView1DataControllerFilterRecord(ADataController: TcxCustomDataController; ARecordIndex: Integer; var Accept: Boolean);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxGrid2TableView1Column3PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1TableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid1TableView2CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid1TableView3CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxComboBox_expectingPropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox_existingPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure cxGrid2TableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2TableView1CanSelectRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid2TableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGrid2TableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarSubItem1Popup(Sender: TObject);
  private
    { Private declarations }
    __lastrateupdate : TDateTime;
    __kastpriceupdate: TDateTime;
    __lastexplorerupdate: TDateTime;
    __day_rate       : Double;
    __week_rate      : Double;
    __month_rate     : Double;
    __year_rate      : Double;
    sslcntx_init     : Boolean;
    __donatebalance: Double;



    function GetmaxFormHeight: Integer;


    function GetUSDPrice: Extended;
    function GetBTCPrice: Extended;
    function GetETHPrice: Extended;
    procedure  CalcTotalProfitFromExistingDeposit;
    procedure  CalcDepositForExpectingProfit     ;
    procedure  CalcPeriodCountForExpectingProfit ;

    procedure AddrRefreshTotalBalance;
    function GetMinexExplorerAddressBalance(addr: string): Double;
    procedure SetInternetBtnsEnabledState(en: Boolean);
    function InitSSL_ : Boolean;
    function UpdateMinexBankRates: integer;
    function UpdateLivecoinExchangePrice: integer;
    function UpdateMNXAddrBalance: integer;
    procedure UpdateAll;

    procedure SaveSettings;
    procedure LoadSettings;

    procedure ApplyLanguage(I: integer);
    function GetLangWord(word_index: Integer): string;
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit5,  Unit4, Unit2, OverbyteIcsSslX509Utils, SynCommons, mcpUtilsUnit;


const

  LAST_UPDATE          = '23.12.2017 3:3:25';

  DEF_BANK_RATE_DAY    = 0.51;
  DEF_BANK_RATE_WEEK   = 3.75;
  DEF_BANK_RATE_MONTH  = 19.5;
  DEF_BANK_RATE_YEAR   = 70;

  DEF_LIVECOIN_MNXUSD_ASK = 24;
  DEF_LIVECOIN_MNXUSD_BID = 23;

  DEF_LIVECOIN_MNXBTC_ASK = 0.00165;
  DEF_LIVECOIN_MNXBTC_BID = 0.00161201;

  DEF_LIVECOIN_MNXETH_ASK = 0.0385036;
  DEF_LIVECOIN_MNXETH_BID = 0.0309542;



{$REGION ' calc '}


function TForm1.GetUSDPrice: Extended;
begin
  if cxRadioButton_USDASK.Checked then Result := cxSpinEdit_USDASK.Value
  else Result := cxSpinEdit_USDBID.Value ;
end;

function TForm1.GetBTCPrice: Extended;
begin
  if cxRadioButton_BTCASK.Checked then Result := cxSpinEdit_BTCASK.Value
  else Result := cxSpinEdit_BTCBID.Value ;
end;

function TForm1.GetETHPrice: Extended;
begin
  if cxRadioButton_ETHASK.Checked then Result := cxSpinEdit_ETHASK.Value
  else Result := cxSpinEdit_ETHBID.Value ;
end;


function RndTo(v: extended; d: SmallInt): extended ;
begin
  if d = 0 then
  begin
    result := v;
    Exit;
  end;
  Result :=   RoundTo(v, d*-1);
end;


const
 err_empty_ampunt =  'existing amount value must be > 0';
 err_empty_ampunt2 =  'expecting amount value must be > 0';

procedure TForm1.CalcTotalProfitFromExistingDeposit;
var
   dd_profit, ww_profit, mm_profit, yy_profit: Extended;
begin

  if cxCalcEdit_existing_amount.Value = 0 then
  begin
    Dialogs.MessageDlg(err_empty_ampunt, mtInformation,   [mbOk], 0, mbOk);
    Exit;
  end;


   dd_profit:= 0; ww_profit:= 0; mm_profit:= 0; yy_profit:= 0;


  //day
  dd_profit :=  GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit0_daybankrate.Value, cxSpinEdit0_dailyparkcount.Value,
                cxCheckBox0_dayincludeprofit.Checked );
  //week

  ww_profit :=  GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit0_weekbankrate.Value, cxSpinEdit0_weeklyparkcount.Value,
                cxCheckBox0_weekincludeprofit.Checked );
  //month
  mm_profit :=  GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit0_monthbankrate.Value, cxSpinEdit0_monthlyparkcount.Value,
                cxCheckBox0_monthincludeprofit.Checked );
  //year
  yy_profit :=  GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit0_yearbankrate.Value, cxSpinEdit0_yearlyparkcount.Value,
                cxCheckBox0_yearincludeprofit.Checked );


 cxGrid1TableView1.DataController.BeginUpdate;
 cxGrid1TableView1.DataController.Values[0, 0] := GetLangWord(36);//  'Day';
 cxGrid1TableView1.DataController.Values[1, 0] := GetLangWord(37);//  'Week';
 cxGrid1TableView1.DataController.Values[2, 0] := GetLangWord(38);// 'Month';
 cxGrid1TableView1.DataController.Values[3, 0] := GetLangWord(39);// 'Year';
 cxGrid1TableView1.DataController.Values[0, 1] :=  cxSpinEdit0_dailyparkcount.Value;
 cxGrid1TableView1.DataController.Values[1, 1] :=  cxSpinEdit0_weeklyparkcount.Value;
 cxGrid1TableView1.DataController.Values[2, 1] :=  cxSpinEdit0_monthlyparkcount.Value;
 cxGrid1TableView1.DataController.Values[3, 1] :=  cxSpinEdit0_yearlyparkcount.Value;
 cxGrid1TableView1.DataController.Values[0, 2] :=  RndTo(  cxCalcEdit_existing_amount.Value + dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[1, 2] :=  RndTo(  cxCalcEdit_existing_amount.Value + ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[2, 2] :=  RndTo(  cxCalcEdit_existing_amount.Value + mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[3, 2] :=  RndTo(  cxCalcEdit_existing_amount.Value + yy_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[0, 3] :=  RndTo( dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[1, 3] :=  RndTo( ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[2, 3] :=  RndTo( mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[3, 3] :=  RndTo( yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView1.DataController.Values[0, 4] := RndTo( GetUSDPrice * dd_profit , cxBarEditItem2.EditValue );
 cxGrid1TableView1.DataController.Values[1, 4] := RndTo( GetUSDPrice * ww_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[2, 4] := RndTo( GetUSDPrice * mm_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[3, 4] := RndTo( GetUSDPrice * yy_profit , cxBarEditItem2.EditValue);

 cxGrid1TableView1.DataController.Values[0, 5] := RndTo( GetBTCPrice * dd_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[1, 5] := RndTo( GetBTCPrice * ww_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[2, 5] := RndTo( GetBTCPrice * mm_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[3, 5] := RndTo( GetBTCPrice * yy_profit , cxBarEditItem2.EditValue);

 cxGrid1TableView1.DataController.Values[0, 6] := RndTo( GetETHPrice * dd_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[1, 6] := RndTo( GetETHPrice * ww_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[2, 6] := RndTo( GetETHPrice * mm_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.Values[3, 6] := RndTo( GetETHPrice * yy_profit , cxBarEditItem2.EditValue);
 cxGrid1TableView1.DataController.EndUpdate;

end;

procedure TForm1.CalcDepositForExpectingProfit;
var
  dd_deposit, ww_deposit, mm_deposit, yy_deposit: Extended;
begin

  dd_deposit:= 0; ww_deposit:= 0; mm_deposit:= 0; yy_deposit:= 0;

       if cxCalcEdit_expect_amount.Value = 0 then
         begin
                  Dialogs.MessageDlg(err_empty_ampunt2, mtInformation,   [mbOk], 0, mbOk);
                  Exit;
        end;



  dd_deposit := GetDepositForExpectingProfit(cxCalcEdit_expect_amount.Value, cxSpinEdit1_daybankrate.Value,
                cxSpinEdit1_dayparkcount.Value, cxCheckBox1_dayincludeprofit.Checked,  cxRadioButton_exp_bigoreq.Checked);

  ww_deposit := GetDepositForExpectingProfit(cxCalcEdit_expect_amount.Value, cxSpinEdit1_weekbankrate.Value,
                cxSpinEdit1_weekparkcount.Value, cxCheckBox1_weekincludeprofit.Checked,  cxRadioButton_exp_bigoreq.Checked);

  mm_deposit := GetDepositForExpectingProfit(cxCalcEdit_expect_amount.Value, cxSpinEdit1_monthbankrate.Value,
                cxSpinEdit1_monthparkcount.Value, cxCheckBox1_monthincludeprofit.Checked,  cxRadioButton_exp_bigoreq.Checked);

  yy_deposit := GetDepositForExpectingProfit(cxCalcEdit_expect_amount.Value, cxSpinEdit1_yearbankrate.Value,
                cxSpinEdit1_yearparkcount.Value, cxCheckBox1_yearincludeprofit.Checked,  cxRadioButton_exp_bigoreq.Checked);





 cxGrid1TableView2.DataController.BeginUpdate;
 cxGrid1TableView2.DataController.Values[0, 0] :=GetLangWord(36); // 'Day';
 cxGrid1TableView2.DataController.Values[1, 0] :=GetLangWord(37); // 'Week';
 cxGrid1TableView2.DataController.Values[2, 0] :=GetLangWord(38); // 'Month';
 cxGrid1TableView2.DataController.Values[3, 0] :=GetLangWord(39); // 'Year';

 cxGrid1TableView2.DataController.Values[0, 1] :=  cxSpinEdit1_dayparkcount.Value;
 cxGrid1TableView2.DataController.Values[1, 1] :=  cxSpinEdit1_weekparkcount.Value;
 cxGrid1TableView2.DataController.Values[2, 1] :=  cxSpinEdit1_monthparkcount.Value;
 cxGrid1TableView2.DataController.Values[3, 1] :=  cxSpinEdit1_yearparkcount.Value;

 cxGrid1TableView2.DataController.Values[0, 2] := RndTo( dd_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[1, 2] := RndTo( ww_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[2, 2] := RndTo(  mm_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[3, 2] := RndTo( yy_deposit, cxBarEditItem2.EditValue );

 //day
 cxGrid1TableView2.DataController.Values[0, 3] := RndTo(  GetTotalProfitFromExistingDeposit(dd_deposit, cxSpinEdit1_daybankrate.Value,
                                                          cxSpinEdit1_dayparkcount.Value, cxCheckBox1_dayincludeprofit.Checked ),
                                                  cxBarEditItem2.EditValue );
 //week
 cxGrid1TableView2.DataController.Values[1, 3] := RndTo(  GetTotalProfitFromExistingDeposit(ww_deposit, cxSpinEdit1_weekbankrate.Value,
                                                           cxSpinEdit1_weekparkcount.Value,  cxCheckBox1_weekincludeprofit.Checked ),
                                                  cxBarEditItem2.EditValue );
 //month
 cxGrid1TableView2.DataController.Values[2, 3]  := RndTo(  GetTotalProfitFromExistingDeposit(mm_deposit, cxSpinEdit1_monthbankrate.Value,
                                                           cxSpinEdit1_monthparkcount.Value, cxCheckBox1_monthincludeprofit.Checked ),
                                                   cxBarEditItem2.EditValue );
 //year
 cxGrid1TableView2.DataController.Values[3, 3]  := RndTo( GetTotalProfitFromExistingDeposit(yy_deposit, cxSpinEdit1_yearbankrate.Value,
                                                          cxSpinEdit1_yearparkcount.Value, cxCheckBox1_yearincludeprofit.Checked ),
                                                   cxBarEditItem2.EditValue );


 cxGrid1TableView2.DataController.Values[0, 4] :=  RndTo(GetUSDPrice * dd_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[1, 4] :=  RndTo(GetUSDPrice * ww_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[2, 4] :=  RndTo(GetUSDPrice * mm_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[3, 4] :=  RndTo(GetUSDPrice * yy_deposit, cxBarEditItem2.EditValue );

 cxGrid1TableView2.DataController.Values[0, 5] :=  RndTo(GetBTCPrice * dd_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[1, 5] :=  RndTo(GetBTCPrice * ww_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[2, 5] :=  RndTo(GetBTCPrice * mm_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[3, 5] :=  RndTo(GetBTCPrice * yy_deposit, cxBarEditItem2.EditValue );

 cxGrid1TableView2.DataController.Values[0, 6] :=  RndTo(GetETHPrice * dd_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[1, 6] :=  RndTo(GetETHPrice * ww_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[2, 6] :=  RndTo(GetETHPrice * mm_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.Values[3, 6] :=  RndTo(GetETHPrice * yy_deposit, cxBarEditItem2.EditValue );
 cxGrid1TableView2.DataController.EndUpdate;

end;

procedure TForm1.CalcPeriodCountForExpectingProfit;
var
  dd_period, ww_period, mm_period, yy_period: integer;
  dd_profit, ww_profit, mm_profit, yy_profit: Extended;
begin


   if cxCalcEdit_existing_amount.Value = 0 then
   begin
     Dialogs.MessageDlg(err_empty_ampunt, mtInformation,   [mbOk], 0, mbOk);
     Exit;
   end;


   if cxCalcEdit_expect_amount.Value = 0 then
   begin
                  Dialogs.MessageDlg(err_empty_ampunt2, mtInformation,   [mbOk], 0, mbOk);
                  Exit;
   end;


 dd_period := GetPeriodCountForExpectingProfit(cxCalcEdit_existing_amount.Value, cxCalcEdit_expect_amount.Value, cxSpinEdit1_daybankrate.Value,
              cxCheckBox1_dayincludeprofit.Checked, cxRadioButton_exp_bigoreq.Checked    );

 ww_period := GetPeriodCountForExpectingProfit(cxCalcEdit_existing_amount.Value, cxCalcEdit_expect_amount.Value, cxSpinEdit1_weekbankrate.Value,
              cxCheckBox1_weekincludeprofit.Checked, cxRadioButton_exp_bigoreq.Checked    );

 mm_period := GetPeriodCountForExpectingProfit(cxCalcEdit_existing_amount.Value, cxCalcEdit_expect_amount.Value, cxSpinEdit1_monthbankrate.Value,
              cxCheckBox1_monthincludeprofit.Checked, cxRadioButton_exp_bigoreq.Checked    );

 yy_period := GetPeriodCountForExpectingProfit(cxCalcEdit_existing_amount.Value, cxCalcEdit_expect_amount.Value, cxSpinEdit1_yearbankrate.Value,
              cxCheckBox1_yearincludeprofit.Checked, cxRadioButton_exp_bigoreq.Checked    );



 cxGrid1TableView3.DataController.BeginUpdate;
 cxGrid1TableView3.DataController.Values[0, 0] := GetLangWord(36); // 'Day'; 'Day';
 cxGrid1TableView3.DataController.Values[1, 0] := GetLangWord(37); // 'Week'; 'Week';
 cxGrid1TableView3.DataController.Values[2, 0] := GetLangWord(38); // 'Month'; 'Month';
 cxGrid1TableView3.DataController.Values[3, 0] := GetLangWord(39); // 'Year'; 'Year';

 cxGrid1TableView3.DataController.Values[0, 1] :=  dd_period;
 cxGrid1TableView3.DataController.Values[1, 1] :=  ww_period;
 cxGrid1TableView3.DataController.Values[2, 1] :=  mm_period;
 cxGrid1TableView3.DataController.Values[3, 1] :=  yy_period;


 dd_profit:=  GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit1_daybankrate.Value,
                                                    dd_period, cxCheckBox1_dayincludeprofit.Checked );
 ww_profit:= GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit1_weekbankrate.Value,
                                                    ww_period,  cxCheckBox1_weekincludeprofit.Checked );

 mm_profit:= GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit1_monthbankrate.Value,
                                                    mm_period, cxCheckBox1_monthincludeprofit.Checked );

 yy_profit:= GetTotalProfitFromExistingDeposit(cxCalcEdit_existing_amount.Value, cxSpinEdit1_yearbankrate.Value,
                                                    yy_period, cxCheckBox1_yearincludeprofit.Checked );

 //total                                     RndTo(  , cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[0, 2] := RndTo(  cxCalcEdit_existing_amount.Value + dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[1, 2] := RndTo(  cxCalcEdit_existing_amount.Value + ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[2, 2] := RndTo(  cxCalcEdit_existing_amount.Value + mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[3, 2] := RndTo(  cxCalcEdit_existing_amount.Value + yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView3.DataController.Values[0, 3] := RndTo(  dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[1, 3] := RndTo(  ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[2, 3] := RndTo(  mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[3, 3] := RndTo(  yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView3.DataController.Values[0, 4] := RndTo(  GetUSDPrice * dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[1, 4] := RndTo( GetUSDPrice * ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[2, 4] := RndTo( GetUSDPrice * mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[3, 4] := RndTo( GetUSDPrice * yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView3.DataController.Values[0, 5] := RndTo( GetBTCPrice * dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[1, 5] := RndTo( GetBTCPrice * ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[2, 5] := RndTo( GetBTCPrice * mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[3, 5] := RndTo( GetBTCPrice * yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView3.DataController.Values[0, 6] := RndTo( GetETHPrice * dd_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[1, 6] := RndTo( GetETHPrice * ww_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[2, 6] := RndTo( GetETHPrice * mm_profit, cxBarEditItem2.EditValue );
 cxGrid1TableView3.DataController.Values[3, 6] := RndTo( GetETHPrice * yy_profit, cxBarEditItem2.EditValue );

 cxGrid1TableView3.DataController.EndUpdate;
end;

{$ENDREGION}


procedure TForm1.cxButton_CalcClick(Sender: TObject);
begin
  case cxImageComboBox_calctype.ItemIndex of
    0 :  CalcTotalProfitFromExistingDeposit;
    1 :  CalcDepositForExpectingProfit  ;
    2 :  CalcPeriodCountForExpectingProfit  ;
  end;

  if cxComboBox_expecting.Properties.Items.IndexOf( FloatToStr(cxCalcEdit_expect_amount.Value)  ) = -1  then
    cxComboBox_expecting.Properties.Items.Add(FloatToStr(cxCalcEdit_expect_amount.Value)) ;

  if cxComboBox_existing.Properties.Items.IndexOf( FloatToStr(cxCalcEdit_existing_amount.Value)  ) = -1  then
  cxComboBox_existing.Properties.Items.Add(FloatToStr(cxCalcEdit_existing_amount.Value)) ;

end;



procedure TForm1.cxButton4Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  if dxBarButton15.Down then  Form2.lang :=  0 else  Form2.lang := 1;
  Form2.donatebalance  := __donatebalance;
  Form2.ShowModal;
  __donatebalance :=  Form2.donatebalance;
  Form2.Free;
end;


procedure TForm1.cxButtonEdit_TotalWalletMNXFromPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  cxCalcEdit_existing_amount.Value := StrToFloat(cxButtonEdit_TotalWalletMNXFrom.Text);
end;

procedure TForm1.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
var
  b, x: Boolean;
  I: Integer;
  PrevTag: Integer;
begin
  b := cxImageComboBox_calctype.ItemIndex = 1;
  cxLabel45.Visible    := b;
  cxSpinEdit1_dayparkcount.Visible := b;
  cxLabel46.Visible    := b;
  cxLabel49.Visible    := b;
  cxSpinEdit1_weekparkcount.Visible := b;
  cxLabel50.Visible    := b;
  cxLabel51.Visible    := b;
  cxSpinEdit1_monthparkcount.Visible := b;
  cxLabel52.Visible    := b;
  cxLabel47.Visible    := b;
  cxSpinEdit1_yearparkcount.Visible := b;
  cxLabel48.Visible    := b;

  cxGroupBox6.Visible :=  cxImageComboBox_calctype.ItemIndex in [1,2];   //req
  cxGroupBox4.Visible :=  (not b);   //ex

  case cxImageComboBox_calctype.ItemIndex of
   0: cxGrid1Level1.GridView := cxGrid1TableView1;
   1: cxGrid1Level1.GridView := cxGrid1TableView2;
   2: cxGrid1Level1.GridView := cxGrid1TableView3;
  end;

  if (cxImageComboBox_calctype.ItemIndex in [1,2] ) and cxPageControl1.Pages[7].TabVisible then Exit;

   b := cxImageComboBox_calctype.ItemIndex = 0;
   PrevTag   := cxPageControl1.ActivePageIndex ;
   cxPageControl1.Pages[0].TabVisible := b;
   cxPageControl1.Pages[1].TabVisible := b;
   cxPageControl1.Pages[2].TabVisible := b;
   cxPageControl1.Pages[3].TabVisible := b;
   cxPageControl1.Pages[4].TabVisible := (not b);
   cxPageControl1.Pages[5].TabVisible := (not b);
   cxPageControl1.Pages[6].TabVisible := (not b);
   cxPageControl1.Pages[7].TabVisible := (not b);
   cxPageControl1.ActivePageIndex := cxPageControl1.tag ;
   cxPageControl1.tag :=  PrevTag;

end;



procedure TForm1.cxComboBox_existingPropertiesEditValueChanged(Sender: TObject);
begin
  cxCalcEdit_existing_amount.Value := StrToFloat(cxComboBox_existing.Text );
  cxCalcEdit_existing_amount.SetFocus;
end;

procedure TForm1.cxComboBox_expectingPropertiesEditValueChanged(Sender: TObject);
begin
  cxCalcEdit_expect_amount.Value := StrToFloat(cxComboBox_expecting.Text );
  cxCalcEdit_expect_amount.SetFocus;
end;

procedure TForm1.cxLabel13Click(Sender: TObject);
begin
  case TcxLabel(Sender).Tag of
   0 : begin cxSpinEdit0_daybankrate.Value    := __day_rate;      cxSpinEdit1_daybankrate.Value    := __day_rate;   end;
   1 : begin cxSpinEdit0_weekbankrate.Value   := __week_rate;     cxSpinEdit1_weekbankrate.Value   := __week_rate;    end;
   2 : begin cxSpinEdit0_monthbankrate.Value  := __month_rate;    cxSpinEdit1_monthbankrate.Value  := __month_rate;   end;
   3 : begin cxSpinEdit0_yearbankrate.Value   := __year_rate;     cxSpinEdit1_yearbankrate.Value   := __year_rate;    end;
  end;
  //cxPageControl1.ActivePageIndex := TcxLabel(Sender).Tag;


end;

procedure TForm1.dxBarButton15Click(Sender: TObject);
begin

    ApplyLanguage( 0);
end;

procedure TForm1.dxBarButton20Click(Sender: TObject);
begin
    ApplyLanguage( 1);
end;




{$REGION ' result grid '}
procedure TForm1.cxGrid1TableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  cxPageControl1.ActivePageIndex := ARecord.Index ;
end;

procedure TForm1.cxGrid1TableView2CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  cxPageControl1.ActivePageIndex :=  ARecord.Index +4 ;
end;

procedure TForm1.cxGrid1TableView3CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  cxPageControl1.ActivePageIndex :=  ARecord.Index +4 ;
end;

{$ENDREGION}


{$REGION ' addresses '}

procedure TForm1.AddrRefreshTotalBalance;
var
  i: Integer;   ex: Extended;
begin
  ex := 0;
  with cxGrid2TableView1.DataController do
  begin
    for i:=0 to RecordCount-1 do
     ex := ex + Values[i, 2]; // := True;
  end;

  cxButtonEdit_TotalWalletMNXFrom.Text := Ex.ToString;

end;


procedure TForm1.cxGrid2TableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  if Sender.DataController.FocusedRecordIndex <> ARecord.Index then
  begin
    cxGrid2TableView1.OptionsData.Editing := false;
    cxGrid2TableView1.OptionsSelection.CellSelect := false;
  end
  else
  begin
    cxGrid2TableView1.OptionsData.Editing := True;
    cxGrid2TableView1.OptionsSelection.CellSelect := True;
  end;


end;

procedure TForm1.cxGrid2TableView1CanSelectRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
   //
end;

procedure TForm1.cxGrid2TableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGrid2TableView1.OptionsData.Editing := True;
  cxGrid2TableView1.OptionsSelection.CellSelect := True;
end;

procedure TForm1.cxGrid2TableView1Column3PropertiesEditValueChanged(Sender: TObject);
begin
  AddrRefreshTotalBalance;
end;

{visibility}
procedure TForm1.cxGrid2TableView1DataControllerFilterRecord(ADataController: TcxCustomDataController; ARecordIndex: Integer; var Accept: Boolean);
begin
  if   ADataController.Values[ARecordIndex, 4] = null then Exit;
   Accept :=      ADataController.Values[ARecordIndex, 4]  ;
end;

procedure TForm1.cxGrid2TableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin

end;

//new
procedure TForm1.dxBarButton1Click(Sender: TObject);
var I, aP: Integer;
begin

          Application.CreateForm(TForm4, Form4);

          if dxBarButton15.Down then  Form4.lang :=  0 else  Form4.lang := 1;
          Form4.Tag := 0;

          if Form4.ShowModal = mrOk then
          begin
            aP := cxGrid2TableView1.DataController.AppendRecord;
            cxGrid2TableView1.DataController.Values[aP, 0] :=  aP+1;
            cxGrid2TableView1.DataController.Values[aP, 1] :=  Form4.cxButtonEdit_mnxaddress.Text ;
            cxGrid2TableView1.DataController.Values[aP, 2] :=  Form4.cxCalcEdit_mnxbalance.Value  ;
            cxGrid2TableView1.DataController.Values[aP, 3] :=  Form4.cxTextEdit_mnxlabel.Text     ;
            cxGrid2TableView1.DataController.Values[aP, 4] :=  Form4.cxCheckBox_mnxvisible.Checked      ; //hidden
            cxGrid2TableView1.DataController.Values[aP, 5] :=  Form4.cxCheckBox_mnxenableupdate.Checked ; //hidden

            if  Form4.cxCheckBox_mnxenableupdate.Checked then i := 0 else i := 1;
            cxGrid2TableView1.DataController.Values[aP, 8] :=  i ;

            AddrRefreshTotalBalance;
          end;
end;

//edit
procedure TForm1.dxBarButton3Click(Sender: TObject);
var I, aP: Integer;
begin
          Application.CreateForm(TForm4, Form4);

          if dxBarButton15.Down then  Form4.lang :=  0 else  Form4.lang := 1;
          Form4.Tag := 1;

          aP := cxGrid2TableView1.DataController.FocusedRecordIndex;
          Form4.cxButtonEdit_mnxaddress.Text          := cxGrid2TableView1.DataController.Values[aP, 1];
          Form4.cxCalcEdit_mnxbalance.Value          := cxGrid2TableView1.DataController.Values[aP, 2];
          Form4.cxTextEdit_mnxlabel.Text             := cxGrid2TableView1.DataController.Values[aP, 3];
          Form4.cxCheckBox_mnxvisible.Checked        := cxGrid2TableView1.DataController.Values[aP, 4];
          Form4.cxCheckBox_mnxenableupdate.Checked   := cxGrid2TableView1.DataController.Values[aP, 5];

          if Form4.ShowModal = mrOk then
          begin
            cxGrid2TableView1.DataController.Values[aP, 1] :=  Form4.cxButtonEdit_mnxaddress.Text ;
            cxGrid2TableView1.DataController.Values[aP, 2] :=  Form4.cxCalcEdit_mnxbalance.Value  ;
            cxGrid2TableView1.DataController.Values[aP, 3] :=  Form4.cxTextEdit_mnxlabel.Text     ;
            cxGrid2TableView1.DataController.Values[aP, 4] :=  Form4.cxCheckBox_mnxvisible.Checked      ; //hidden
            cxGrid2TableView1.DataController.Values[aP, 5] :=  Form4.cxCheckBox_mnxenableupdate.Checked ; //hidden

            if  Form4.cxCheckBox_mnxenableupdate.Checked then i := 0 else i := 1;
            cxGrid2TableView1.DataController.Values[aP, 8] :=  i ;

            AddrRefreshTotalBalance;
          end;

end;

//update selected
procedure TForm1.dxBarButton19Click(Sender: TObject);
begin
  SetInternetBtnsEnabledState(False);
  dxStatusBar1.Panels[1].Text := '0%';

  with cxGrid2TableView1.DataController do
  Values[FocusedRecordIndex, 2] := GetMinexExplorerAddressBalance(Values[FocusedRecordIndex, 1]);
  AddrRefreshTotalBalance;
  dxStatusBar1.Panels[1].Text := '100%';
  SetInternetBtnsEnabledState(True);
end;

//delete selected
procedure TForm1.dxBarButton2Click(Sender: TObject);
var
  I: Integer;
begin
  with cxGrid2TableView1.DataController do
  begin
      BeginUpdate;
      DeleteRecord(FocusedRecordIndex);
      for I := 0 to RecordCount-1 do
        Values[i, 0] := i+1;
      EndUpdate;
  end;
  AddrRefreshTotalBalance;
end;

//hide selected
procedure TForm1.dxBarButton4Click(Sender: TObject);
begin
  with cxGrid2TableView1.DataController do
     Values[FocusedRecordIndex, 4] :=  false;
end;

//Show all hidden
procedure TForm1.dxBarButton5Click(Sender: TObject);
var
  i: Integer;
begin
  with cxGrid2TableView1.DataController do
  begin
    for i:=0 to RecordCount-1 do
     Values[i, 4] := True;
  end;
end;

//enable disable grou updates
procedure TForm1.dxBarButton6Click(Sender: TObject);
begin
  with cxGrid2TableView1.DataController do
  begin
    Values[FocusedRecordIndex, 5] :=  not  Values[FocusedRecordIndex, 5];
    Values[FocusedRecordIndex, 8] :=  StrToInt( IfThen( (integer(Values[FocusedRecordIndex, 8])=0) ,  '1', '0') );
  end;
end;

//set amount
procedure TForm1.dxBarButton7Click(Sender: TObject);
begin
  cxCalcEdit_existing_amount.Value := cxGrid2TableView1.DataController.Values[ cxGrid2TableView1.DataController.FocusedRecordIndex , 2];
end;

//disable updates all
procedure TForm1.dxBarButton8Click(Sender: TObject);
var
  i: Integer;
begin
  with cxGrid2TableView1.DataController do
  begin
    for i:=0 to RecordCount-1 do
    begin
     Values[i, 5] := False;
     Values[i, 8] := 1;
    end;
  end;
end;

//enable updates all
procedure TForm1.dxBarButton9Click(Sender: TObject);
var
    i: Integer;
begin
    with cxGrid2TableView1.DataController do
    begin
      for i:=0 to RecordCount-1 do
      begin
       Values[i, 5] := True;
       Values[i, 8] := 0;

      end;
    end;
end;




{$ENDREGION}


{$REGION ' internet '}

//deprecated
procedure TForm1.cxButton2Click(Sender: TObject);
var RBankRates: TRBankRatesArray;
     s: UTF8String;
     bank_c, liveco_c: Boolean;
begin
  //  cxButton_abort.Visible := True;
  //  cxButton2.Visible      := False;
  (*
    bank_c:= False; liveco_c:= False;
    dxStatusBar1.SimplePanelStyle.Text := 'updating rates & prices, please wait ...';


    if not sslcntx_init then
    begin
    SslContext1.SslCertFile         := Trim('');
    SslContext1.SslPassPhrase       := Trim('');
    SslContext1.SslPrivKeyFile      := Trim('');
    SslContext1.SslCALines.Text     := sslRootCACertsBundle;
    SslContext1.SslVerifyPeer       := False;
    SslContext1.SslMinVersion       := TSslVerMethod (5);  { V8.03}
    SslContext1.SslMaxVersion       := TSslVerMethod (5);  { V8.03}
    SslContext1.SslCipherList       := Trim('ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH');                       { V8.01 }
    SslContext1.SslDHParamFile      := Trim('');                     { V8.01 }
    SslContext1.SslSecLevel         := TSslSecLevel (1);     { V8.41 }
    try
        SslContext1.InitContext;  { V8.01 get any error now before making request }
    except
        on E:Exception do
        begin
            ShowMessage('Failed to initialize SSL Context: ' + E.Message);
            dxStatusBar1.SimplePanelStyle.Text := 'can''t establish internet connection!';
        //    cxButton_abort.Visible := False;
        //    cxButton2.Visible      := True;
            Exit;
        end;
    end;
     sslcntx_init := True;    
    end;





    dxStatusBar1.SimplePanelStyle.Text := 'updating minexbank rates info, please wait ...';
    SslHttpCli1.RcvdStream := TMemoryStream.Create;
    SslHttpCli1.URL := 'http://minexbank.com/api/finance/parking/type?page=1';

    try
        try
         SslHttpCli1.Get;
         SslHttpCli1.RcvdStream.Position := 0;
         s := StreamToRawByteString(SslHttpCli1.RcvdStream);
        finally
         SslHttpCli1.RcvdStream.Free;
         bank_c := True;
         DynArrayLoadJSON(RBankRates, @s[1],  TypeInfo(TRBankRatesArray) );
         dxCheckGroupBox1.Caption := '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
        end;
    except
        on E:Exception do
        begin
           s := '';
           ShowMessage( '. Status = ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
           dxStatusBar1.SimplePanelStyle.Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
        //   cxButton_abort.Visible := False;
        //   cxButton2.Visible      := True;
           Exit;
        end;
    end;

  //==============================================================
   dxStatusBar1.SimplePanelStyle.Text := 'updating livecoin prices info, please wait ...';
  s := '';
  SslHttpCli1.RcvdStream := TMemoryStream.Create;
  SslHttpCli1.URL := 'https://www.livecoin.net';

  try
      try
       SslHttpCli1.Get;
       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
       SslHttpCli1.RcvdStream.Free;
       FormatSettings.DecimalSeparator := '.';
       cxSpinEdit_BTCASK.Value := StrToFloat( lc_microparse(s,  'data-currency="MNX/BTC">', '</span>') );
       cxSpinEdit_ETHASK.Value := StrToFloat(lc_microparse(s,  'data-currency="MNX/ETH">', '</span>') );
       cxSpinEdit_USDASK.Value := StrToFloat(lc_microparse(s,  'data-currency="MNX/USD">', '</span>') );
       FormatSettings.DecimalSeparator := ',';
       dxCheckGroupBox3.Caption := '[livecoin.net] price for 1 MNX (update: ' + DateTimeToStr(__lastrateupdate) +')';
       liveco_c := True;
      end;
  except
        on E:Exception do
        begin
            s := '';
            ShowMessage( '. Status = ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
            dxStatusBar1.SimplePanelStyle.Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
        //    cxButton_abort.Visible := False;
        //    cxButton2.Visible      := True;
            Exit;
        end;
  end;

 // cxButton_abort.Visible := False;
 // cxButton2.Visible      := True;

  if bank_c and liveco_c then
  dxStatusBar1.SimplePanelStyle.Text := 'rates & prices update status: Done!'
  else
  if not bank_c then
    dxStatusBar1.SimplePanelStyle.Text := 'rates update - Failed! | prices update: Done!'
    else if not liveco_c then
      dxStatusBar1.SimplePanelStyle.Text := 'rates update - Done! | prices update: Failed!';



  __lastrateupdate := Now;
  __day_rate   := RBankRates[0].rate;
  __week_rate  := RBankRates[1].rate;
  __month_rate := RBankRates[2].rate;
  __year_rate  := RBankRates[3].rate;



   cxLabel13.Caption :=  __day_rate.ToString   +'%';
   cxLabel14.Caption :=  __week_rate.ToString  +'%';
   cxLabel15.Caption :=  __month_rate.ToString +'%';
   cxLabel16.Caption :=  __year_rate.ToString  +'%';


   cxSpinEdit0_daybankrate.Value   :=  __day_rate     ;
   cxSpinEdit0_weekbankrate.Value  :=  __week_rate    ;
   cxSpinEdit0_monthbankrate.Value :=  __month_rate   ;
   cxSpinEdit0_yearbankrate.Value  :=  __year_rate    ;
   cxSpinEdit1_daybankrate.Value   :=  __day_rate     ;
   cxSpinEdit1_weekbankrate.Value  :=  __week_rate    ;
   cxSpinEdit1_monthbankrate.Value :=  __month_rate   ;
   cxSpinEdit1_yearbankrate.Value  :=  __year_rate    ;

   dxCheckGroupBox1.Caption := '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
        *)

end;


function TForm1.InitSSL_ : Boolean;
begin      Result := False;
   if not sslcntx_init then
   begin
   SslContext1.SslCertFile         := Trim('');
   SslContext1.SslPassPhrase       := Trim('');
   SslContext1.SslPrivKeyFile      := Trim('');
   SslContext1.SslCALines.Text     := sslRootCACertsBundle;
   SslContext1.SslVerifyPeer       := False;
   SslContext1.SslMinVersion       := TSslVerMethod (5);  { V8.03}
   SslContext1.SslMaxVersion       := TSslVerMethod (5);  { V8.03}
   SslContext1.SslCipherList       := Trim('ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH');                       { V8.01 }
   SslContext1.SslDHParamFile      := Trim('');                     { V8.01 }
   SslContext1.SslSecLevel         := TSslSecLevel (1);     { V8.41 }
     try
         SslContext1.InitContext;  { V8.01 get any error now before making request }
     except
         on E:Exception do
         begin
             ShowMessage('Failed to initialize SSL Context: ' + E.Message);
             dxStatusBar1.Panels[2].Text := 'failed to initialize SSL Context!';
             Exit;
         end;
     end;
    sslcntx_init := True;
   end;
   Result := True;
end;

//abort
procedure TForm1.cxButton1Click(Sender: TObject);
begin
  SslHttpCli1.Abort;
  dxStatusBar1.Panels[0].Visible := False;
  cxButton1.Tag := 1;
end;

//all
procedure TForm1.dxBarButton10Click(Sender: TObject);
begin
  SetInternetBtnsEnabledState(False);
  UpdateAll;
  SetInternetBtnsEnabledState(True);
end;

//bank
procedure TForm1.dxBarButton11Click(Sender: TObject);
begin
  SetInternetBtnsEnabledState(False);
  UpdateMinexBankRates;
  SetInternetBtnsEnabledState(True);
end;

//live
procedure TForm1.dxBarButton12Click(Sender: TObject);
begin
  SetInternetBtnsEnabledState(False);
  UpdateLivecoinExchangePrice;
  SetInternetBtnsEnabledState(True);
end;

//addr
procedure TForm1.dxBarButton13Click(Sender: TObject);
begin
  SetInternetBtnsEnabledState(False);
  UpdateMNXAddrBalance;
  AddrRefreshTotalBalance;
  SetInternetBtnsEnabledState(True);
end;



procedure TForm1.SetInternetBtnsEnabledState(en: Boolean);
begin
    dxBarButton19.Enabled := en;
    dxBarButton10.Enabled := en;
    dxBarButton11.Enabled := en;
    dxBarButton12.Enabled := en;
    dxBarButton13.Enabled := en;


end;

procedure TForm1.UpdateAll;
var b1, b2, b3: Boolean;
begin
  dxStatusBar1.Panels[2].Text :=  'pleas wait, initialize SSL Context ...';
  if not InitSSL_ then
  begin
   SetInternetBtnsEnabledState(True);
   Exit;
  end;

  cxButton1.Tag := 0;   //abort
  b1 := UpdateMinexBankRates = 0;

  Application.ProcessMessages;
  if cxButton1.Tag = 1 then
  begin
    dxStatusBar1.Panels[2].Text :=  'process cancelled!';
    SetInternetBtnsEnabledState(True);
    Exit;
  end;


  b2 := UpdateLivecoinExchangePrice = 0;
  Application.ProcessMessages;
  if cxButton1.Tag = 1 then
  begin
    dxStatusBar1.Panels[2].Text :=  'process cancelled!';
    SetInternetBtnsEnabledState(True);
    Exit;
  end;

  if cxGrid2TableView1.DataController.RecordCount > 0 then
  begin
      b3 := UpdateMNXAddrBalance = 0;
      Application.ProcessMessages;
      if cxButton1.Tag = 1 then
      begin
        dxStatusBar1.Panels[2].Text :=  'process cancelled!';
        SetInternetBtnsEnabledState(True);
        Exit;
      end;
      SetInternetBtnsEnabledState(True);
      AddrRefreshTotalBalance;
  end
  else
  begin
    b3 := True;
  end;


  if b1 and b2 and b3 then
     dxStatusBar1.Panels[2].Text :=  'last update: ' + DateTimeToStr(Now)
  else
  dxStatusBar1.Panels[2].Text := 'update error!';

  dxStatusBar1.Panels[1].Visible := False;
end;

function TForm1.UpdateMinexBankRates: integer;
var RBankRates: TRBankRatesArray;
    s         : UTF8String;

begin
  Result := 1;
  dxStatusBar1.Panels[2].Text :=  'pleas wait, initialize SSL Context ...';
  if not InitSSL_ then
  begin
   SetInternetBtnsEnabledState(True);
   Exit;
  end;

  dxStatusBar1.Panels[2].Text := 'updating minexbank rates info, please wait ...';

  SslHttpCli1.URL := 'http://minexbank.com/api/finance/parking/type?page=1';
  try
      try
       dxStatusBar1.Panels[0].Visible := True;
       SslHttpCli1.RcvdStream := TMemoryStream.Create;
       SslHttpCli1.Get;
       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
       dxStatusBar1.Panels[0].Visible := False;
       SslHttpCli1.RcvdStream.Free;
       DynArrayLoadJSON(RBankRates, @s[1],  TypeInfo(TRBankRatesArray) );
      end;
  except
      on E: Exception do
      begin
         s := '';
         dxStatusBar1.Panels[0].Visible := False;
         dxStatusBar1.Panels[2].Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         SetInternetBtnsEnabledState(True);
         Exit;
      end;
  end;

  if s = '' then  Exit;

  __lastrateupdate := Now;
  __day_rate       := RBankRates[0].rate;
  __week_rate      := RBankRates[1].rate;
  __month_rate     := RBankRates[2].rate;
  __year_rate      := RBankRates[3].rate;

  cxLabel13.Caption :=  __day_rate.ToString   +'%';
  cxLabel14.Caption :=  __week_rate.ToString  +'%';
  cxLabel15.Caption :=  __month_rate.ToString +'%';
  cxLabel16.Caption :=  __year_rate.ToString  +'%';

  cxSpinEdit0_daybankrate.Value   :=  __day_rate     ;
  cxSpinEdit0_weekbankrate.Value  :=  __week_rate    ;
  cxSpinEdit0_monthbankrate.Value :=  __month_rate   ;
  cxSpinEdit0_yearbankrate.Value  :=  __year_rate    ;
  cxSpinEdit1_daybankrate.Value   :=  __day_rate     ;
  cxSpinEdit1_weekbankrate.Value  :=  __week_rate    ;
  cxSpinEdit1_monthbankrate.Value :=  __month_rate   ;
  cxSpinEdit1_yearbankrate.Value  :=  __year_rate    ;


  dxStatusBar1.Panels[2].Text := 'bank rates update status: done!';
 //  '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
  dxCheckGroupBox1.Caption := Format(GetLangWord(58), [DateTimeToStr(__lastrateupdate)] );
   Result := 0;
end;

function TForm1.UpdateLivecoinExchangePrice: integer;
var RLivecoinExchangePrice: TRLivecoinExchangePrice;
    s         : UTF8String;
begin
  Result := 1;
  dxStatusBar1.Panels[2].Text :=  'pleas wait, initialize SSL Context ...';
  if not InitSSL_ then
  begin
   SetInternetBtnsEnabledState(True);
   Exit;
  end;


  dxStatusBar1.Panels[2].Text := 'updating livecoin price info, please wait ...';

  dxStatusBar1.Panels[1].Text := '1/3';
  SslHttpCli1.URL :=  'https://api.livecoin.net/exchange/ticker?currencyPair=MNX/USD';
  try
      try
       dxStatusBar1.Panels[0].Visible := True;
       SslHttpCli1.RcvdStream := TMemoryStream.Create;
       SslHttpCli1.Get;

       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
       dxStatusBar1.Panels[0].Visible := False;
       SslHttpCli1.RcvdStream.Free;
       RecordLoadJSON(RLivecoinExchangePrice, @s[1], typeinfo(TRLivecoinExchangePrice) );
       
      end;
  except
      on E: Exception do
      begin
         s := '';
         dxStatusBar1.Panels[0].Visible := False;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         dxStatusBar1.Panels[2].Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
         SetInternetBtnsEnabledState(True);
         Exit;
      end;
  end;
  cxSpinEdit_USDASK.Value := RLivecoinExchangePrice.best_ask;
  cxSpinEdit_USDBID.Value := RLivecoinExchangePrice.best_bid;
  if s = '' then  Exit;

  dxStatusBar1.Panels[1].Text := '2/3';
  SslHttpCli1.URL :=  'https://api.livecoin.net/exchange/ticker?currencyPair=MNX/BTC';
  try
      try
       dxStatusBar1.Panels[0].Visible := True;
       SslHttpCli1.RcvdStream := TMemoryStream.Create;
       SslHttpCli1.Get;

       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
       dxStatusBar1.Panels[0].Visible := False;
       SslHttpCli1.RcvdStream.Free;
       RecordLoadJSON(RLivecoinExchangePrice, @s[1], typeinfo(TRLivecoinExchangePrice) );
       
      end;
  except
      on E: Exception do
      begin
         s := '';
         dxStatusBar1.Panels[0].Visible := False;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         dxStatusBar1.Panels[2].Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
         SetInternetBtnsEnabledState(True);
         Exit;
      end;
  end;
  cxSpinEdit_BTCASK.Value := RLivecoinExchangePrice.best_ask;
  cxSpinEdit_BTCBID.Value := RLivecoinExchangePrice.best_bid;
  if s = '' then  Exit;

  dxStatusBar1.Panels[1].Text := '3/3';
  SslHttpCli1.URL :=  'https://api.livecoin.net/exchange/ticker?currencyPair=MNX/ETH';
  try
      try
       dxStatusBar1.Panels[0].Visible := True;
       SslHttpCli1.RcvdStream := TMemoryStream.Create;
       SslHttpCli1.Get;

       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
        dxStatusBar1.Panels[0].Visible := False;
       SslHttpCli1.RcvdStream.Free;
       RecordLoadJSON(RLivecoinExchangePrice, @s[1], typeinfo(TRLivecoinExchangePrice) );

      end;
  except
      on E: Exception do
      begin
         s := '';
         dxStatusBar1.Panels[0].Visible := False;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         dxStatusBar1.Panels[2].Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
         SetInternetBtnsEnabledState(True);
         Exit;
      end;
  end;
       cxSpinEdit_ETHASK.Value := RLivecoinExchangePrice.best_ask;
       cxSpinEdit_ETHBID.Value := RLivecoinExchangePrice.best_bid;
  if s = '' then  Exit;


  __kastpriceupdate := Now;
  //   '[livecoin.net] price for 1 MNX (update: ' + DateTimeToStr(__kastpriceupdate) +')';
  dxCheckGroupBox3.Caption := Format(GetLangWord(57), [DateTimeToStr(__kastpriceupdate)]);
  dxStatusBar1.Panels[2].Text := 'livecoin exchange price update status: done!';
  Result := 0;
end;





function TForm1.GetMinexExplorerAddressBalance(addr: string): Double;
var s: string;
begin
  Result := -11;
  dxStatusBar1.Panels[2].Text :=  'pleas wait, initialize SSL Context ...';
  if not InitSSL_ then
  begin
   SetInternetBtnsEnabledState(True);
   Exit;
  end;

  dxStatusBar1.Panels[2].Text := 'mnx addresses blance update, please wait ...';
  SslHttpCli1.URL :=  'https://minexexplorer.com/?r=explorer/address&hash='+addr;
  try
      try
       dxStatusBar1.Panels[0].Visible := True;
       SslHttpCli1.RcvdStream := TMemoryStream.Create;
       SslHttpCli1.Get;
       SslHttpCli1.RcvdStream.Position := 0;
       s := StreamToRawByteString(SslHttpCli1.RcvdStream);
      finally
       SslHttpCli1.RcvdStream.Free;
      end;
  except
      on E: Exception do
      begin
         s := '';
         Result := -11;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         dxStatusBar1.Panels[2].Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
         SetInternetBtnsEnabledState(True);
         dxStatusBar1.Panels[0].Visible := False;
         Exit;
      end;
  end;
  if Trim(s) <> '' then   result := parse_mnxexplorerbalance(s);
  dxStatusBar1.Panels[2].Text := 'mnx address blance update status: done!';
  dxStatusBar1.Panels[0].Visible := False;

end;


function TForm1.UpdateMNXAddrBalance: integer;
var s: string;
    I: Integer;
    val: Double;
begin
  Result := 1;
  dxStatusBar1.Panels[2].Text :=  'pleas wait, initialize SSL Context ...';
  if not InitSSL_ then
  begin
   SetInternetBtnsEnabledState(True);
   Exit;
  end;

  dxStatusBar1.Panels[1].Text := '0%';
  dxStatusBar1.Panels[2].Text := 'mnx addresses blance update, please wait ...';

  with cxGrid2TableView1.DataController do
  begin
    for I := 0 to RecordCount-1 do
    begin

      if StrToBool(cxGrid2TableView1.DataController.Values[i, 5]) then
      begin
        val := GetMinexExplorerAddressBalance(Values[i, 1]);
        if val = -11 then
            Exit
        else
        begin
            Values[i, 2] := val;
            Values[i, 6] := DateTimeToStr(Now);
            Values[i, 7] := '';
        end;
      end;

      dxStatusBar1.Panels[1].Text :=  Round( (100 / RecordCount ) * (I+1) ).ToString + '%';
    end;
  end;
  dxStatusBar1.Panels[2].Text := 'mnx addresses blance: update done!';

  Result := 0;
  __lastexplorerupdate := Now;
  //  '[minexexplorer.com] address explorer (update: ' + DateTimeToStr(__lastexplorerupdate) +')';
  dxCheckGroupBox2.Caption := Format(GetLangWord(59), [DateTimeToStr(__lastexplorerupdate)]);
end;

procedure TForm1.dxBarPopupMenu1Popup(Sender: TObject);
begin


 dxBarButton7.Enabled  := False;
 dxBarButton19.Enabled := False;
 dxBarButton6.Enabled  := False;
 dxBarButton4.Enabled  := False;
 dxBarButton2.Enabled  := False;
 dxBarButton6.Down     := False;

 dxBarSubItem2.Enabled :=  cxGrid2TableView1.DataController.RecordCount > 0;

 if cxGrid2TableView1.DataController.FocusedRecordIndex < 0 then
  Exit;

 dxBarButton7.Enabled  := True;
 dxBarButton19.Enabled := dxBarButton10.Enabled;
 dxBarButton6.Enabled  := True;
 dxBarButton4.Enabled  := True;
 dxBarButton2.Enabled  := True;


 dxBarButton6.Down :=  cxGrid2TableView1.DataController.Values[cxGrid2TableView1.DataController.FocusedRecordIndex, 8] = 0;
end;


procedure TForm1.dxBarSubItem1Popup(Sender: TObject);
begin
  dxBarButton13.Enabled := dxBarButton10.Enabled and ( cxGrid2TableView1.DataController.RecordCount > 0);
end;




{$ENDREGION}


{$REGION ' Top panels expand\collapse '}

function TForm1.GetmaxFormHeight: Integer;
begin
    if not dxCheckGroupBox2.Visible then
    begin
       Result := Form1.Constraints.MinHeight;
    end
    else Result := 0;
end;

//minexbank panel
procedure TForm1.dxBarButton14Click(Sender: TObject);
begin
  dxCheckGroupBox1.Visible := dxBarButton14.Down;

  dxCheckGroupBox1.Properties.OnEditValueChanged := nil;
  dxCheckGroupBox1.CheckBox.Checked := dxBarButton14.Down;
  dxCheckGroupBox1.Properties.OnEditValueChanged :=  dxCheckGroupBox1PropertiesEditValueChanged;


  if not dxCheckGroupBox1.Visible
  then
  begin
    Form1.Constraints.MinHeight := Form1.Constraints.MinHeight  -  dxCheckGroupBox1.Height;
    Form1.Height := Form1.Height - dxCheckGroupBox1.Height;
  end
  else
  begin
    Form1.Constraints.MinHeight := Form1.Constraints.MinHeight   +  dxCheckGroupBox1.Height;
  end;
  Form1.Constraints.MaxHeight := GetmaxFormHeight;
end;

//livecoin panel
procedure TForm1.dxBarButton17Click(Sender: TObject);
begin
  dxCheckGroupBox3.Visible := dxBarButton17.Down;

  dxCheckGroupBox3.Properties.OnEditValueChanged := nil;
  dxCheckGroupBox3.CheckBox.Checked := dxBarButton17.Down;
  dxCheckGroupBox3.Properties.OnEditValueChanged :=  dxCheckGroupBox3PropertiesEditValueChanged;


  if not dxCheckGroupBox3.Visible
  then
  begin
    Form1.Constraints.MinHeight := Form1.Constraints.MinHeight  -  dxCheckGroupBox3.Height;
    Form1.Height := Form1.Height - dxCheckGroupBox3.Height;
  end
  else
  begin
     Form1.Constraints.MinHeight := Form1.Constraints.MinHeight   +  dxCheckGroupBox3.Height;
  end;
  Form1.Constraints.MaxHeight := GetmaxFormHeight;
end;

// addreses panel
procedure TForm1.dxBarButton18Click(Sender: TObject);
var  _File :  TFileStream;
begin
  if dxCheckGroupBox2.Visible then dxCheckGroupBox2.Tag := dxCheckGroupBox2.Height;


  dxCheckGroupBox2.Visible := dxBarButton18.Down;

  dxCheckGroupBox2.Properties.OnEditValueChanged := nil;
  dxCheckGroupBox2.CheckBox.Checked := dxBarButton18.Down;
  dxCheckGroupBox2.Properties.OnEditValueChanged :=  dxCheckGroupBox2PropertiesEditValueChanged;

  if not dxCheckGroupBox2.Visible
  then
  begin
    Form1.Constraints.MinHeight := Form1.Constraints.MinHeight - dxCheckGroupBox2.Tag  ;
    Form1.Height := Form1.Height - dxCheckGroupBox2.Height;
    Form1.Constraints.MinHeight := Form1.Height;
    dxCheckGroupBox2.Align := alTop;
  end
  else
  begin
   Form1.Constraints.MinHeight := Form1.Constraints.MinHeight  + 120;
   dxCheckGroupBox2.Align := alClient;
  // Form1.Constraints.MaxHeight :=0;
  end;

  Form1.Constraints.MaxHeight := GetmaxFormHeight;
end;


procedure TForm1.dxCheckGroupBox1PropertiesEditValueChanged(Sender: TObject);
begin
          dxBarButton14.Click;
end;

procedure TForm1.dxCheckGroupBox2PropertiesEditValueChanged(Sender: TObject);
begin
          dxBarButton18.Click;
end;

procedure TForm1.dxCheckGroupBox3PropertiesEditValueChanged(Sender: TObject);
begin
   dxBarButton17.Click;
end;
{$ENDREGION}


{$REGION ' Popup helper '}
procedure TForm1.OnContextPopupDoTag(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  dxBarPopupMenu2.Tag :=  TComponent(Sender).Tag;
end;

procedure TForm1.dxBarButton_copyvalueAS_1Click(Sender: TObject);
var v: Extended;
begin
  case dxBarPopupMenu2.Tag of
   1  :  v:=   cxSpinEdit0_daybankrate.Value       ;
   2  :  v:=   cxSpinEdit0_weekbankrate.Value      ;
   3  :  v:=   cxSpinEdit0_monthbankrate.Value     ;
   4  :  v:=   cxSpinEdit0_yearbankrate.Value      ;
   5  :  v:=   cxSpinEdit1_daybankrate.Value       ;
   6  :  v:=   cxSpinEdit1_weekbankrate.Value      ;
   7  :  v:=   cxSpinEdit1_monthbankrate.Value     ;
   8  :  v:=   cxSpinEdit1_yearbankrate.Value      ;
   9  :  v:=   cxCalcEdit_expect_amount.Value      ;
   10 :  v:=   cxCalcEdit_existing_amount.Value    ;
   11 :  v:=   cxSpinEdit_USDASK.Value    ;
   12 :  v:=   cxSpinEdit_USDBID.Value    ;
   13 :  v:=   cxSpinEdit_BTCASK.Value    ;
   14 :  v:=   cxSpinEdit_BTCBID.Value    ;
   15 :  v:=   cxSpinEdit_ETHASK.Value    ;
   16 :  v:=   cxSpinEdit_ETHBID.Value    ;
  end;
  FormatSettings.DecimalSeparator := '.';
  Clipboard.SetTextBuf(PWideChar(FloatToStr( v )));
  FormatSettings.DecimalSeparator := ',';
end;

procedure TForm1.dxBarButton_copyvalueAS_2Click(Sender: TObject);
var v: Extended;
begin
  case dxBarPopupMenu2.Tag of
   1  :  v:=   cxSpinEdit0_daybankrate.Value       ;
   2  :  v:=   cxSpinEdit0_weekbankrate.Value      ;
   3  :  v:=   cxSpinEdit0_monthbankrate.Value     ;
   4  :  v:=   cxSpinEdit0_yearbankrate.Value      ;
   5  :  v:=   cxSpinEdit1_daybankrate.Value       ;
   6  :  v:=   cxSpinEdit1_weekbankrate.Value      ;
   7  :  v:=   cxSpinEdit1_monthbankrate.Value     ;
   8  :  v:=   cxSpinEdit1_yearbankrate.Value      ;
   9  :  v:=   cxCalcEdit_expect_amount.Value      ;
   10 :  v:=   cxCalcEdit_existing_amount.Value    ;
   11 :  v:=   cxSpinEdit_USDASK.Value    ;
   12 :  v:=   cxSpinEdit_USDBID.Value    ;
   13 :  v:=   cxSpinEdit_BTCASK.Value    ;
   14 :  v:=   cxSpinEdit_BTCBID.Value    ;
   15 :  v:=   cxSpinEdit_ETHASK.Value    ;
   16 :  v:=   cxSpinEdit_ETHBID.Value    ;
  end;
  FormatSettings.DecimalSeparator := ',';
  Clipboard.SetTextBuf(PWideChar(FloatToStr( v )));
end;

procedure TForm1.dxBarButton_pasteValueClick(Sender: TObject);
var s: string;  v: Extended;  vi: Integer;   b: Boolean;
begin
  b:= False;

  if Clipboard.HasFormat(CF_TEXT) then s := Trim(Clipboard.AsText);

  if Pos('.', s) > 1 then
  begin
      FormatSettings.DecimalSeparator := '.';
      b:= TryStrToFloat(s, v, FormatSettings  );
      FormatSettings.DecimalSeparator := ',';
  end
  else
  if Pos(',', s) > 1 then
      b:=  TryStrToFloat(s, v)
  else
  begin
     b:=  TryStrToInt(s, vi);
     v := vi;
  end;

  if not b then Exit;

  case dxBarPopupMenu2.Tag of
   1  :    cxSpinEdit0_daybankrate.Value   := v   ;
   2  :    cxSpinEdit0_weekbankrate.Value  := v   ;
   3  :    cxSpinEdit0_monthbankrate.Value := v   ;
   4  :    cxSpinEdit0_yearbankrate.Value  := v   ;
   5  :    cxSpinEdit1_daybankrate.Value   := v   ;
   6  :    cxSpinEdit1_weekbankrate.Value  := v   ;
   7  :    cxSpinEdit1_monthbankrate.Value := v   ;
   8  :    cxSpinEdit1_yearbankrate.Value  := v   ;
   9  :    cxCalcEdit_expect_amount.Value  := v   ;
   10 :    cxCalcEdit_existing_amount.Value:= v   ;
   11 :    cxSpinEdit_USDASK.Value  :=  v ;
   12 :    cxSpinEdit_USDBID.Value  :=  v ;
   13 :    cxSpinEdit_BTCASK.Value  :=  v ;
   14 :    cxSpinEdit_BTCBID.Value  :=  v ;
   15 :    cxSpinEdit_ETHASK.Value  :=  v ;
   16 :    cxSpinEdit_ETHBID.Value  :=  v ;
  end;
end;

procedure TForm1.dxBarPopupMenu2Popup(Sender: TObject);

      procedure SetupPasteBtn;
      var s: string;  v: Extended;  vi: Integer;
      begin
          dxBarButton_pasteValue.Enabled := False;
         dxBarButton_pasteValue.Caption := GetLangWord(92);

         if Clipboard.HasFormat(CF_TEXT) then s := Trim(Clipboard.AsText);

         if Pos('.', s) > 1 then
         begin
             FormatSettings.DecimalSeparator := '.';
             if TryStrToFloat(s, v, FormatSettings  ) then
             begin
               FormatSettings.DecimalSeparator := ',';
               dxBarButton_pasteValue.Caption := GetLangWord(92) + v.ToString  ;
               dxBarButton_pasteValue.Enabled := True;
             end;
             FormatSettings.DecimalSeparator := ',';
         end
         else
         if Pos(',', s) > 1 then
         begin
             if TryStrToFloat(s, v) then
             begin
               dxBarButton_pasteValue.Caption := GetLangWord(92) + v.ToString;
               dxBarButton_pasteValue.Enabled := True;
             end;
         end
         else
         begin
            if TryStrToInt(s, vi) then
            begin
              dxBarButton_pasteValue.Caption := GetLangWord(92) + vi.ToString;
              dxBarButton_pasteValue.Enabled := True;
            end;
         end;
      end;

      procedure SetUpCopyBtns(value: Extended);
      begin
        FormatSettings.DecimalSeparator := '.';
        dxBarButton_copyvalueAS_1.Caption := GetLangWord(91)  + FloatToStr( value );
        FormatSettings.DecimalSeparator := ',';
        dxBarButton_copyvalueAS_2.Caption :=  GetLangWord(91) + FloatToStr( value );

       dxBarButton_copyvalueAS_2.Visible :=  ivNever  ;

        if  CompareStr( dxBarButton_copyvalueAS_2.Caption , dxBarButton_copyvalueAS_1.Caption) <> 0 then
        dxBarButton_copyvalueAS_2.Visible :=  ivAlways  ;

      end;

begin
  SetupPasteBtn;
  case dxBarPopupMenu2.Tag of
   1  :    SetUpCopyBtns(  cxSpinEdit0_daybankrate.Value   )    ;
   2  :    SetUpCopyBtns(  cxSpinEdit0_weekbankrate.Value  )    ;
   3  :    SetUpCopyBtns(  cxSpinEdit0_monthbankrate.Value )    ;
   4  :    SetUpCopyBtns(  cxSpinEdit0_yearbankrate.Value  )    ;
   5  :    SetUpCopyBtns(  cxSpinEdit1_daybankrate.Value   )    ;
   6  :    SetUpCopyBtns(  cxSpinEdit1_weekbankrate.Value  )    ;
   7  :    SetUpCopyBtns(  cxSpinEdit1_monthbankrate.Value )    ;
   8  :    SetUpCopyBtns(  cxSpinEdit1_yearbankrate.Value  )    ;
   9  :    SetUpCopyBtns(   cxCalcEdit_expect_amount.Value   )   ;
   10 :    SetUpCopyBtns(   cxCalcEdit_existing_amount.Value )    ;
   11 :    SetUpCopyBtns(  cxSpinEdit_USDASK.Value   )    ;
   12 :    SetUpCopyBtns(  cxSpinEdit_USDBID.Value   )    ;
   13 :    SetUpCopyBtns(  cxSpinEdit_BTCASK.Value   )    ;
   14 :    SetUpCopyBtns(  cxSpinEdit_BTCBID.Value   )    ;
   15 :    SetUpCopyBtns(  cxSpinEdit_ETHASK.Value   )    ;
   16 :    SetUpCopyBtns(  cxSpinEdit_ETHBID.Value   )    ;
  end;
end;
{$ENDREGION}


{$REGION ' form '}

procedure TForm1.FormActivate(Sender: TObject);
begin
  if dxBarButton_updbank.Down and     dxBarButton_updlive.Down  and  dxBarButton_updmnxaddr.Down
  then
       dxBarButton10Click(nil)
  else
    if  dxBarButton_updbank.Down then
           dxBarButton11.Click
    else
      if  dxBarButton_updlive.Down then
            dxBarButton12.Click
      else
        if dxBarButton_updmnxaddr.Down then
            dxBarButton13.Click
                                  ;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxGroupBox3.SetFocus;
  SaveSettings;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cxImageComboBox_calctype.Properties.OnEditValueChanged := nil;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //Form size limits
  Form1.Constraints.MinHeight := Form1.Height  -  dxCheckGroupBox2.Height + 120;
  Form1.Constraints.MinWidth  := Form1.Width;


  cxButtonEdit_TotalWalletMNXFrom.Text := '0';
  //hide abort btn
  dxStatusBar1.Panels[0].Visible := False;
  //empty status
  dxStatusBar1.Panels[2].Text := '';
  dxStatusBar1.Panels[1].Text := '';

  // calculation result view look for calc type = 0
  cxGrid1Level1.GridView     := cxGrid1TableView1;
  cxPageControl1.Tag         := 4;
  cxPageControl1.Pages[4].TabVisible := false;
  cxPageControl1.Pages[5].TabVisible := false;
  cxPageControl1.Pages[6].TabVisible := false;
  cxPageControl1.Pages[7].TabVisible := false;
  cxPageControl1.ActivePageIndex := 0;

  // calculation type
  cxImageComboBox_calctype.ItemIndex := 0;
  cxImageComboBox_calctype.Properties.OnEditValueChanged := cxComboBox1PropertiesEditValueChanged;

  // ssl context - not initialized
  sslcntx_init := False;

  //сетим дефолтовые данные по банк рэйтам в классовые переменные
  __day_rate         := DEF_BANK_RATE_DAY  ;//   0.59;
  __week_rate        := DEF_BANK_RATE_WEEK ;//   4.5;
  __month_rate       := DEF_BANK_RATE_MONTH;//  13.9;
  __year_rate        := DEF_BANK_RATE_YEAR ;//  70;
  __lastrateupdate   := StrToDateTime(LAST_UPDATE); // EncodeDate(2017, 12, 15);

  //сетим дефолтовые данные по explorer-у
  __lastexplorerupdate := StrToDateTime(LAST_UPDATE);

  //сетим дефолтовые данные по ценам в классовые переменные и контролы
  __kastpriceupdate  := StrToDateTime(LAST_UPDATE);
  cxSpinEdit_USDASK.Value :=   DEF_LIVECOIN_MNXUSD_ASK ;
  cxSpinEdit_USDBID.Value :=   DEF_LIVECOIN_MNXUSD_BID ;
  cxSpinEdit_BTCASK.Value :=   DEF_LIVECOIN_MNXBTC_ASK ;
  cxSpinEdit_BTCBID.Value :=   DEF_LIVECOIN_MNXBTC_BID ;
  cxSpinEdit_ETHASK.Value :=   DEF_LIVECOIN_MNXETH_ASK ;
  cxSpinEdit_ETHBID.Value :=   DEF_LIVECOIN_MNXETH_BID ;
  cxSpinEdit0_daybankrate.Value   := DEF_BANK_RATE_DAY  ;
  cxSpinEdit0_weekbankrate.Value  := DEF_BANK_RATE_WEEK ;
  cxSpinEdit0_monthbankrate.Value := DEF_BANK_RATE_MONTH;
  cxSpinEdit0_yearbankrate.Value  := DEF_BANK_RATE_YEAR ;
  cxSpinEdit1_daybankrate.Value   := DEF_BANK_RATE_DAY  ;
  cxSpinEdit1_weekbankrate.Value  := DEF_BANK_RATE_WEEK ;
  cxSpinEdit1_monthbankrate.Value := DEF_BANK_RATE_MONTH;
  cxSpinEdit1_yearbankrate.Value  := DEF_BANK_RATE_YEAR ;

  {до загрузки и после}
  cxLabel13.Caption :=  __day_rate.ToString   +'%';
  cxLabel14.Caption :=  __week_rate.ToString  +'%';
  cxLabel15.Caption :=  __month_rate.ToString +'%';
  cxLabel16.Caption :=  __year_rate.ToString  +'%';

  dxBarButton_updbank.Down := False;
  dxBarButton_updlive.Down := False;
  dxBarButton_updmnxaddr.Down := False;

  __donatebalance := 0;
  setwordlist;
  LoadSettings;



  {до загрузки и после}
  cxLabel13.Caption :=  __day_rate.ToString   +'%';
  cxLabel14.Caption :=  __week_rate.ToString  +'%';
  cxLabel15.Caption :=  __month_rate.ToString +'%';
  cxLabel16.Caption :=  __year_rate.ToString  +'%';


  dxCheckGroupBox3.Caption := Format(GetLangWord(57), [DateTimeToStr(__kastpriceupdate)]);
  dxCheckGroupBox1.Caption := Format(GetLangWord(58), [DateTimeToStr(__lastrateupdate)]);
  dxCheckGroupBox2.Caption := Format(GetLangWord(59), [DateTimeToStr(__lastexplorerupdate)]);


    {
  dxCheckGroupBox3.Caption := '[livecoin.net] price for 1 MNX (update: ' + DateTimeToStr(__kastpriceupdate) +')';
  dxCheckGroupBox1.Caption := '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
  dxCheckGroupBox2.Caption := '[minexexplorer.com] address explorer (update: ' + DateTimeToStr(__lastexplorerupdate) +')';
    }

end;
{$ENDREGION}

{$REGION ' settings '}

procedure TForm1.SaveSettings;
var IniFile : TIcsIniFile;
    _File : TFileStream;
begin
    IniFile      := TIcsIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );
    IniFile.WriteFloat('rates','day',    __day_rate);
    IniFile.WriteFloat('rates','week',   __week_rate);
    IniFile.WriteFloat('rates','month',  __month_rate);
    IniFile.WriteFloat('rates','year',   __year_rate);
    IniFile.WriteDateTime('rates', 'update', __lastrateupdate );
    IniFile.WriteDateTime('livecoin', 'update', __kastpriceupdate );
    IniFile.WriteDateTime('explorer', 'update', __lastexplorerupdate );

    IniFile.WriteFloat('z','b',    __donatebalance);


    IniFile.WriteBool('user', 'p1',dxBarButton14.Down   );
    IniFile.WriteBool('user', 'p2',dxBarButton17.Down   );
    IniFile.WriteBool('user', 'p3',dxBarButton18.Down   );


    IniFile.WriteFloat('user','USDBID',  Double(cxSpinEdit_USDBID.Value) );
    IniFile.WriteFloat('user','USDASK',  Double(cxSpinEdit_USDASK.Value) );
    IniFile.WriteFloat('user','BTCASK',  Double(cxSpinEdit_BTCASK.Value) );
    IniFile.WriteFloat('user','BTCBID',  Double(cxSpinEdit_BTCBID.Value) );
    IniFile.WriteFloat('user','ETHASK',  Double(cxSpinEdit_ETHASK.Value) );
    IniFile.WriteFloat('user','ETHBID',  Double(cxSpinEdit_ETHBID.Value) );
    IniFile.WriteFloat('user','exp_amount',   Double(cxCalcEdit_expect_amount.Value) );
    IniFile.WriteFloat('user','amount',       Double(cxCalcEdit_existing_amount.Value) );
    IniFile.WriteFloat('user','day_rate',     Double(cxSpinEdit0_daybankrate.Value) );
    IniFile.WriteFloat('user','week_rate',    Double(cxSpinEdit0_weekbankrate.Value) );
    IniFile.WriteFloat('user','month_rate',   Double(cxSpinEdit0_monthbankrate.Value) );
    IniFile.WriteFloat('user','year_rate',    Double(cxSpinEdit0_yearbankrate.Value) );
    IniFile.WriteFloat('user','day_rate1',     Double(cxSpinEdit1_daybankrate.Value) );
    IniFile.WriteFloat('user','week_rate1',    Double(cxSpinEdit1_weekbankrate.Value) );
    IniFile.WriteFloat('user','month_rate1',   Double(cxSpinEdit1_monthbankrate.Value) );
    IniFile.WriteFloat('user','year_rate1',    Double(cxSpinEdit1_yearbankrate.Value) );
    IniFile.WriteInteger('user','day_park_count',       Integer(cxSpinEdit0_dailyparkcount.Value)   );
    IniFile.WriteInteger('user','week_park_count',      Integer(cxSpinEdit0_weeklyparkcount.Value)  );
    IniFile.WriteInteger('user','month_park_count',     Integer(cxSpinEdit0_monthlyparkcount.Value) );
    IniFile.WriteInteger('user','year_park_count',      Integer(cxSpinEdit0_yearlyparkcount.Value)  );
    IniFile.WriteInteger('user','day_park_count1',       Integer(cxSpinEdit1_dayparkcount.Value)   );
    IniFile.WriteInteger('user','week_park_count1',      Integer(cxSpinEdit1_weekparkcount.Value)  );
    IniFile.WriteInteger('user','month_park_count1',     Integer(cxSpinEdit1_monthparkcount.Value) );
    IniFile.WriteInteger('user','year_park_count1',      Integer(cxSpinEdit1_yearparkcount.Value)  );
    IniFile.WriteBool('user', 'day_includeprofit',   cxCheckBox0_dayincludeprofit.Checked );
    IniFile.WriteBool('user', 'week_includeprofit',  cxCheckBox0_weekincludeprofit.Checked );
    IniFile.WriteBool('user', 'month_includeprofit', cxCheckBox0_monthincludeprofit.Checked );
    IniFile.WriteBool('user', 'year_includeprofit',  cxCheckBox0_yearincludeprofit.Checked );
    IniFile.WriteBool('user', 'day_includeprofit1',   cxCheckBox1_dayincludeprofit.Checked );
    IniFile.WriteBool('user', 'week_includeprofit1',  cxCheckBox1_weekincludeprofit.Checked );
    IniFile.WriteBool('user', 'month_includeprofit1', cxCheckBox1_monthincludeprofit.Checked );
    IniFile.WriteBool('user', 'year_includeprofit1',  cxCheckBox1_yearincludeprofit.Checked );


    IniFile.WriteBool('user', '_updmnxaddr',       dxBarButton_updmnxaddr.Down  );
    IniFile.WriteBool('user', '_updlive',          dxBarButton_updlive.Down     );
    IniFile.WriteBool('user', '_updbank',          dxBarButton_updbank.Down     );

    IniFile.WriteBool('user','lang', dxBarButton15.Down);

    IniFile.WriteInteger('user','digits_after_comma',     cxBarEditItem2.EditValue);

    IniFile.UpdateFile;
    IniFile.Free;


      _File := TFileStream.Create('waddr.dat', fmOpenReadWrite or fmCreate);
      try
        cxGrid2TableView1.DataController.SaveToStream(_File);
      finally
         _File.Free;
      end;


end;

procedure TForm1.LoadSettings;
var IniFile : TIcsIniFile;
    _File   : TFileStream;
begin

  IniFile      := TIcsIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );
  try

    __donatebalance       := IniFile.ReadFloat('z','b',    __donatebalance);
   __day_rate       := IniFile.ReadFloat('rates','day',    __day_rate);
   __week_rate      := IniFile.ReadFloat('rates','week',   __week_rate);
   __month_rate     := IniFile.ReadFloat('rates','month',  __month_rate);
   __year_rate      := IniFile.ReadFloat('rates','year',   __year_rate);
   __lastrateupdate := IniFile.ReadDateTime('rates', 'update', __lastrateupdate );
   __kastpriceupdate := IniFile.ReadDateTime('livecoin', 'update', __kastpriceupdate );

  __kastpriceupdate    := IniFile.ReadDateTime('livecoin', 'update', __kastpriceupdate );
  __lastexplorerupdate := IniFile.ReadDateTime('explorer', 'update', __lastexplorerupdate );


  dxBarButton14.Down := IniFile.ReadBool('user', 'p1', dxBarButton14.Down   );
  if not dxBarButton14.Down then dxBarButton14Click(nil);


  dxBarButton17.Down := IniFile.ReadBool('user', 'p2', dxBarButton17.Down   );
  if not dxBarButton17.Down then dxBarButton17Click(nil);

  dxBarButton18.Down := IniFile.ReadBool('user', 'p3', dxBarButton18.Down   );
  if not dxBarButton18.Down then dxBarButton18Click(nil);


    cxCalcEdit_expect_amount.Value     :=  IniFile.ReadFloat('user','exp_amount',  0.0);
    cxCalcEdit_existing_amount.Value   :=  IniFile.ReadFloat('user','amount',      0.0);

     //Livecoin prices
    cxSpinEdit_USDBID.Value := IniFile.ReadFloat('user','USDBID',  Double(cxSpinEdit_USDBID.Value) );
    cxSpinEdit_USDASK.Value := IniFile.ReadFloat('user','USDASK',  Double(cxSpinEdit_USDASK.Value) );
    cxSpinEdit_BTCASK.Value := IniFile.ReadFloat('user','BTCASK',  Double(cxSpinEdit_BTCASK.Value) );
    cxSpinEdit_BTCBID.Value := IniFile.ReadFloat('user','BTCBID',  Double(cxSpinEdit_BTCBID.Value) );
    cxSpinEdit_ETHASK.Value := IniFile.ReadFloat('user','ETHASK',  Double(cxSpinEdit_ETHASK.Value) );
    cxSpinEdit_ETHBID.Value := IniFile.ReadFloat('user','ETHBID',  Double(cxSpinEdit_ETHBID.Value) );

    //parking settings
    cxSpinEdit0_dailyparkcount.Value       :=  IniFile.ReadInteger('user','day_park_count',       Integer(cxSpinEdit0_dailyparkcount.Value   ));
    cxSpinEdit0_weeklyparkcount.Value      :=  IniFile.ReadInteger('user','week_park_count',      Integer(cxSpinEdit0_weeklyparkcount.Value  ));
    cxSpinEdit0_monthlyparkcount.Value     :=  IniFile.ReadInteger('user','month_park_count',     Integer(cxSpinEdit0_monthlyparkcount.Value ));
    cxSpinEdit0_yearlyparkcount.Value      :=  IniFile.ReadInteger('user','year_park_count',      Integer(cxSpinEdit0_yearlyparkcount.Value  ));
    cxSpinEdit1_dayparkcount.Value         :=  IniFile.ReadInteger('user','day_park_count1',      Integer(cxSpinEdit1_dayparkcount.Value   ));
    cxSpinEdit1_weekparkcount.Value        :=  IniFile.ReadInteger('user','week_park_count1',     Integer(cxSpinEdit1_weekparkcount.Value  ));
    cxSpinEdit1_monthparkcount.Value       :=  IniFile.ReadInteger('user','month_park_count1',    Integer(cxSpinEdit1_monthparkcount.Value ));
    cxSpinEdit1_yearparkcount.Value        :=  IniFile.ReadInteger('user','year_park_count1',     Integer(cxSpinEdit1_yearparkcount.Value  ));
    cxCheckBox0_dayincludeprofit.Checked   :=  IniFile.ReadBool('user', 'day_includeprofit',      cxCheckBox0_dayincludeprofit.Checked );
    cxCheckBox0_weekincludeprofit.Checked  :=  IniFile.ReadBool('user', 'week_includeprofit',     cxCheckBox0_weekincludeprofit.Checked );
    cxCheckBox0_monthincludeprofit.Checked :=  IniFile.ReadBool('user', 'month_includeprofit',    cxCheckBox0_monthincludeprofit.Checked );
    cxCheckBox0_yearincludeprofit.Checked  :=  IniFile.ReadBool('user', 'year_includeprofit',     cxCheckBox0_yearincludeprofit.Checked );
    cxCheckBox1_dayincludeprofit.Checked   :=  IniFile.ReadBool('user', 'day_includeprofit1',     cxCheckBox1_dayincludeprofit.Checked );
    cxCheckBox1_weekincludeprofit.Checked  :=  IniFile.ReadBool('user', 'week_includeprofit1',    cxCheckBox1_weekincludeprofit.Checked );
    cxCheckBox1_monthincludeprofit.Checked :=  IniFile.ReadBool('user', 'month_includeprofit1',   cxCheckBox1_monthincludeprofit.Checked );
    cxCheckBox1_yearincludeprofit.Checked  :=  IniFile.ReadBool('user', 'year_includeprofit1',    cxCheckBox1_yearincludeprofit.Checked );
    cxSpinEdit0_daybankrate.Value          :=  IniFile.ReadFloat('user','day_rate',     Double(__day_rate));
    cxSpinEdit0_weekbankrate.Value         :=  IniFile.ReadFloat('user','week_rate',    Double(__week_rate));
    cxSpinEdit0_monthbankrate.Value        :=  IniFile.ReadFloat('user','month_rate',   Double(__month_rate));
    cxSpinEdit0_yearbankrate.Value         :=  IniFile.ReadFloat('user','year_rate',    Double(__year_rate));

    cxSpinEdit1_daybankrate.Value   :=  IniFile.ReadFloat('user','day_rate1',     Double(__day_rate));
    cxSpinEdit1_weekbankrate.Value  :=  IniFile.ReadFloat('user','week_rate1',    Double(__week_rate));
    cxSpinEdit1_monthbankrate.Value :=  IniFile.ReadFloat('user','month_rate1',   Double(__month_rate));
    cxSpinEdit1_yearbankrate.Value  :=  IniFile.ReadFloat('user','year_rate1',    Double(__year_rate));


    dxBarButton_updmnxaddr.Down            := IniFile.ReadBool('user', '_updmnxaddr',  dxBarButton_updmnxaddr.Down  );
    dxBarButton_updlive.Down               := IniFile.ReadBool('user', '_updlive',     dxBarButton_updlive.Down     );
    dxBarButton_updbank.Down               := IniFile.ReadBool('user', '_updbank',     dxBarButton_updbank.Down     );

    cxBarEditItem2.EditValue :=  IniFile.ReadInteger('user','digits_after_comma',     cxBarEditItem2.EditValue);

          if IniFile.ReadBool('user','lang', true) then
    dxBarButton15.Click else dxBarButton20.Click;

  finally
      IniFile.Free;
  end;



    if FileExists('waddr.dat') then
    begin
      try
        _File := TFileStream.Create('waddr.dat', fmOpenRead );
        _File.Position := 0;
        cxGrid2TableView1.DataController.LoadFromStream(_File);
      finally
         _File.Free;
      end;
    end;
    AddrRefreshTotalBalance;
end;

{$ENDREGION}


{$REGION ' lang '}


function TForm1.GetLangWord(word_index: Integer): string;
var i: Integer;
begin
  if dxBarButton15.Down then   i :=  0 else i := 1  ;
  case i of
   0: result := Unit5.en_wordlist[word_index];
   1: result := Unit5.ru_wordlist[word_index];
  end;
end;


procedure TForm1.ApplyLanguage(I: integer);
  function get_text(word_index: Integer): string;
  begin
     case i of
      0: result := Unit5.en_wordlist[word_index];
      1: result := Unit5.ru_wordlist[word_index];
     end;
  end;

var s: string;
begin


   //update
   dxBarSubItem1.Caption := get_text(0);
   //settings
   dxBarSubItem3.Caption := get_text(1);
   //info
   dxBarButton16.Caption := get_text(2);

   //update all
   dxBarButton10.Caption := get_text(3);
   //update minex bank
   dxBarButton11.Caption := get_text(4);
   //update livecoin
   dxBarButton12.Caption := get_text(5);
   //update addresses
   dxBarButton13.Caption := get_text(6);

   //Update on startup
   dxBarButton_updbank.Caption := get_text(7);
   dxBarButton_updlive.Caption := get_text(8);
   dxBarButton_updmnxaddr.Caption := get_text(9);

   //result digits after comma
    cxBarEditItem2.Caption := get_text(10);

   //day
    cxLabel9.Caption := get_text(11);
   //week
    cxLabel10.Caption := get_text(12);
   //month
    cxLabel11.Caption := get_text(13);
   //year
    cxLabel12.Caption := get_text(14);

    //best ask
    cxLabel1.Caption  := get_text(15);
    cxLabel27.Caption := get_text(15);
    cxLabel29.Caption := get_text(15);
    //best bid
    cxLabel21.Caption := get_text(16);
    cxLabel28.Caption := get_text(16);
    cxLabel30.Caption := get_text(16);

    //total
    cxLabel34.Caption :=  get_text(17);
    //place to existing amount
    cxButtonEdit_TotalWalletMNXFrom.Properties.Buttons[0].Caption := get_text(18);


    //mnx address
    cxGrid2TableView1Column2.Caption :=  get_text(19);
    //mnx balance
    cxGrid2TableView1Column3.Caption :=  get_text(20);
    //label
    cxGrid2TableView1Column4.Caption :=  get_text(21);
    //last update
    cxGrid2TableView1Column5.Caption :=  get_text(22);

    // set existing amount same to address balance
    dxBarButton7.Caption :=  get_text(23);
    // add new address ...
    dxBarButton1.Caption :=  get_text(24);
    //edit
    dxBarButton3.Caption :=  get_text(25);
    //Update selected mnx address
    dxBarButton19.Caption :=  get_text(26);

    //enable group update
    dxBarButton6.Caption :=  get_text(27);

    //hide selected
    dxBarButton4.Caption :=  get_text(28);
    //all addresses
    dxBarSubItem2.Caption :=  get_text(29);
    //delete
    dxBarButton2.Caption :=  get_text(30);
    //show hidden
    dxBarButton5.Caption :=  get_text(31);
    //enable updates
    dxBarButton9.Caption :=  get_text(32);
    //disable updates
    dxBarButton8.Caption :=  get_text(33);

    //  calculation
    cxGroupBox3.Caption :=   get_text(34);
    //CALCULATE
    cxButton_Calc.Caption :=   get_text(35);

    //day
    cxTabSheet1.Caption :=   get_text(36);
    //week
    cxTabSheet2.Caption :=   get_text(37);
    //month
    cxTabSheet3.Caption :=   get_text(38);
    //year
    cxTabSheet4.Caption :=   get_text(39);

    //day
    cxTabSheet8.Caption :=   get_text(36);
    //week
    cxTabSheet9.Caption :=   get_text(37);
    //mont
    cxTabSheet10.Caption :=   get_text(38);
    //year
    cxTabSheet11.Caption :=   get_text(39);

    //calculate profit from existing amount of mnx
    cxImageComboBox_calctype.Properties.Items[0].Description :=   get_text(40);
    //calculate deposit for expecting profit amount with parks limit
    cxImageComboBox_calctype.Properties.Items[1].Description :=    get_text(41);
    //calculate period for expecting profit amount from existing amount of mnx
    cxImageComboBox_calctype.Properties.Items[2].Description :=    get_text(42);


    //parking rate
    cxLabel20.Caption :=   get_text(43);
    cxLabel3.Caption  :=   get_text(43);
    cxLabel7.Caption  :=   get_text(43);
    cxLabel24.Caption :=   get_text(43);
    cxLabel37.Caption :=   get_text(43);
    cxLabel40.Caption :=   get_text(43);
    cxLabel42.Caption :=   get_text(43);
    cxLabel44.Caption :=   get_text(43);
    //park for
    cxLabel2.Caption  :=   get_text(44);
    cxLabel6.Caption  :=   get_text(44);
    cxLabel17.Caption :=   get_text(44);
    cxLabel23.Caption :=   get_text(44);
    //max parks
    cxLabel47.Caption :=   get_text(53);
    cxLabel51.Caption :=   get_text(53);
    cxLabel49.Caption :=   get_text(53);
    cxLabel45.Caption :=   get_text(53);
    //day(s)
    cxLabel4.Caption  :=   get_text(45);
    cxLabel48.Caption :=   get_text(45);

    //weeks
    cxLabel8.Caption   :=   get_text(47);
    cxLabel52.Caption  :=   get_text(47);

    //months
    cxLabel18.Caption :=   get_text(48);
    cxLabel50.Caption :=   get_text(48);

    //years
    cxLabel25.Caption :=   get_text(49);
    cxLabel46.Caption :=   get_text(49);

    //include profit from every day
    cxCheckBox0_dayincludeprofit.Caption   :=   get_text(46);
    cxCheckBox0_weekincludeprofit.Caption  :=   get_text(50);
    cxCheckBox0_monthincludeprofit.Caption :=   get_text(51);
    cxCheckBox0_yearincludeprofit.Caption  :=   get_text(52);
    cxCheckBox1_dayincludeprofit.Caption   :=   get_text(46);
    cxCheckBox1_weekincludeprofit.Caption   :=   get_text(50);
    cxCheckBox1_monthincludeprofit.Caption  :=   get_text(51);
    cxCheckBox1_yearincludeprofit.Caption   :=   get_text(52);


    //expecting amount
    cxLabel36.Caption :=   get_text(54);
    //existing amount
    cxLabel33.Caption :=   get_text(55);
    //results
    cxGroupBox5.Caption :=   get_text(56);

    //last update bank
    dxCheckGroupBox3.Caption := Format(GetLangWord(57), [DateTimeToStr(__kastpriceupdate)]);
    //last update livecoin
    dxCheckGroupBox1.Caption := Format(GetLangWord(58), [DateTimeToStr(__lastrateupdate)]);
    //last update addr
    dxCheckGroupBox2.Caption := Format(GetLangWord(59), [DateTimeToStr(__lastexplorerupdate)]);

    //  period
    cxGrid1TableView1Column1.Caption :=   get_text(60);
    cxGrid1TableView2Column1.Caption :=   get_text(60);
    cxGrid1TableView3Column1.Caption :=   get_text(60);
    //  count
    cxGrid1TableView1Column7.Caption :=   get_text(61);
    cxGrid1TableView2Column2.Caption :=   get_text(61);
    cxGrid1TableView3Column2.Caption :=   get_text(61);
     //  MNX total
    cxGrid1TableView1Column3.Caption :=    get_text(62);
    cxGrid1TableView3Column3.Caption :=    get_text(62);
     //  MNX profit
    cxGrid1TableView1Column2.Caption :=    get_text(63);
    cxGrid1TableView3Column4.Caption :=    get_text(63);
     //  USD profit
    cxGrid1TableView1Column4.Caption :=    get_text(64);
    cxGrid1TableView3Column6.Caption :=    get_text(64);
     //  BTC profit
    cxGrid1TableView1Column5.Caption :=    get_text(65);
    cxGrid1TableView3Column7.Caption :=    get_text(65);
    //  ETH profit
    cxGrid1TableView1Column6.Caption :=    get_text(66);
    cxGrid1TableView3Column8.Caption :=    get_text(66);
    //abort
    cxButton1.Caption                :=    get_text(67);


    cxGrid1TableView2Column3.Caption :=   get_text(68);
    cxGrid1TableView2Column4.Caption :=   get_text(69);
    cxGrid1TableView2Column6.Caption :=   get_text(70);
    cxGrid1TableView2Column7.Caption :=   get_text(71);
    cxGrid1TableView2Column8.Caption :=   get_text(72);

    cxGrid1TableView1.DataController.Values[0, 0] := GetLangWord(36);//  'Day';
    cxGrid1TableView1.DataController.Values[1, 0] := GetLangWord(37);//  'Week';
    cxGrid1TableView1.DataController.Values[2, 0] := GetLangWord(38);// 'Month';
    cxGrid1TableView1.DataController.Values[3, 0] := GetLangWord(39);// 'Year';

    cxGrid1TableView2.DataController.Values[0, 0] := GetLangWord(36);//  'Day';
    cxGrid1TableView2.DataController.Values[1, 0] := GetLangWord(37);//  'Week';
    cxGrid1TableView2.DataController.Values[2, 0] := GetLangWord(38);// 'Month';
    cxGrid1TableView2.DataController.Values[3, 0] := GetLangWord(39);// 'Year';

    cxGrid1TableView3.DataController.Values[0, 0] := GetLangWord(36);//  'Day';
    cxGrid1TableView3.DataController.Values[1, 0] := GetLangWord(37);//  'Week';
    cxGrid1TableView3.DataController.Values[2, 0] := GetLangWord(38);// 'Month';
    cxGrid1TableView3.DataController.Values[3, 0] := GetLangWord(39);// 'Year';



    dxBarButton_copyvalueAS_1.Caption :=  GetLangWord(91);
    dxBarButton_pasteValue.Caption :=     GetLangWord(92);
    dxBarButton_copyvalueAS_2.Caption :=  GetLangWord(91);


    {
        az( , '','');
        az( , '','');
        az( , '','');
        az( , '','');
        az( , '','');

    }
end;


{$ENDREGION}











end.
