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
    contasreceberTTR_CODIGO: TIntegerField;
    contasreceberTTR_EMP_CODIGO: TIntegerField;
    contasreceberTTR_PES_CODIGO: TIntegerField;
    contasreceberTTR_CTB_CODIGO: TIntegerField;
    contasreceberTTR_CON_CODIGO: TIntegerField;
    contasreceberTTR_DESCRICAO: TIBStringField;
    contasreceberTTR_DT_EMISSAO: TDateField;
    contasreceberTTR_DT_VENCIMENTO: TDateField;
    contasreceberTTR_DT_PAGAMENTO: TDateField;
    contasreceberTTR_DT_BAIXA: TDateField;
    contasreceberTTR_DT_CANCELAMENTO: TDateField;
    contasreceberTTR_TP_TITULO: TIBStringField;
    contasreceberTTR_DESCONTO: TIBBCDField;
    contasreceberTTR_PARCELA: TIBBCDField;
    contasreceberTTR_VL_ORIGINAL: TIBBCDField;
    contasreceberTTR_VL_PAGO: TIBBCDField;
    contasreceberTTR_VL_TOTAL: TIBBCDField;
    contasreceberTTR_MR_DIARIA: TIBBCDField;
    contasreceberTTR_MT_ATRASO: TIBBCDField;
    contasreceberTTR_TP_MORA: TIBStringField;
    contasreceberTTR_TP_MULTA: TIBStringField;
    contasreceberTTR_SITUACAO: TIBStringField;
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
