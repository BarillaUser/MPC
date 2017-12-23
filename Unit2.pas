unit Unit2;

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

uses
  Winapi.Windows,  System.Classes, Vcl.Graphics, vcl.Dialogs,  system.SysUtils,  Vcl.Clipbrd,
   OverbyteIcsWndControl, OverbyteIcsHttpProt, OverbyteIcsWSocket, OverbyteIcsSslX509Utils,

   SynCommons,

  Vcl.Controls, Vcl.Forms,  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxImage, cxLabel, cxTextEdit, acPNG,
  dxSkinsCore, dxSkinOffice2016Dark, cxGroupBox, cxMemo, cxMaskEdit, cxButtonEdit;

type
  TForm2 = class(TForm)
    cxImage1: TcxImage;
    cxButton1: TcxButton;
    cxMemo2: TcxMemo;
    cxLabel9: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxButtonEdit4: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxButton3: TcxButton;
    SslHttpCli1: TSslHttpCli;
    SslContext1: TSslContext;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    sslcntx_init: Boolean;


    function InitSSL_ : Boolean;
    function GetMinexExplorerAddressBalance(addr: string): Double;
    function GetLangWord(word_index: Integer): string;
  public
    { Public declarations }   donatebalance: Double;   lang: Integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
 uses mcpUtilsUnit, Unit5;

function TForm2.InitSSL_ : Boolean;
begin
   Result := False;
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
            // dxStatusBar1.SimplePanelStyle.Text := 'failed to initialize SSL Context!';
             Exit;
         end;
     end;
    sslcntx_init := True;
   end;
   Result := True;
end;



function TForm2.GetMinexExplorerAddressBalance(addr: string): Double;
var s: string;
begin
  Result := -11;

  if not InitSSL_ then
  begin

   Exit;
  end;


  SslHttpCli1.URL :=  'https://minexexplorer.com/?r=explorer/address&hash='+addr;
  try
      try

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
         Result :=  -11;
         ShowMessage( 'code: ' + IntToStr(SslHttpCli1.StatusCode) +  ' - ' + SslHttpCli1.ReasonPhrase);
         Exit;
      end;
  end;
  result := parse_mnxexplorerbalance(s);
end;


procedure TForm2.cxButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm2.cxButton3Click(Sender: TObject);
var d: Extended;
begin
//
  cxButton3.Enabled := False;
  cxLabel6.Caption :=  GetLangWord(89);//'donations balance: updating ...';
  d :=  GetMinexExplorerAddressBalance('XLJ2FXXB7gRLFiThd7WGyVgerhXje5FqBR');
  cxButton3.Enabled := True;

  if d = -11 then cxLabel6.Caption :=  Format(GetLangWord(87), ['0'] )
  else
  begin
   cxLabel6.Caption :=  Format(GetLangWord(87), [FloatTostr(d)] ) ; // 'donations balance: '+ FloatTostr(d) +' mnx';
   donatebalance := d;
  end;

end;

procedure TForm2.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Clipboard.SetTextBuf( PWideChar(cxButtonEdit1.Text)  );


end;

procedure TForm2.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
     Clipboard.SetTextBuf( PWideChar(cxButtonEdit3.Text)  );
end;

procedure TForm2.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
      Clipboard.SetTextBuf( PWideChar(cxButtonEdit4.Text)  );
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  sslcntx_init := False;
      cxLabel6.Caption := Format(GetLangWord(87), [FloatTostr(donatebalance)] ) ; //  'donations balance: '+ FloatTostr(donatebalance) +' mnx';
end;

function TForm2.GetLangWord(word_index: Integer): string;
begin
  case lang of
   0: result := Unit5.en_wordlist[word_index];
   1: result := Unit5.ru_wordlist[word_index];
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin

  cxLabel9.Caption    := GetLangWord(83);
  cxLabel3.Caption    := GetLangWord(84);
  cxLabel1.Caption    := GetLangWord(85);
  cxMemo2.Text        := GetLangWord(90);
  cxGroupBox1.Caption := GetLangWord(86);
  cxLabel6.Caption    := Format(GetLangWord(87), ['0'] ) ;
  cxButton1.Caption   := GetLangWord(88);


end;

end.
