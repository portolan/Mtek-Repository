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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Estoque: TDM_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Banco;

{$R *.dfm}

end.
