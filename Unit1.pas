unit Unit1;

interface

{
*************************************************************************
prj: MinexBank Profit Calculator
ver: 0.1
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
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.Menus, Dialogs,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxClasses, dxBar, cxCheckBox, cxImage, cxLabel, cxMemo,  cxButtons, cxPC,
  cxGroupBox, dxStatusBar, cxDropDownEdit, dxSkinsCore, dxSkinOffice2016Dark, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter,  dxSkinsForm, dxSkinsdxBarPainter, dxBarBuiltInMenu,

  OverbyteIcsWndControl, OverbyteIcsHttpProt, OverbyteIcsWSocket;

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
    cxLabel17: TcxLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel21: TcxLabel;
    cxSpinEdit3: TcxSpinEdit;
    cxCheckBox1: TcxCheckBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    dxSkinController1: TdxSkinController;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxSpinEdit4: TcxSpinEdit;
    cxSpinEdit5: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxSpinEdit6: TcxSpinEdit;
    cxSpinEdit7: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxSpinEdit8: TcxSpinEdit;
    cxSpinEdit9: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    SslHttpCli1: TSslHttpCli;
    SslContext1: TSslContext;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLabel13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    dText: string;  
    __lastrateupdate : TDate;
    __day_rate   : Double;
    __week_rate  : Double;
    __month_rate : Double;
    __year_rate  : Double;
    sslcntx_init : Boolean;
    procedure UpdateControlsRatesInfo;
    
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, OverbyteIcsSslX509Utils, SynCommons;

procedure procCalc(am: Extended; rate: Extended; rounds: Integer; incprofit: Boolean; var r_profit: Extended; var d_text: string);
var
  I: Integer;
  round_profit, p_amount : Extended;
begin
     r_profit := 0;
     p_amount := am;

     d_text := '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~' + #13#10 + 'amount: ' + FloatToStr(am) + ' mnx' + #13#10 + 'rate: ' + FloatToStr(rate) + ' %' + #13#10
               + 'rounds: ' + rounds.ToString + #13#10;
     if incprofit then  d_text := d_text + 'include profit from every previous round' + #13#10 + '---'
     else d_text := d_text + '---';

     for I := 1 to rounds do
     begin
       round_profit := p_amount / 100 * rate; //Профит раунда
       r_profit := r_profit + round_profit;   //Сумма всех профитов



       d_text := d_text + #13#10 + '[round ' + i.ToString + '] profit: ' + round_profit.ToString + ' mnx | total: ' + (r_profit + p_amount).ToString + ' mnx';
        if incprofit then  p_amount :=  round_profit + p_amount;
     end;

     d_text := d_text + #13#10 + '---' + #13#10 + 'total : ' + (r_profit + am).ToString + ' mnx || only profit: ' + r_profit.ToString + ' mnx' ;
     d_text := d_text + #13#10 + '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
end;



procedure TForm1.cxButton1Click(Sender: TObject);
var
 totalProfit: Extended;
begin
  dText := '';
  case cxPageControl1.ActivePageIndex of
   0:  procCalc( cxSpinEdit1.Value, cxSpinEdit2.Value, cxSpinEdit3.Value, cxCheckBox1.Checked, totalProfit, dText );
   1:  procCalc( cxSpinEdit5.Value, cxSpinEdit4.Value, cxSpinEdit3.Value, cxCheckBox1.Checked, totalProfit, dText );
   2:  procCalc( cxSpinEdit7.Value, cxSpinEdit6.Value, cxSpinEdit3.Value, cxCheckBox1.Checked, totalProfit, dText );
   3:  procCalc( cxSpinEdit9.Value, cxSpinEdit8.Value, cxSpinEdit3.Value, cxCheckBox1.Checked, totalProfit, dText );
  end;
  dxStatusBar1.SimplePanelStyle.Text := 'total: ' + (Extended(cxSpinEdit1.Value)+totalProfit).ToString + ' | only profit: ' +  FloatToStr( totalProfit );
end;

procedure TForm1.cxButton2Click(Sender: TObject);
var RBankRates: TRBankRatesArray;  s: UTF8String;
begin
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
        on E:Exception do begin
            ShowMessage('Failed to initialize SSL Context: ' + E.Message);
            Exit;
        end;
    end;      
     sslcntx_init := True;    
    end;


  SslHttpCli1.RcvdStream := TMemoryStream.Create;
  SslHttpCli1.Get;   
  try
   SslHttpCli1.RcvdStream.Position := 0;
   s := StreamToRawByteString(SslHttpCli1.RcvdStream);
  finally
   SslHttpCli1.RcvdStream.Free;
  end;
  
  DynArrayLoadJSON(RBankRates, @s[1],  TypeInfo(TRBankRatesArray) );

  __lastrateupdate := Now;
  __day_rate   := RBankRates[0].rate;
  __week_rate  := RBankRates[1].rate;
  __month_rate := RBankRates[2].rate;
  __year_rate  := RBankRates[3].rate;

  UpdateControlsRatesInfo;
end;

procedure TForm1.UpdateControlsRatesInfo;
begin
  cxLabel13.Caption :=  __day_rate.ToString +'%';
  cxLabel14.Caption :=  __week_rate.ToString +'%';
  cxLabel15.Caption :=  __month_rate.ToString +'%';
  cxLabel16.Caption :=  __year_rate.ToString +'%';

  cxGroupBox2.Caption := 'bank rates (update: ' + DateToStr(__lastrateupdate) +')';
end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  Form3.cxMemo1.Lines.Text := dText;
  Form3.ShowModal;

end;

procedure TForm1.cxButton4Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.ShowModal;
end;

procedure TForm1.cxLabel13Click(Sender: TObject);
begin
  case TcxLabel(Sender).Tag of
   0 :  cxSpinEdit2.Value := __day_rate;
   1 :  cxSpinEdit4.Value := __week_rate;
   2 :  cxSpinEdit6.Value := __month_rate;
   3 :  cxSpinEdit8.Value := __year_rate;
  end;
end;

procedure TForm1.cxPageControl1Change(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
   0: cxLabel1.Caption := 'round(s) = day(s)' ;
   1: cxLabel1.Caption := 'round(s) = week(s)' ;
   2: cxLabel1.Caption := 'round(s) = month(s)' ;
   3: cxLabel1.Caption := 'round(s) = year(s)' ;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var IniFile : TIniFile;
begin
  IniFile      := TIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );         
  IniFile.WriteFloat('rates','day',    __day_rate);    
  IniFile.WriteFloat('rates','week',   __week_rate);   
  IniFile.WriteFloat('rates','month',  __month_rate);
  IniFile.WriteFloat('rates','year',   __year_rate);
  IniFile.WriteDate('rates', 'update', __lastrateupdate );  

  IniFile.WriteInteger('user', 'rounds', Integer(cxSpinEdit3.Value) );
  IniFile.WriteBool('user', 'includeprofit', cxCheckBox1.Checked );
  
  IniFile.WriteFloat('user','day_am',       Double(cxSpinEdit1.Value) );
  IniFile.WriteFloat('user','day_rate',     Double(cxSpinEdit2.Value) );    
  IniFile.WriteFloat('user','week_am',      Double(cxSpinEdit5.Value) );
  IniFile.WriteFloat('user','week_rate',    Double(cxSpinEdit4.Value) );     
  IniFile.WriteFloat('user','month_am',     Double(cxSpinEdit7.Value) );
  IniFile.WriteFloat('user','month_rate',   Double(cxSpinEdit6.Value) );      
  IniFile.WriteFloat('user','year_am',      Double(cxSpinEdit9.Value) );
  IniFile.WriteFloat('user','year_rate',    Double(cxSpinEdit8.Value) );                                                                   
    
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
  __lastrateupdate := EncodeDate(2017, 12, 12);     
  IniFile      := TIniFile.Create( IncludeTrailingPathDelimiter( ExtractFilePath( paramstr(0) ) ) + 'mpccfg.ini' );
  try
   __day_rate       := IniFile.ReadFloat('rates','day',    __day_rate);              
   __week_rate      := IniFile.ReadFloat('rates','week',   __week_rate);             
   __month_rate     := IniFile.ReadFloat('rates','month',  __month_rate);
   __year_rate      := IniFile.ReadFloat('rates','year',   __year_rate);
   __lastrateupdate := IniFile.ReadDate('rates', 'update', __lastrateupdate );    

   cxSpinEdit3.Value    :=  IniFile.ReadInteger('user', 'rounds', 3);
   cxCheckBox1.Checked  :=  IniFile.ReadBool('user', 'includeprofit', True);       
   cxSpinEdit1.Value    :=  IniFile.ReadFloat('user','day_am',      0);
   cxSpinEdit2.Value    :=  IniFile.ReadFloat('user','day_rate',    __day_rate); 
   cxSpinEdit5.Value    :=  IniFile.ReadFloat('user','week_am',      0);
   cxSpinEdit4.Value    :=  IniFile.ReadFloat('user','week_rate',    __week_rate);      
   cxSpinEdit7.Value    :=  IniFile.ReadFloat('user','month_am',      0);
   cxSpinEdit6.Value    :=  IniFile.ReadFloat('user','month_rate',    __month_rate); 
   cxSpinEdit9.Value    :=  IniFile.ReadFloat('user','year_am',      0);
   cxSpinEdit8.Value    :=  IniFile.ReadFloat('user','year_rate',    __year_rate);  
  finally
      IniFile.Free;
  end;
  UpdateControlsRatesInfo;
end;

end.
