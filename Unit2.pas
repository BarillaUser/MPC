unit Unit2;

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

uses
  Winapi.Windows,  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxImage, cxLabel, cxTextEdit, acPNG,
  dxSkinsCore, dxSkinOffice2016Dark, cxGroupBox;

type
  TForm2 = class(TForm)
    cxImage1: TcxImage;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.cxButton1Click(Sender: TObject);
begin
 Close;
end;

end.
