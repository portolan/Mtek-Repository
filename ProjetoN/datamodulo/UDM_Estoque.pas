unit UDM_Estoque;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

type
  TDM_Estoque = class(TDataModule)
    Produtos: TIBQuery;
    UProdutos: TIBUpdateSQL;
    DSProdutos: TDataSource;
    Estoque: TIBQuery;
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
    DSMovimentoEstoque: TDataSource;
    UMovimentoEstoque: TIBUpdateSQL;
    Categoria: TIBQuery;
    UCategoria: TIBUpdateSQL;
    DSCategoria: TDataSource;
    QueryGenerico: TIBQuery;
    ProdutosPRO_EMPRESA: TIntegerField;
    ProdutosPRO_CODIGO: TIBStringField;
    ProdutosPRO_CODREF: TIBStringField;
    ProdutosPRO_CODBARRAS: TIBStringField;
    ProdutosPRO_STATUS: TIBStringField;
    ProdutosPRO_DTCADASTRO: TDateField;
    ProdutosPRO_DESCRICAO: TIBStringField;
    ProdutosPRO_MARCA: TIntegerField;
    ProdutosPRO_MOEDA: TIBStringField;
    ProdutosPRO_CATEGORIA: TIntegerField;
    ProdutosPRO_PESO: TIBBCDField;
    ProdutosPRO_CUSTOMEDIO: TIBBCDField;
    ProdutosPRO_VALORIZACAO: TIBBCDField;
    ProdutosPRO_VLRFRETE: TIBBCDField;
    ProdutosPRO_PERCENCARG: TIBBCDField;
    ProdutosPRO_VLRENCARG: TIBBCDField;
    ProdutosPRO_PERCMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRMARGLUCR: TIBBCDField;
    ProdutosPRO_VLRVENDA: TIBBCDField;
    ProdutosPRO_OBS: TIBStringField;
    ProdutosPRO_IMG: TBlobField;
    Bloco: TIBQuery;
    DSBloco: TDataSource;
    UBloco: TIBUpdateSQL;
    BlocoBLOC_EMPRESA: TIntegerField;
    BlocoBLOC_CODIGO: TIntegerField;
    BlocoBLOC_DESCRICAO: TIBStringField;
    BlocoBLOC_OBS: TIBStringField;
    UPrateleira: TIBUpdateSQL;
    DSPrateleira: TDataSource;
    Prateleira: TIBQuery;
    PrateleiraPRAT_EMPRESA: TIntegerField;
    PrateleiraPRAT_CODIGO: TIntegerField;
    PrateleiraPRAT_DESCRICAO: TIBStringField;
    PrateleiraPRAT_OBS: TIBStringField;
    CategoriaCAT_EMPRESA: TIntegerField;
    CategoriaCAT_CODIGO: TIntegerField;
    CategoriaCAT_DESCRICAO: TIBStringField;
    CategoriaCAT_NCM: TIBStringField;
    CategoriaCAT_OBS: TIBStringField;
    MovimentoEstoque: TIBQuery;
    MovimentoEstoqueEM_EMPRESA: TIntegerField;
    MovimentoEstoqueEM_PRODUTO: TIBStringField;
    MovimentoEstoqueEM_BLOCO: TIntegerField;
    MovimentoEstoqueEM_PRATELEIRA: TIntegerField;
    MovimentoEstoqueEM_ESTOQUE: TIntegerField;
    MovimentoEstoqueEM_CODIGO: TIntegerField;
    MovimentoEstoqueEM_TIPO: TIBStringField;
    MovimentoEstoqueEM_QTD: TIBBCDField;
    MovimentoEstoqueEM_DATA: TDateTimeField;
    MovimentoEstoqueEM_OBS: TIBStringField;
    MovimentoEstoqueEM_VALOR_FINANCEIRO: TIBBCDField;
    MovimentoEstoqueEM_PEDIDOCOMPRAORIGEM: TIntegerField;
    Unidade: TIBQuery;
    DSUnidade: TDataSource;
    UUnidade: TIBUpdateSQL;
    ProdutosPRO_UNID: TIntegerField;
    UnidadeUN_CODIGO: TIntegerField;
    UnidadeUN_DESCRICAO: TIBStringField;
    UnidadeUN_OBS: TIBStringField;
    ProdutosPRO_GRUPO: TIBStringField;
    EstoqueESTOQ_EMPRESA: TIntegerField;
    EstoqueESTOQ_PRODUTO: TIBStringField;
    EstoqueESTOQ_BLOCO: TIntegerField;
    EstoqueESTOQ_PRATELEIRA: TIntegerField;
    EstoqueESTOQ_CODIGO: TIntegerField;
    EstoqueESTOQ_STATUS: TIBStringField;
    EstoqueESTOQ_QTD: TIBBCDField;
    EstoqueESTOQ_QTDMIN: TIBBCDField;
    EstoqueESTOQ_QTDMAX: TIBBCDField;
    EstoqueESTOQ_CUSTOMEDIO: TIBBCDField;
    EstoqueESTOQ_CATEGORIA: TIntegerField;
    EstoqueESTOQ_TIPO: TIntegerField;
    EstoqueESTOQ_DTCADASTRO: TDateField;
    EstoqueESTOQ_OBS: TIBStringField;
    ProdutosPRO_CLASSFISCAL: TIBStringField;
    ProdutosPRO_CSTCSOSN: TIBStringField;
    ProdutosPRO_NCMSH: TIBStringField;
    ProdutosPRO_EXTIPI: TIBStringField;
    ProdutosPRO_SITTRIB: TIBStringField;
    ProdutosPRO_PIS: TIBStringField;
    ProdutosPRO_COFINS: TIBStringField;
    ProdutosPRO_CSTPIS: TIBStringField;
    ProdutosPRO_ESTATUAL: TIBStringField;
    EstoqueESTOQ_CHAVE: TIBStringField;
    EstoquePRO_DESCRICAO: TIBStringField;
    EstoqueBLOC_DESCRICAO: TIBStringField;
    EstoquePRAT_DESCRICAO: TIBStringField;
    EstoquePRO_EMPRESA: TIntegerField;
    EstoquePRO_CODIGO: TIBStringField;
    EstoquePRO_CODREF: TIBStringField;
    EstoquePRO_CODBARRAS: TIBStringField;
    EstoquePRO_STATUS: TIBStringField;
    EstoquePRO_DTCADASTRO: TDateField;
    EstoquePRO_CLASSFISCAL: TIBStringField;
    EstoquePRO_CSTCSOSN: TIBStringField;
    EstoquePRO_NCMSH: TIBStringField;
    EstoquePRO_EXTIPI: TIBStringField;
    EstoquePRO_SITTRIB: TIBStringField;
    EstoquePRO_PIS: TIBStringField;
    EstoquePRO_COFINS: TIBStringField;
    EstoquePRO_CSTPIS: TIBStringField;
    EstoquePRO_ESTATUAL: TIBStringField;
    EstoquePRO_UNID: TIntegerField;
    EstoquePRO_MARCA: TIntegerField;
    EstoquePRO_MOEDA: TIBStringField;
    EstoquePRO_CATEGORIA: TIntegerField;
    EstoquePRO_PESO: TIBBCDField;
    EstoquePRO_CUSTOMEDIO: TIBBCDField;
    EstoquePRO_VALORIZACAO: TIBBCDField;
    EstoquePRO_VLRFRETE: TIBBCDField;
    EstoquePRO_PERCENCARG: TIBBCDField;
    EstoquePRO_VLRENCARG: TIBBCDField;
    EstoquePRO_PERCMARGLUCR: TIBBCDField;
    EstoquePRO_VLRMARGLUCR: TIBBCDField;
    EstoquePRO_VLRVENDA: TIBBCDField;
    EstoquePRO_OBS: TIBStringField;
    EstoquePRO_IMG: TBlobField;
    EstoquePRO_GRUPO: TIBStringField;
    EstoqueBLOC_EMPRESA: TIntegerField;
    EstoqueBLOC_CODIGO: TIntegerField;
    EstoqueBLOC_OBS: TIBStringField;
    EstoquePRAT_EMPRESA: TIntegerField;
    EstoquePRAT_CODIGO: TIntegerField;
    EstoquePRAT_OBS: TIBStringField;
    procedure ProdutosAfterInsert(DataSet: TDataSet);
    procedure EstoqueAfterInsert(DataSet: TDataSet);
    procedure MarcasAfterInsert(DataSet: TDataSet);
    procedure MovimentoEstoqueAfterInsert(DataSet: TDataSet);
    procedure CategoriaAfterInsert(DataSet: TDataSet);
    procedure BlocoAfterInsert(DataSet: TDataSet);
    procedure PrateleiraAfterInsert(DataSet: TDataSet);
    procedure UnidadeAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public

  end;

var
  DM_Estoque: TDM_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UDM_contabil;

{$R *.dfm}

{ TDM_Estoque }

procedure TDM_Estoque.BlocoAfterInsert(DataSet: TDataSet);
begin
    Bloco.FieldByName('BLOC_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_BLOCO');

end;

procedure TDM_Estoque.CategoriaAfterInsert(DataSet: TDataSet);
begin
    Categoria.FieldByName('CAT_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_CATEGORIA');
end;

procedure TDM_Estoque.EstoqueAfterInsert(DataSet: TDataSet);
begin
    Estoque.FieldByName('ESTOQ_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQUE');
end;

procedure TDM_Estoque.MarcasAfterInsert(DataSet: TDataSet);
begin
    Marcas.FieldByName('MARC_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_MARCAS');
end;

procedure TDM_Estoque.MovimentoEstoqueAfterInsert(DataSet: TDataSet);
begin
    MovimentoEstoque.FieldByName('EM_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQ_MOVIMENTO');
end;

procedure TDM_Estoque.PrateleiraAfterInsert(DataSet: TDataSet);
begin
    Prateleira.FieldByName('PRAT_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_PRATELEIRA');
end;

procedure TDM_Estoque.ProdutosAfterInsert(DataSet: TDataSet);
begin
    Produtos.FieldByName('PRO_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_PRODUTOS');
end;

procedure TDM_Estoque.UnidadeAfterInsert(DataSet: TDataSet);
begin
    Unidade.FieldByName('UN_CODIGO').Value := dmBanco.funcRecuperaProximoIdGenerator('GEN_UNIDADE');
end;

end.
