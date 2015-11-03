unit C001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TCAD_PEDIDO_VENDA = class(TxManuPadrao)
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    sbDetalhe: TButton;
    lb_Cliente: TLabel;
    lb_Contato: TLabel;
    lb_Deposito: TLabel;
    lb_Estabelecimento: TLabel;
    lb_Pedido: TLabel;
    lb_Tipo_Movimentacao: TLabel;
    lb_Dt_Entrega: TLabel;
    lb_Dt_Prazo_Entrega: TLabel;
    lb_Status: TLabel;
    DBGrid1: TDBGrid;
    ScrollBar1: TScrollBar;
    procedure sbDetalheClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_PEDIDO_VENDA: TCAD_PEDIDO_VENDA;

implementation

{$R *.dfm}

uses C002;

procedure TCAD_PEDIDO_VENDA.sbDetalheClick(Sender: TObject);
begin
     CAD_DETALHE_PEDIDO := TCAD_DETALHE_PEDIDO.Create(Self);
     try
        CAD_DETALHE_PEDIDO.ShowModal;
     finally
        FreeAndNil(CAD_DETALHE_PEDIDO);
     end;
end;

end.
