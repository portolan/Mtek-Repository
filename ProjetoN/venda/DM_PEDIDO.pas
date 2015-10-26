unit DM_PEDIDO;

interface

uses
  System.SysUtils, System.Classes, dm001, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TdmPedido1 = class(TdmPedido)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPedido1: TdmPedido1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
