unit UR_EstoqueRelatorios;

interface

uses
  System.SysUtils, System.Classes, IBX.IBQuery, Data.DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, IBX.IBUpdateSQL;

type
  TEstoqueRelatorios = class(TDataModule)
    ibqMovimentoPorData: TIBQuery;
    ibqMovimentoPorDataEM_EMPRESA: TIntegerField;
    ibqMovimentoPorDataEM_PRODUTO: TIBStringField;
    ibqMovimentoPorDataEM_BLOCO: TIntegerField;
    ibqMovimentoPorDataEM_PRATELEIRA: TIntegerField;
    ibqMovimentoPorDataEM_ESTOQUE: TIntegerField;
    ibqMovimentoPorDataEM_CODIGO: TIntegerField;
    ibqMovimentoPorDataEM_TIPO: TIBStringField;
    ibqMovimentoPorDataEM_QTD: TIBBCDField;
    ibqMovimentoPorDataEM_DATA: TDateTimeField;
    ibqMovimentoPorDataEM_OBS: TIBStringField;
    ibqMovimentoPorDataEM_VALOR_FINANCEIRO: TIBBCDField;
    ibqMovimentoPorDataEM_PEDIDOCOMPRAORIGEM: TIntegerField;
    frdbMovimentoPorData: TfrxDBDataset;
    frxMovimentoPorData: TfrxReport;
    ibqMovimentoPorDataPRO_DESCRICAO: TIBStringField;
    ibqMovimentoPorDataEMP_RAZAO: TIBStringField;
    ibqMovimentoPorDataBLOC_DESCRICAO: TIBStringField;
    ibqMovimentoPorDataPRAT_DESCRICAO: TIBStringField;
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
