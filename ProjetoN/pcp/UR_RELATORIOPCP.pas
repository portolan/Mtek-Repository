unit UR_RELATORIOPCP;

interface

uses
  System.SysUtils, System.Classes, frxClass, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxDBSet;

type
  Tpcprelatorio = class(TDataModule)
    frxOrdemproducao: TfrxReport;
    frxDBOrdemproducao: TfrxDBDataset;
    q_ordemproducao: TIBQuery;
    q_ordemproducaoOP_VENDAS: TIntegerField;
    q_ordemproducaoOP_EMPRESA: TIntegerField;
    q_ordemproducaoOP_FICHATECNICA: TIntegerField;
    q_ordemproducaoOP_DESCRICAO: TIBStringField;
    q_ordemproducaoOP_TIPO: TIBStringField;
    q_ordemproducaoOP_QTD: TIntegerField;
    q_ordemproducaoOP_DT_PEDIDO: TDateField;
    q_ordemproducaoOP_DT_ENTREGA: TDateField;
    q_ordemproducaoOP_STATUS: TIBStringField;
    q_ordemproducaoOP_COMPRAS: TIntegerField;
    q_ordemproducaoOP_COD: TIntegerField;
    q_ordemproducaoOP_PRODUTO: TIBStringField;
    q_ordemproducaoOP_DEPARTAMENTO: TIntegerField;
    frxDBOrdempordata: TfrxDBDataset;
    q_ordempordata: TIBQuery;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IBStringField3: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField4: TIBStringField;
    IntegerField7: TIntegerField;
    frxOrdempordata: TfrxReport;
    q_ordempordataFT_COD: TIntegerField;
    q_ordempordataOP_VENDAS: TIntegerField;
    q_ordempordataFT_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pcprelatorio: Tpcprelatorio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
