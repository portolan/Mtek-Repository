unit UDM_PedCompra;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TdmPedCompra = class(TDataModule)
    SolicitacaoCompra: TIBQuery;
    DSolicitacaoCompra: TDataSource;
    USolicitacaoCompra: TIBUpdateSQL;
    Cotacao: TIBQuery;
    DCotacao: TDataSource;
    UCotacao: TIBUpdateSQL;
    FornecedorCotacao: TIBQuery;
    DFornecedorCotacao: TDataSource;
    UFornecedorCotacao: TIBUpdateSQL;
    PedidoCompra: TIBQuery;
    DPedidoCompra: TDataSource;
    UPedidoCompra: TIBUpdateSQL;
    SolicitacaoCompraSOL_EMPRESA: TIntegerField;
    SolicitacaoCompraSOL_CODIGO: TIntegerField;
    SolicitacaoCompraSOL_DEPARTAMENTO: TIntegerField;
    SolicitacaoCompraSOL_PRODUTO: TIBStringField;
    SolicitacaoCompraSOL_QTD: TIBBCDField;
    SolicitacaoCompraSOL_DATA: TDateField;
    SolicitacaoCompraSOL_DATA_URGENCIA: TDateField;
    SolicitacaoCompraSOL_OBS: TWideMemoField;
    SolicitacaoCompraSOL_DATA_LIBERACAO: TDateField;
    SolicitacaoCompraSOL_STATUS: TIBStringField;
    SolicitacaoCompraDEP_NOME: TIBStringField;
    SolicitacaoCompraPRO_DESCRICAO: TIBStringField;
    CotacaoCOT_EMPRESA: TIntegerField;
    CotacaoCOT_CODIGO: TIntegerField;
    CotacaoCOT_DEPARTAMENTO: TIntegerField;
    CotacaoCOT_DESCRICAO: TIBStringField;
    CotacaoCOT_STATUS: TIBStringField;
    CotacaoCOT_DATA: TDateField;
    CotacaoCOT_OBS: TWideMemoField;
    CotacaoCOT_PRODUTO: TIBStringField;
    CotacaoCOT_QTD: TIBBCDField;
    CotacaoCOT_SOLICITACAO_ORIGEM: TIntegerField;
    CotacaoEMP_RAZAO: TIBStringField;
    CotacaoDEP_NOME: TIBStringField;
    CotacaoPRO_DESCRICAO: TIBStringField;
    SolicitacaoCompraEMP_RAZAO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPedCompra: TdmPedCompra;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;


{$R *.dfm}

end.
