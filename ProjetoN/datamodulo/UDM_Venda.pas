unit UDM_Venda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, dm000, Datasnap.DBClient;

type
  TDM_VENDA = class(TDataModule)
    U_Venda: TIBUpdateSQL;
    DS_Venda: TDataSource;
    IB_Faturamento: TIBQuery;
    DS_Faturamento: TDataSource;
    U_Faturamento: TIBUpdateSQL;
    DS_CondicaoPG: TDataSource;
    IB_CondicaoPG: TIBQuery;
    U_CondicaoPG: TIBUpdateSQL;
    IB_FaturamentoFAT_CODIGO_PEDIDO: TIntegerField;
    IB_FaturamentoFAT_DESCRICAO: TIBStringField;
    IB_FaturamentoFAT_EMPRESA: TIntegerField;
    IB_FaturamentoFAT_PESSOA: TIntegerField;
    IB_FaturamentoFAT_NOTA: TIntegerField;
    IB_FaturamentoFAT_NOTASERIE: TIntegerField;
    IB_FaturamentoFAT_DTEMISSAO: TDateField;
    IB_FaturamentoFAT_DTSAIDA: TDateField;
    IB_FaturamentoFAT_SITAUCAO: TIBStringField;
    IB_FaturamentoFAT_CHAVE_ACESSO: TIntegerField;
    IB_CondicaoPGCDP_CODIGO: TIntegerField;
    IB_CondicaoPGCDP_DESCRICAO: TIBStringField;
    IB_Venda: TIBQuery;
    U_EmissaoNFE: TIBUpdateSQL;
    DS_EmissaoNFE: TDataSource;
    IB_EmissaoNFE: TIBQuery;
    IB_EmissaoNFEEMI_DTEMISSAO: TDateField;
    IB_EmissaoNFEEMI_DTSAIDA: TDateField;
    IB_EmissaoNFEEMI_NOTAFISCAL: TIntegerField;
    IB_VendaPED_NUMERO: TIntegerField;
    IB_VendaPED_PESSOA: TIBStringField;
    IB_VendaPED_SEQUENCIA: TIntegerField;
    IB_VendaPED_SITUACAO: TIBStringField;
    IB_VendaPED_EMPRESA: TIntegerField;
    IB_VendaPED_DEPOSITO: TIntegerField;
    IB_VendaPED_DESCRICAO: TIBStringField;
    IB_VendaPED_UNIDADE: TIntegerField;
    IB_VendaPED_QUANTIDADE: TIBBCDField;
    IB_VendaPED_DESCONTO: TIBBCDField;
    IB_VendaPED_QTD_DISPONIVEL: TIBBCDField;
    IB_VendaPED_VLRUNITARIO: TIBBCDField;
    IB_VendaPED_VLRTOTAL: TIBBCDField;
    IB_VendaPED_REAJUSTE: TIBBCDField;
    IB_VendaPED_DTPEDIDO: TDateField;
    IB_VendaPED_DTENTRADA: TDateField;
    IB_VendaPED_DTPRAZOENTREGA: TDateField;
    IB_VendaPED_ORDEMVENDA: TIntegerField;
    IB_VendaEMP_RAZAO: TIBStringField;
    IB_VendaDEP_NOME: TIBStringField;
    IB_VendaPRO_DESCRICAO: TIBStringField;
    IB_VendaPED_PRODUTO: TIBStringField;
    procedure IB_VendaAfterInsert(DataSet: TDataSet);
    procedure IB_EmissaoNFEAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_VENDA: TDM_VENDA;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TDM_VENDA.IB_EmissaoNFEAfterInsert(DataSet: TDataSet);
begin
   IB_EmissaoNFEEMI_NOTAFISCAL.Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_NFE');
end;

procedure TDM_VENDA.IB_VendaAfterInsert(DataSet: TDataSet);
begin
   IB_VendaPED_NUMERO.Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_VENDA');
   IB_VendaPED_SEQUENCIA.Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_SEQUENCIA');
   IB_VendaPED_ORDEMVENDA.Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ORDEMVENDA');
end;

end.
