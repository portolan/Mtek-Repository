unit C001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, xCadastro, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFRM_PEDIDO_VENDA = class(TCadastroPadrao)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PEDIDO_VENDA: TFRM_PEDIDO_VENDA;

implementation

{$R *.dfm}

end.
