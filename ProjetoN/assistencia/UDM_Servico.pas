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
    IB_Produto_Utilizado: TIBQuery;
    UPS_Produto_Usado: TIBUpdateSQL;
    DS_Produto_Utilizado: TDataSource;
    IB_Tipo_Erro: TIBQuery;
    UPS_Tipo_Erro: TIBUpdateSQL;
    DS_Tipo_Erro: TDataSource;
    IB_Produto_UtilizadoPRU_CODIGO: TIntegerField;
    IB_Produto_UtilizadoPRU_CHAMADO: TIntegerField;
    IB_Produto_UtilizadoPRU_PRODUTO: TIBStringField;
    IB_Tipo_ErroTER_CODIGO: TIBStringField;
    IB_Tipo_ErroTER_DESCRICAO: TIBStringField;
    IB_ChamadoCHA_CODIGO: TIntegerField;
    IB_ChamadoCHA_EMPRESA: TIntegerField;
    IB_ChamadoCHA_DEPARTAMENTO: TIntegerField;
    IB_ChamadoCHA_FUNCIONARIO: TIntegerField;
    IB_ChamadoCHA_PROPRIETARIO: TIntegerField;
    IB_ChamadoCHA_DESCRICAO: TIBStringField;
    IB_ChamadoCHA_PRIORIDADE: TIBStringField;
    IB_ChamadoCHA_STATUS: TIBStringField;
    IB_ChamadoCHA_DATA_ENTRADA: TDateField;
    IB_ChamadoCHA_TIPO_ERRO: TIntegerField;
    IB_ChamadoCHA_DATA_SAIDA: TDateField;
    IB_ChamadoCHA_PRODUTO_UTILIZADO: TIntegerField;
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
