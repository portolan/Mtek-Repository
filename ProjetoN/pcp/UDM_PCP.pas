unit UDM_PCP;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

type
  TDM_PCP = class(TDataModule)
    DS_PCP: TDataSource;
    IB_PCP: TIBQuery;
    UPD_PCP: TIBUpdateSQL;
    IB_PCPOP_COD: TIntegerField;
    IB_PCPOP_DATA: TDateField;
    IB_PCPOP_DT_ORCAMENTO: TDateField;
    IB_PCPOP_DESCRICAO: TIBStringField;
    IB_PCPOP_DT_PEDIDO: TDateField;
    IB_PCPOP_DT_ENTREGA: TDateField;
    IB_PCPOP_QTD: TIntegerField;
    IB_PCPOP_CUSTO_PRODUCAO: TIBBCDField;
    IB_PCPOP_TIPO: TIBStringField;
    IB_PCPOP_STATUS: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PCP: TDM_PCP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
