unit Unit4;

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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Clipbrd,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2016Dark, Vcl.Menus, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxTextEdit, cxCheckBox, cxLabel, Vcl.StdCtrls, cxButtons,
  cxGroupBox;

type
  TForm4 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxCheckBox_mnxenableupdate: TcxCheckBox;
    cxCheckBox_mnxvisible: TcxCheckBox;
    cxTextEdit_mnxlabel: TcxTextEdit;
    cxCalcEdit_mnxbalance: TcxCalcEdit;
    cxButtonEdit_mnxaddress: TcxButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButtonEdit_mnxaddressPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    function GetLangWord(word_index: Integer): string;
  public
    { Public declarations }
    lang: Integer;
  end;

var
  Form4: TForm4;

implementation

uses Unit5;

{$R *.dfm}

function TForm4.GetLangWord(word_index: Integer): string;
begin
  case lang of
   0: result := Unit5.en_wordlist[word_index];
   1: result := Unit5.ru_wordlist[word_index];
  end;
end;

procedure TForm4.cxButtonEdit_mnxaddressPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Trim(Clipboard.AsText) <> '' then
  cxButtonEdit_mnxaddress.Text :=  Trim(Clipboard.AsText);
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  cxGroupBox1.Caption :=               GetLangWord(73);
  cxLabel1.Caption :=                  GetLangWord(74);
  cxLabel2.Caption :=                  GetLangWord(75);
  cxLabel3.Caption :=                  GetLangWord(76);
  cxCheckBox_mnxvisible.Caption :=     GetLangWord(77);
  cxCheckBox_mnxenableupdate.Caption :=GetLangWord(78);
  cxButton2.Caption :=                 GetLangWord(79);
  cxButton3.Caption :=                 GetLangWord(80);

  if Form4.Tag = 1 then Caption := GetLangWord(82)
  else Caption := GetLangWord(81);




  Form4.Constraints.MaxHeight := Form4.Height;
  Form4.Constraints.MinHeight := Form4.Height;
  Form4.Constraints.MinWidth  := Form4.Width;




end;

end.
