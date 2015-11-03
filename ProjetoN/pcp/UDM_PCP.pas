unit UDM_PCP;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

type
  TDM_PCP = class(TDataModule)
    DS_OrdemProducao: TDataSource;
    OrdemProducao: TIBQuery;
    UPD_OrdemProducao: TIBUpdateSQL;
    OrdemProducaoOP_COD: TIntegerField;
    OrdemProducaoOP_DATA: TDateField;
    OrdemProducaoOP_DT_ORCAMENTO: TDateField;
    OrdemProducaoOP_DESCRICAO: TIBStringField;
    OrdemProducaoOP_DT_PEDIDO: TDateField;
    OrdemProducaoOP_DT_ENTREGA: TDateField;
    OrdemProducaoOP_QTD: TIntegerField;
    OrdemProducaoOP_CUSTO_PRODUCAO: TIBBCDField;
    OrdemProducaoOP_TIPO: TIBStringField;
    OrdemProducaoOP_STATUS: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PCP: TDM_PCP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000, UP_PRODUCAO;

{$R *.dfm}

end.
