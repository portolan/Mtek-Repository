unit UDM_Servico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery;

type
  TDM_Servico = class(TDataModule)
    IB_Chamado: TIBQuery;
    UPS_Chamado: TIBUpdateSQL;
    DS_Chamado: TDataSource;
    UPS_Produto_Utilizado: TIBUpdateSQL;
    DS_Produto_Utilizado: TDataSource;
    IB_Produto_Utilizado: TIBQuery;
    IB_Produto_UtilizadoPRU_CODIGO: TIntegerField;
    IB_Produto_UtilizadoPRU_CHAMADO: TIntegerField;
    IB_Produto_UtilizadoPRU_PRODUTO: TIBStringField;
    IB_Produto_UtilizadoPRU_QTD: TIBBCDField;
    IB_Produto_UtilizadoPRU_VL_UNITARIO: TIBBCDField;
    IB_Produto_UtilizadoPRU_VL_TOTAL: TIBBCDField;
    IB_ChamadoCHA_CODIGO: TIntegerField;
    IB_ChamadoCHA_EMPRESA: TIntegerField;
    IB_ChamadoCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoCHA_PROPRIETARIO: TIBStringField;
    IB_ChamadoCHA_DESCRICAO: TIBStringField;
    IB_ChamadoCHA_PRIORIDADE: TIntegerField;
    IB_ChamadoCHA_STATUS: TIntegerField;
    IB_ChamadoCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoCHA_DATA_SAIDA: TDateField;
    IB_ChamadoCHA_PRODUTOS_UTILIZADOS: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Servico: TDM_Servico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
