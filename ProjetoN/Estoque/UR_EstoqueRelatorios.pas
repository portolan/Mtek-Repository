unit UR_EstoqueRelatorios;

interface

uses
  System.SysUtils, System.Classes, IBX.IBQuery, Data.DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, IBX.IBUpdateSQL, frxExportPDF, frxBarcode, frxCrypt,
  frxOLE, frxRich, frxDMPExport;

type
  TEstoqueRelatorios = class(TDataModule)
    qMovimentoPorData: TIBQuery;
    qMovimentoPorDataEM_EMPRESA: TIntegerField;
    qMovimentoPorDataEM_PRODUTO: TIBStringField;
    qMovimentoPorDataEM_BLOCO: TIntegerField;
    qMovimentoPorDataEM_PRATELEIRA: TIntegerField;
    qMovimentoPorDataEM_ESTOQUE: TIntegerField;
    qMovimentoPorDataEM_CODIGO: TIntegerField;
    qMovimentoPorDataEM_TIPO: TIBStringField;
    qMovimentoPorDataEM_QTD: TIBBCDField;
    qMovimentoPorDataEM_DATA: TDateTimeField;
    qMovimentoPorDataEM_OBS: TIBStringField;
    qMovimentoPorDataEM_VALOR_FINANCEIRO: TIBBCDField;
    qMovimentoPorDataEM_PEDIDOCOMPRAORIGEM: TIntegerField;
    frxDBMovimentoPorData: TfrxDBDataset;
    frxMovimentoPorData: TfrxReport;
    qMovimentoPorDataPRO_DESCRICAO: TIBStringField;
    qMovimentoPorDataEMP_RAZAO: TIBStringField;
    qMovimentoPorDataBLOC_DESCRICAO: TIBStringField;
    qMovimentoPorDataPRAT_DESCRICAO: TIBStringField;
    frxPDFExport1: TfrxPDFExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxOLEObject1: TfrxOLEObject;
    frxCrypt1: TfrxCrypt;
    Query: TIBQuery;
    frxProdutoPorPreco: TfrxReport;
    frxDBProdutoPorPreco: TfrxDBDataset;
    qProdutoPorPreco: TIBQuery;
    qProdutoPorPrecoPRO_EMPRESA: TIntegerField;
    qProdutoPorPrecoPRO_CODIGO: TIBStringField;
    qProdutoPorPrecoPRO_CODREF: TIBStringField;
    qProdutoPorPrecoPRO_CODBARRAS: TIBStringField;
    qProdutoPorPrecoPRO_STATUS: TIBStringField;
    qProdutoPorPrecoPRO_DTCADASTRO: TDateField;
    qProdutoPorPrecoPRO_CLASSFISCAL: TIBStringField;
    qProdutoPorPrecoPRO_CSTCSOSN: TIBStringField;
    qProdutoPorPrecoPRO_NCMSH: TIBStringField;
    qProdutoPorPrecoPRO_EXTIPI: TIBStringField;
    qProdutoPorPrecoPRO_SITTRIB: TIBStringField;
    qProdutoPorPrecoPRO_PIS: TIBStringField;
    qProdutoPorPrecoPRO_COFINS: TIBStringField;
    qProdutoPorPrecoPRO_CSTPIS: TIBStringField;
    qProdutoPorPrecoPRO_ESTATUAL: TIBStringField;
    qProdutoPorPrecoPRO_DESCRICAO: TIBStringField;
    qProdutoPorPrecoPRO_UNID: TIntegerField;
    qProdutoPorPrecoPRO_MARCA: TIntegerField;
    qProdutoPorPrecoPRO_MOEDA: TIBStringField;
    qProdutoPorPrecoPRO_CATEGORIA: TIntegerField;
    qProdutoPorPrecoPRO_PESO: TIBBCDField;
    qProdutoPorPrecoPRO_CUSTOMEDIO: TIBBCDField;
    qProdutoPorPrecoPRO_VALORIZACAO: TIBBCDField;
    qProdutoPorPrecoPRO_VLRFRETE: TIBBCDField;
    qProdutoPorPrecoPRO_PERCENCARG: TIBBCDField;
    qProdutoPorPrecoPRO_VLRENCARG: TIBBCDField;
    qProdutoPorPrecoPRO_PERCMARGLUCR: TIBBCDField;
    qProdutoPorPrecoPRO_VLRMARGLUCR: TIBBCDField;
    qProdutoPorPrecoPRO_VLRVENDA: TIBBCDField;
    qProdutoPorPrecoPRO_OBS: TIBStringField;
    qProdutoPorPrecoPRO_IMG: TBlobField;
    qProdutoPorPrecoPRO_GRUPO: TIBStringField;
    frxEstoqueAbaixo: TfrxReport;
    frxDBEstoqueAbaixo: TfrxDBDataset;
    qEstoqueAbaixo: TIBQuery;
    qEstoqueAbaixoESTOQ_EMPRESA: TIntegerField;
    qEstoqueAbaixoESTOQ_PRODUTO: TIBStringField;
    qEstoqueAbaixoESTOQ_BLOCO: TIntegerField;
    qEstoqueAbaixoESTOQ_PRATELEIRA: TIntegerField;
    qEstoqueAbaixoESTOQ_CODIGO: TIntegerField;
    qEstoqueAbaixoESTOQ_STATUS: TIBStringField;
    qEstoqueAbaixoESTOQ_QTD: TIBBCDField;
    qEstoqueAbaixoESTOQ_QTDMIN: TIBBCDField;
    qEstoqueAbaixoESTOQ_QTDMAX: TIBBCDField;
    qEstoqueAbaixoESTOQ_CUSTOMEDIO: TIBBCDField;
    qEstoqueAbaixoESTOQ_CATEGORIA: TIntegerField;
    qEstoqueAbaixoESTOQ_TIPO: TIntegerField;
    qEstoqueAbaixoESTOQ_DTCADASTRO: TDateField;
    qEstoqueAbaixoESTOQ_OBS: TIBStringField;
    qEstoqueAbaixoESTOQ_CHAVE: TIBStringField;
    qEstoqueAbaixoPRO_DESCRICAO: TIBStringField;
    qEstoqueAbaixoBLOC_DESCRICAO: TIBStringField;
    qEstoqueAbaixoPRAT_DESCRICAO: TIBStringField;
    frxBloco: TfrxReport;
    frxDBBloco: TfrxDBDataset;
    frxDBPrateleira: TfrxDBDataset;
    frxProduto: TfrxReport;
    frxDBProdutos: TfrxDBDataset;
    frxMovimento: TfrxReport;
    frxDBMovimento: TfrxDBDataset;
    frxMarca: TfrxReport;
    frxDBMarcas: TfrxDBDataset;
    frxPrateleira: TfrxReport;
    frxEstoque: TfrxReport;
    frxDBEstoque: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EstoqueRelatorios: TEstoqueRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UDM_Estoque;

{$R *.dfm}

end.
