unit dm001;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TdmPedido = class(TDataModule)
    Pedido: TIBQuery;
    DPedido: TDataSource;
    UPedido: TIBUpdateSQL;
    PedidoPED_EMPRESA: TIntegerField;
    PedidoPED_CODIGO: TIntegerField;
    PedidoPED_CLIENTE: TIntegerField;
    PedidoPED_DATA: TDateField;
    PedidoPED_VL_BRUTO: TIBBCDField;
    PedidoPED_VL_DESCONTO: TIBBCDField;
    PedidoPED_VL_LIQUIDO: TIBBCDField;
    PedidoPED_CONDICAO_PGTO: TIntegerField;
    PedidoPED_DT_ALTERACAO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPedido: TdmPedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
