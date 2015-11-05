unit UDM_contasreceber;

interface

uses
  System.SysUtils, System.Classes, dm000, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDM_contasreceber = class(TDataModule)
    contasreceber: TIBQuery;
    D_contasreceber: TDataSource;
    U_contasreceber: TIBUpdateSQL;
    contasreceberTIT_CODIGO: TIntegerField;
    contasreceberTIT_VALOR: TFloatField;
    contasreceberTIT_DESCONTO: TFloatField;
    contasreceberTIT_TOTAL_BRUTO: TFloatField;
    contasreceberTIT_TOTAL_LIQUIDO: TFloatField;
    contasreceberTIT_DATA_VENCIMENTO: TDateField;
    contasreceberTIT_NUMERO_TITULO: TIntegerField;
    contasreceberTIT_SITUACAO: TIBStringField;
    contasreceberTIT_DATA_EMISSAO: TDateTimeField;
    contasreceberTIT_TIPO: TIBStringField;
    contasreceberTIT_DATA_PAGAMENTO: TDateField;
    contasreceberTIT_DESCRICAO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_contasreceber: TDM_contasreceber;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
