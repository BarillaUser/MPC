unit Unit3;

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

uses
  Winapi.Windows, Winapi.Messages,  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2016Dark, cxTextEdit,
   Vcl.Menus, cxCheckBox, cxLabel, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxGroupBox;

type
  TForm3 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
