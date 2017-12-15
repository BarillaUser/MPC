unit Unit1;

interface

{
*************************************************************************
prj: MinexBank Profit Calculator
ver: 0.2
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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.IniFiles,
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.Menus, Dialogs,   System.StrUtils,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxClasses, dxBar, cxCheckBox, cxImage, cxLabel, cxMemo,  cxButtons, cxPC,
  cxGroupBox, dxStatusBar, cxDropDownEdit, dxSkinsCore, dxSkinOffice2016Dark, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter,  dxSkinsForm, dxSkinsdxBarPainter, dxBarBuiltInMenu,

  OverbyteIcsWndControl, OverbyteIcsHttpProt, OverbyteIcsWSocket, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGridLevel, cxGrid;

type

  TRBankRates = packed record
    id    : integer;
    name  : string;
    rate  : double;
    period: integer;
  end;
  TRBankRatesArray = array of TRBankRates;

  TForm1 = class(TForm)
    cxButton1: TcxButton;
    dxStatusBar1: TdxStatusBar;
    cxButton2: TcxButton;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxLabel19: TcxLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxButton4: TcxButton;
    dxSkinController1: TdxSkinController;
    cxLabel3: TcxLabel;
    cxSpinEdit4: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxSpinEdit6: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxSpinEdit8: TcxSpinEdit;
    cxLabel26: TcxLabel;
    SslHttpCli1: TSslHttpCli;
    SslContext1: TSslContext;
    cxGroupBox1: TcxGroupBox;
    cxButton5: TcxButton;
    cxLabel31: TcxLabel;
    cxSpinEdit12: TcxSpinEdit;
    cxLabel32: TcxLabel;
    cxLabel2: TcxLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxSpinEdit5: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxLabel17: TcxLabel;
    cxSpinEdit7: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxCheckBox4: TcxCheckBox;
    cxLabel23: TcxLabel;
    cxSpinEdit9: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxCheckBox5: TcxCheckBox;
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
    cxButton_abort: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLabel13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure SslHttpCli1RequestDone(Sender: TObject; RqType: THttpRequest; ErrCode: Word);
    procedure cxButton_abortClick(Sender: TObject);
  private
    { Private declarations }
    dText: string;  
    __lastrateupdate : TDateTime;
    __day_rate   : Double;
    __week_rate  : Double;
    __month_rate : Double;
    __year_rate  : Double;
    sslcntx_init : Boolean;
    procedure UpdateControlsRatesInfo(const ng: boolean = false);

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, OverbyteIcsSslX509Utils, SynCommons;

procedure procCalc(am: Extended; rate: Extended; rounds: Integer; incprofit: Boolean; var r_profit: Extended);
var
  I: Integer;
  round_profit, p_amount : Extended;
begin
     r_profit := 0;
     p_amount := am;

     for I := 1 to rounds do
     begin
       round_profit := p_amount / 100 * rate; //Профит раунда
       r_profit := r_profit + round_profit;   //Сумма всех профитов

      if incprofit then  p_amount :=  round_profit + p_amount;
     end;
end;

function lc_microparse(src, _begin, _end: string): string;
var i_begin, i_end: Integer;
begin
 i_begin := Pos(  _begin, src);
 i_end := System.StrUtils.PosEx(_end, src, i_begin);
 Result := Trim( Copy(src, i_begin + _begin.Length, i_end-(i_begin + _begin.Length) ) );
end;


procedure TForm1.cxButton1Click(Sender: TObject);
var
 day_totalProfit    : Extended;
 week_totalProfit   : Extended;
 month_totalProfit  : Extended;
 year_totalProfit   : Extended;
begin

    procCalc( cxSpinEdit12.Value, cxSpinEdit2.Value, cxSpinEdit1.Value, cxCheckBox2.Checked, day_totalProfit  );
    procCalc( cxSpinEdit12.Value, cxSpinEdit4.Value, cxSpinEdit5.Value, cxCheckBox3.Checked, week_totalProfit  );
    procCalc( cxSpinEdit12.Value, cxSpinEdit6.Value, cxSpinEdit7.Value, cxCheckBox4.Checked, month_totalProfit  );
    procCalc( cxSpinEdit12.Value, cxSpinEdit8.Value, cxSpinEdit9.Value, cxCheckBox5.Checked, year_totalProfit );

  cxGrid1TableView1.DataController.BeginUpdate;

  cxGrid1TableView1.DataController.Values[3, 1] := cxSpinEdit1.Value;
  cxGrid1TableView1.DataController.Values[2, 1] := cxSpinEdit5.Value;
  cxGrid1TableView1.DataController.Values[1, 1] := cxSpinEdit7.Value;
  cxGrid1TableView1.DataController.Values[0, 1] := cxSpinEdit9.Value;

  cxGrid1TableView1.DataController.Values[3, 3] :=   FloatToStr( day_totalProfit );
  cxGrid1TableView1.DataController.Values[2, 3] :=   FloatToStr( week_totalProfit );
  cxGrid1TableView1.DataController.Values[1, 3] :=   FloatToStr( month_totalProfit );
  cxGrid1TableView1.DataController.Values[0, 3] :=   FloatToStr( year_totalProfit );

  cxGrid1TableView1.DataController.Values[3, 2] := Extended(cxSpinEdit12.Value)+day_totalProfit   ;
  cxGrid1TableView1.DataController.Values[2, 2] := Extended(cxSpinEdit12.Value)+week_totalProfit  ;
  cxGrid1TableView1.DataController.Values[1, 2] := Extended(cxSpinEdit12.Value)+month_totalProfit ;
  cxGrid1TableView1.DataController.Values[0, 2] := Extended(cxSpinEdit12.Value)+year_totalProfit  ;

  cxGrid1TableView1.DataController.Values[3, 4] := Extended(cxSpinEdit_USDASK.Value) * day_totalProfit  ;
  cxGrid1TableView1.DataController.Values[2, 4] := Extended(cxSpinEdit_USDASK.Value) * week_totalProfit  ;
  cxGrid1TableView1.DataController.Values[1, 4] := Extended(cxSpinEdit_USDASK.Value) * month_totalProfit ;
  cxGrid1TableView1.DataController.Values[0, 4] := Extended(cxSpinEdit_USDASK.Value) * year_totalProfit  ;

  cxGrid1TableView1.DataController.Values[3, 5] := Extended(cxSpinEdit_BTCASK.Value) * day_totalProfit  ;
  cxGrid1TableView1.DataController.Values[2, 5] := Extended(cxSpinEdit_BTCASK.Value) * week_totalProfit  ;
  cxGrid1TableView1.DataController.Values[1, 5] := Extended(cxSpinEdit_BTCASK.Value) * month_totalProfit ;
  cxGrid1TableView1.DataController.Values[0, 5] := Extended(cxSpinEdit_BTCASK.Value) * year_totalProfit  ;

  cxGrid1TableView1.DataController.Values[3, 6] := Extended(cxSpinEdit_ETHASK.Value) * day_totalProfit  ;
  cxGrid1TableView1.DataController.Values[2, 6] := Extended(cxSpinEdit_ETHASK.Value) * week_totalProfit  ;
  cxGrid1TableView1.DataController.Values[1, 6] := Extended(cxSpinEdit_ETHASK.Value) * month_totalProfit ;
  cxGrid1TableView1.DataController.Values[0, 6] := Extended(cxSpinEdit_ETHASK.Value) * year_totalProfit  ;

  cxGrid1TableView1.DataController.EndUpdate;




  //dxStatusBar1.SimplePanelStyle.Text := 'total: ' + (Extended(cxSpinEdit12.Value)+totalProfit).ToString + ' | only profit: ' +  FloatToStr( totalProfit );
end;

procedure TForm1.cxButton2Click(Sender: TObject);
var RBankRates: TRBankRatesArray;
     s: UTF8String;
     bank_c, liveco_c: Boolean;
begin
    cxButton_abort.Visible := True;
    cxButton2.Visible      := False;

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
            cxButton_abort.Visible := False;
            cxButton2.Visible      := True;
            Exit;
        end;
    end;
     sslcntx_init := True;    
    end;



    (*         *)

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
         cxGroupBox2.Caption := '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
        end;
    except
        on E:Exception do
        begin
           s := '';
           ShowMessage( '. Status = ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
           dxStatusBar1.SimplePanelStyle.Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
           cxButton_abort.Visible := False;
           cxButton2.Visible      := True;
           Exit;
        end;
    end;

  //==============================================================
 (* *) dxStatusBar1.SimplePanelStyle.Text := 'updating livecoin prices info, please wait ...';
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
       cxGroupBox1.Caption := '[livecoin.net] price for 1 MNX (update: ' + DateTimeToStr(__lastrateupdate) +')';
       liveco_c := True;
      end;
  except
        on E:Exception do
        begin
            s := '';
            ShowMessage( '. Status = ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
            dxStatusBar1.SimplePanelStyle.Text := 'Request status = ' + SslHttpCli1.ReasonPhrase;
            cxButton_abort.Visible := False;
            cxButton2.Visible      := True;
            Exit;
        end;
  end;

  cxButton_abort.Visible := False;
  cxButton2.Visible      := True;

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

  UpdateControlsRatesInfo(True);
end;

procedure TForm1.UpdateControlsRatesInfo(const ng: boolean = false);
begin
  cxLabel13.Caption :=  __day_rate.ToString +'%';
  cxLabel14.Caption :=  __week_rate.ToString +'%';
  cxLabel15.Caption :=  __month_rate.ToString +'%';
  cxLabel16.Caption :=  __year_rate.ToString +'%';

  cxSpinEdit2.Value := __day_rate;
  cxSpinEdit4.Value := __week_rate;
  cxSpinEdit6.Value := __month_rate;
  cxSpinEdit8.Value := __year_rate;

  if not ng then begin
  cxGroupBox1.Caption := '[livecoin.net] price for 1 MNX (update: ' + DateTimeToStr(__lastrateupdate) +')';
  cxGroupBox2.Caption := '[minexbank.com] rates (update: ' + DateTimeToStr(__lastrateupdate) +')';
  end;
end;

procedure TForm1.cxButton4Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.ShowModal;
end;

procedure TForm1.cxButton5Click(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  Form3.ShowModal;
end;

procedure TForm1.cxButton_abortClick(Sender: TObject);
begin
  SslHttpCli1.Abort;
end;

procedure TForm1.cxLabel13Click(Sender: TObject);
begin
  case TcxLabel(Sender).Tag of
   0 :  cxSpinEdit2.Value := __day_rate;
   1 :  cxSpinEdit4.Value := __week_rate;
   2 :  cxSpinEdit6.Value := __month_rate;
   3 :  cxSpinEdit8.Value := __year_rate;
  end;
  cxPageControl1.ActivePageIndex := TcxLabel(Sender).Tag;


end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var IniFile : TIniFile;
begin
  IniFile      := TIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );         
  IniFile.WriteFloat('rates','day',    __day_rate);    
  IniFile.WriteFloat('rates','week',   __week_rate);   
  IniFile.WriteFloat('rates','month',  __month_rate);
  IniFile.WriteFloat('rates','year',   __year_rate);
  IniFile.WriteDateTime('rates', 'update', __lastrateupdate );


  //Livecoin prices
  IniFile.WriteFloat('user','USDBID',  Double(cxSpinEdit_USDBID.Value) );
  IniFile.WriteFloat('user','USDASK',  Double(cxSpinEdit_USDASK.Value) );
  IniFile.WriteFloat('user','BTCASK',  Double(cxSpinEdit_BTCASK.Value) );
  IniFile.WriteFloat('user','BTCBID',  Double(cxSpinEdit_BTCBID.Value) );
  IniFile.WriteFloat('user','ETHASK',  Double(cxSpinEdit_ETHASK.Value) );
  IniFile.WriteFloat('user','ETHBID',  Double(cxSpinEdit_ETHBID.Value) );


  IniFile.WriteFloat('user','amount',       Double(cxSpinEdit12.Value) );
  IniFile.WriteFloat('user','day_rate',     Double(cxSpinEdit2.Value) );
  IniFile.WriteFloat('user','week_rate',    Double(cxSpinEdit4.Value) );
  IniFile.WriteFloat('user','month_rate',   Double(cxSpinEdit6.Value) );
  IniFile.WriteFloat('user','year_rate',    Double(cxSpinEdit8.Value) );

  IniFile.WriteInteger('user','day_park_count',       Integer(cxSpinEdit1.Value) );
  IniFile.WriteInteger('user','week_park_count',      Integer(cxSpinEdit5.Value) );
  IniFile.WriteInteger('user','month_park_count',     Integer(cxSpinEdit7.Value) );
  IniFile.WriteInteger('user','year_park_count',      Integer(cxSpinEdit9.Value) );

  IniFile.WriteBool('user', 'day_includeprofit', cxCheckBox2.Checked );
  IniFile.WriteBool('user', 'week_includeprofit', cxCheckBox3.Checked );
  IniFile.WriteBool('user', 'month_includeprofit', cxCheckBox4.Checked );
  IniFile.WriteBool('user', 'year_includeprofit', cxCheckBox5.Checked );

  IniFile.UpdateFile;
  IniFile.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
var IniFile : TIniFile;
begin
  sslcntx_init := False;
  __day_rate   := 0.59;
  __week_rate  := 4.5;
  __month_rate := 13.9;
  __year_rate  := 70;
  __lastrateupdate := EncodeDate(2017, 12, 15);
  IniFile      := TIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );
  try
   __day_rate       := IniFile.ReadFloat('rates','day',    __day_rate);
   __week_rate      := IniFile.ReadFloat('rates','week',   __week_rate);             
   __month_rate     := IniFile.ReadFloat('rates','month',  __month_rate);
   __year_rate      := IniFile.ReadFloat('rates','year',   __year_rate);
   __lastrateupdate := IniFile.ReadDateTime('rates', 'update', __lastrateupdate );


     //Livecoin prices
    cxSpinEdit_USDBID.Value := IniFile.ReadFloat('user','USDBID',  Double(cxSpinEdit_USDBID.Value) );
    cxSpinEdit_USDASK.Value := IniFile.ReadFloat('user','USDASK',  Double(cxSpinEdit_USDASK.Value) );
    cxSpinEdit_BTCASK.Value := IniFile.ReadFloat('user','BTCASK',  Double(cxSpinEdit_BTCASK.Value) );
    cxSpinEdit_BTCBID.Value := IniFile.ReadFloat('user','BTCBID',  Double(cxSpinEdit_BTCBID.Value) );
    cxSpinEdit_ETHASK.Value := IniFile.ReadFloat('user','ETHASK',  Double(cxSpinEdit_ETHASK.Value) );
    cxSpinEdit_ETHBID.Value := IniFile.ReadFloat('user','ETHBID',  Double(cxSpinEdit_ETHBID.Value) );

    //parking settings
    cxSpinEdit1.Value :=  IniFile.ReadInteger('user','day_park_count',       Integer(cxSpinEdit1.Value) );
    cxSpinEdit5.Value :=  IniFile.ReadInteger('user','week_park_count',      Integer(cxSpinEdit5.Value) );
    cxSpinEdit7.Value :=  IniFile.ReadInteger('user','month_park_count',     Integer(cxSpinEdit7.Value) );
    cxSpinEdit9.Value :=  IniFile.ReadInteger('user','year_park_count',      Integer(cxSpinEdit9.Value) );

    cxCheckBox2.Checked :=  IniFile.ReadBool('user', 'day_includeprofit',   cxCheckBox2.Checked );
    cxCheckBox3.Checked :=  IniFile.ReadBool('user', 'week_includeprofit',  cxCheckBox3.Checked );
    cxCheckBox4.Checked :=  IniFile.ReadBool('user', 'month_includeprofit', cxCheckBox4.Checked );
    cxCheckBox5.Checked :=  IniFile.ReadBool('user', 'year_includeprofit',  cxCheckBox5.Checked );

    cxSpinEdit12.Value   :=  IniFile.ReadFloat('user','amount',      0);
    cxSpinEdit2.Value    :=  IniFile.ReadFloat('user','day_rate',     __day_rate);
    cxSpinEdit4.Value    :=  IniFile.ReadFloat('user','week_rate',    __week_rate);
    cxSpinEdit6.Value    :=  IniFile.ReadFloat('user','month_rate',   __month_rate);
    cxSpinEdit8.Value    :=  IniFile.ReadFloat('user','year_rate',    __year_rate);


  finally
      IniFile.Free;
  end;
  UpdateControlsRatesInfo;
end;

procedure TForm1.SslHttpCli1RequestDone(Sender: TObject; RqType: THttpRequest; ErrCode: Word);
begin
   //
end;

end.
