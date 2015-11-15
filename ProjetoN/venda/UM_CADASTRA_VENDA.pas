unit UM_CADASTRA_VENDA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, UM_ALTERA_VENDA;

type
  TUM_CAD_PEDIDO = class(TxManuPadrao)
    lb_Pedido: TLabel;
    DBEdit1: TDBEdit;
    lb_Tipo_Movimentacao: TLabel;
    DBComboBox4: TDBComboBox;
    lb_Sequencia: TLabel;
    DBEdit2: TDBEdit;
    lb_Status: TLabel;
    panel2: TPanel;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    DBComboBox1: TDBComboBox;
    lb_Estabelecimento: TLabel;
    lb_Deposito: TLabel;
    DBComboBox2: TDBComboBox;
    lb_Produto: TLabel;
    DBEdit4: TDBEdit;
    lb_Descricao: TLabel;
    DBEdit5: TDBEdit;
    DBComboBox3: TDBComboBox;
    lb_Unidade: TLabel;
    Panel3: TPanel;
    lb_Quantidade: TLabel;
    DBEdit6: TDBEdit;
    lb_Lista_Preco: TLabel;
    DBEdit7: TDBEdit;
    lb_Desconto: TLabel;
    DBEdit8: TDBEdit;
    lb_Valor_Unitario: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label2: TLabel;
    lb_Valor_Total: TLabel;
    DBEdit12: TDBEdit;
    lb_Dt_Entrega: TLabel;
    lb_Data_Cliente: TLabel;
    DBEdit14: TDBEdit;
    lb_n_ordem_compra: TLabel;
    DBEdit15: TDBEdit;
    lb_Reajuste: TLabel;
    DBComboBox5: TDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit13: TDBEdit;
    Label1: TLabel;
    DBEdit11: TDBEdit;
    SpeedButton3: TSpeedButton;
    procedure sbCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UM_CAD_PEDIDO: TUM_CAD_PEDIDO;

implementation

{$R *.dfm}

procedure TUM_CAD_PEDIDO.sbCancelarClick(Sender: TObject);
begin
  UP_VENDA := TUP_VENDA.Create(Application);
  UP_VENDA.Show;
end;

end.
