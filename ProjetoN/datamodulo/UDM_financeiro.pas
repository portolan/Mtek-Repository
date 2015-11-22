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
    contasbancariasCTB_CODIGO: TIntegerField;
    contasbancariasCTB_EMP_CODIGO: TIntegerField;
    contasbancariasCTB_BAN_CODIGO: TIntegerField;
    contasbancariasCTB_NUMERO_CONTA: TIBBCDField;
    contasbancariasCTB_OPERACAO: TIBBCDField;
    contasbancariasCTB_AGENCIA: TIBBCDField;
    contasbancariasCTB_SALDO: TIBBCDField;
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
