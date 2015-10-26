unit UDM_Servico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery;

type
  TDM_Servico = class(TDataModule)
    IB_Servico: TIBQuery;
    UPS_Servico: TIBUpdateSQL;
    DS_Servico: TDataSource;
    IB_ServicoCHA_COD: TIntegerField;
    IB_ServicoCHA_EMPRESA: TIntegerField;
    IB_ServicoCHA_DEPARTAMENTO: TIntegerField;
    IB_ServicoCHA_FUNCIONARIO: TIntegerField;
    IB_ServicoCHA_DESCRICAO: TIBStringField;
    IB_ServicoCHA_PRIORIDADE: TIBStringField;
    IB_ServicoCHA_STATUS: TIBStringField;
    IB_ServicoCHA_DATA_ENTRADA: TDateField;
    IB_ServicoCHA_DATA_SAIDA: TDateField;
    IB_ServicoCHA_PRODUTO_UTILIZADO: TIBStringField;
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
