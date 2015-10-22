unit UDM_Estoque;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

type
  TDM_Estoque = class(TDataModule)
    Produtos: TIBQuery;
    ProdutosPRO_EMPRESA: TIntegerField;
    ProdutosPRO_CODIGO: TIBStringField;
    ProdutosPRO_CODREF: TIBStringField;
    ProdutosPRO_CODBARRAS: TIBStringField;
    ProdutosPRO_STATUS: TIBStringField;
    ProdutosPRO_DTCADASTRO: TDateField;
    ProdutosPRO_CLASSFISCAL: TIBStringField;
    ProdutosPRO_CSTCSOSN: TIBStringField;
    ProdutosPRO_NCMSH: TIBStringField;
    ProdutosPRO_EXTIPI: TIBStringField;
    ProdutosPRO_SITTRIB: TIBStringField;
    ProdutosPRO_DESCRICAO: TIBStringField;
    ProdutosPRO_UNID: TIBStringField;
    ProdutosPRO_MARCA: TIntegerField;
    ProdutosPRO_MOEDA: TIBStringField;
    ProdutosPRO_CATEGORIA: TIntegerField;
    ProdutosPRO_PIS: TIBBCDField;
    ProdutosPRO_COFINS: TIBBCDField;
    ProdutosPRO_CSTPIS: TIBBCDField;
    ProdutosPRO_ESTATUAL: TIBStringField;
    ProdutosPRO_PESO: TIBBCDField;
    ProdutosPRO_VLRCUSTO: TIBBCDField;
    ProdutosPRO_PERCFRETE: TIBBCDField;
    ProdutosPRO_VLRFRETE: TIBBCDField;
    ProdutosPRO_PERCENCARG: TIBBCDField;
    ProdutosPRO_VLRENCARG: TIBBCDField;
    ProdutosPRO_PERCMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRVENDA1: TIBBCDField;
    ProdutosPRO_PERCVLRVENDA2: TIBBCDField;
    ProdutosPRO_VLRVENDA2: TIBBCDField;
    ProdutosPRO_PERCVLRVENDA3: TIBBCDField;
    ProdutosPRO_VLRVENDA3: TIBBCDField;
    ProdutosPRO_OBS: TIBStringField;
    ProdutosPRO_IMG: TBlobField;
    UProdutos: TIBUpdateSQL;
    DSProdutos: TDataSource;
    Estoque: TIBQuery;
    EstoqueESTOQ_EMPRESA: TIntegerField;
    EstoqueESTOQ_PRODUTO: TIBStringField;
    EstoqueESTOQ_CODIGO: TIBStringField;
    EstoqueESTOQ_STATUS: TIBStringField;
    EstoqueESTOQ_QTD: TIBBCDField;
    EstoqueESTOQ_QTDMIN: TIBBCDField;
    EstoqueESTOQ_QTDMAX: TIBBCDField;
    EstoqueESTOQ_CUSTOMEDIO: TIBBCDField;
    EstoqueESTOQ_PRATELEIRA: TIBStringField;
    EstoqueESTOQ_CATEGORIA: TIntegerField;
    EstoqueESTOQ_TIPO: TIntegerField;
    EstoqueESTOQ_LOCAL: TIBStringField;
    EstoqueESTOQ_DTCADASTRO: TDateField;
    EstoqueESTOQ_OBS: TIBStringField;
    DSEstoque: TDataSource;
    UEstoque: TIBUpdateSQL;
    UMarcas: TIBUpdateSQL;
    DSMarcas: TDataSource;
    Marcas: TIBQuery;
    MarcasMARC_CODIGO: TIntegerField;
    MarcasMARC_DESCRICAO: TIBStringField;
    MarcasMARC_OBS: TIBStringField;
    DSRelProdForn: TDataSource;
    URelProdForn: TIBUpdateSQL;
    RelProdForn: TIBQuery;
    RelProdFornRPF_EMPRESA: TIntegerField;
    RelProdFornRPF_PRODUTO: TIBStringField;
    RelProdFornRPF_PESSOA: TIBStringField;
    RelProdFornRPF_CODREF: TIBStringField;
    RelProdFornRPF_VLRBRUTO: TIBBCDField;
    RelProdFornRPF_PERCDESC: TIBBCDField;
    RelProdFornRPF_VLRDESC: TIBBCDField;
    RelProdFornRPF_VLRLIQUIDO: TIBBCDField;
    RelProdFornRPF_DTCOMPRA: TDateField;
    RelProdFornRPF_CONTATO: TIBStringField;
    MovimentoEstoque: TIBQuery;
    DSMovimentoEstoque: TDataSource;
    UMovimentoEstoque: TIBUpdateSQL;
    MovimentoEstoqueEM_EMPRESA: TIntegerField;
    MovimentoEstoqueEM_ESTOQUE: TIBStringField;
    MovimentoEstoqueEM_PRODUTO: TIBStringField;
    MovimentoEstoqueEM_CODIGO: TIBStringField;
    MovimentoEstoqueEM_TIPO: TIBStringField;
    MovimentoEstoqueEM_QTD: TIBBCDField;
    MovimentoEstoqueEM_DATA: TDateTimeField;
    MovimentoEstoqueEM_OBS: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Estoque: TDM_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
