unit UR_Pedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxClass, frxDBSet, dm000, UDM_Venda;

type
  TfrmRelatorios = class(TForm)
    frxDBPedidoData: TfrxDBDataset;
    IB_PedidoData: TIBQuery;
    IB_PedidoDataPED_NUMERO: TIntegerField;
    IB_PedidoDataPED_PESSOA: TIBStringField;
    IB_PedidoDataPED_SEQUENCIA: TIntegerField;
    IB_PedidoDataPED_SITUACAO: TIBStringField;
    IB_PedidoDataPED_EMPRESA: TIntegerField;
    IB_PedidoDataPED_DEPOSITO: TIntegerField;
    IB_PedidoDataPED_PRODUTO: TIntegerField;
    IB_PedidoDataPED_DESCRICAO: TIBStringField;
    IB_PedidoDataPED_UNIDADE: TIntegerField;
    IB_PedidoDataPED_QUANTIDADE: TIBBCDField;
    IB_PedidoDataPED_LISTA_PRECO: TIBBCDField;
    IB_PedidoDataPED_DESCONTO: TIBBCDField;
    IB_PedidoDataPED_QTD_DISPONIVEL: TIBBCDField;
    IB_PedidoDataPED_VLRUNITARIO: TIBBCDField;
    IB_PedidoDataPED_VLRTOTAL: TIBBCDField;
    IB_PedidoDataPED_REAJUSTE: TIBBCDField;
    IB_PedidoDataPED_DTPEDIDO: TDateField;
    IB_PedidoDataPED_DTENTRADA: TDateField;
    IB_PedidoDataPED_DTPRAZOENTREGA: TDateField;
    IB_PedidoDataPED_ORDEMVENDA: TIntegerField;
    IB_PedidoDataPED_NOTAFISCAL: TIntegerField;
    IB_PedidoDataEMP_RAZAO: TIBStringField;
    IB_PedidoDataDEP_NOME: TIBStringField;
    IB_PedidoDataPRO_DESCRICAO: TIBStringField;
    frxRelatorio: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

end.
