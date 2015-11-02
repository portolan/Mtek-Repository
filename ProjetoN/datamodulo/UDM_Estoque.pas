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
    MovimentoEstoque: TIBQuery;
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
    ProdutosPRO_CLASSFISCAL: TIBStringField;
    ProdutosPRO_CSTCSOSN: TIBStringField;
    ProdutosPRO_NCMSH: TIBStringField;
    ProdutosPRO_EXTIPI: TIBStringField;
    ProdutosPRO_SITTRIB: TIBStringField;
    ProdutosPRO_PIS: TIBBCDField;
    ProdutosPRO_COFINS: TIBBCDField;
    ProdutosPRO_CSTPIS: TIBBCDField;
    ProdutosPRO_ESTATUAL: TIBStringField;
    ProdutosPRO_DESCRICAO: TIBStringField;
    ProdutosPRO_UNID: TIBStringField;
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
    CategoriaCAT_EMPRESA: TIntegerField;
    CategoriaCAT_CODIGO: TIntegerField;
    CategoriaCAT_DESCRICAO: TIBStringField;
    CategoriaCAT_NCM: TIBStringField;
    CategoriaCAT_OBS: TIBStringField;
  private
    { Private declarations }
  public
     function funcRecuperaProximoIdGenerator(c_generator: String): Integer;
  end;

var
  DM_Estoque: TDM_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

{ TDM_Estoque }

function TDM_Estoque.funcRecuperaProximoIdGenerator(
  c_generator: String): Integer;
begin
    QueryGenerico.Close;
    QueryGenerico.SQL.Text := ' SELECT GEN_ID(' + c_generator +
      ',1) FROM RDB$DATABASE';
    QueryGenerico.Open;

    Result := QueryGenerico.FieldByName('GEN_ID').AsInteger;
end;

end.
