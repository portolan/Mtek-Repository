unit UR_EstoqueRelatorios;

interface

uses
  System.SysUtils, System.Classes, IBX.IBQuery, Data.DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, IBX.IBUpdateSQL, frxExportPDF, frxBarcode, frxCrypt,
  frxOLE, frxRich, frxDMPExport;

type
  TEstoqueRelatorios = class(TDataModule)
    query: TIBQuery;
    queryEM_EMPRESA: TIntegerField;
    queryEM_PRODUTO: TIBStringField;
    queryEM_BLOCO: TIntegerField;
    queryEM_PRATELEIRA: TIntegerField;
    queryEM_ESTOQUE: TIntegerField;
    queryEM_CODIGO: TIntegerField;
    queryEM_TIPO: TIBStringField;
    queryEM_QTD: TIBBCDField;
    queryEM_DATA: TDateTimeField;
    queryEM_OBS: TIBStringField;
    queryEM_VALOR_FINANCEIRO: TIBBCDField;
    queryEM_PEDIDOCOMPRAORIGEM: TIntegerField;
    frxDB: TfrxDBDataset;
    frxReport: TfrxReport;
    queryPRO_DESCRICAO: TIBStringField;
    queryEMP_RAZAO: TIBStringField;
    queryBLOC_DESCRICAO: TIBStringField;
    queryPRAT_DESCRICAO: TIBStringField;
    frxPDFExport1: TfrxPDFExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxOLEObject1: TfrxOLEObject;
    frxCrypt1: TfrxCrypt;
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
