unit UDM_financeiro;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDM_financeiro = class(TDataModule)
    contasbancarias: TIBQuery;
    D_contasbancarias: TDataSource;
    U_contasbancarias: TIBUpdateSQL;
    contasbancariasCTB_BANCO: TIBStringField;
    contasbancariasCTB_CONTA: TIBStringField;
    contasbancariasCTB_TITULAR: TIBStringField;
    contasbancariasCTB_EMPRESA: TIntegerField;
    contasbancariasCTB_SALDO: TIBBCDField;
    contasbancariasCTB_BANCOCODIGO: TIBStringField;
    contasbancariasCTB_AGENCIACODIGO: TIBStringField;
    contasbancariasCTB_CONTANUMERO: TIBStringField;
    contasbancariasCTB_ATIVOINATIVO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_financeiro: TDM_financeiro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_PCP, dm000, UR_prevcompravenda, dm001, UDM_contasreceber;

{$R *.dfm}

end.
