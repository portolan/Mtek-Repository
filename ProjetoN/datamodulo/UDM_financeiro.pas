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
    contasbancariasCTB_AGENCIA: TIBStringField;
    contasbancariasCTB_BAN_CODIGO: TIntegerField;
    contasbancariasCTB_CODIGO: TIntegerField;
    contasbancariasCTB_CONTA: TIBStringField;
    contasbancariasCTB_EMP_CODIGO: TIntegerField;
    contasbancariasCTB_PESSOA: TIntegerField;
    contasbancariasCTB_SALDO: TIBBCDField;
    contasbancariasCTB_STATUS: TIBStringField;
    banco: TIBQuery;
    D_banco: TDataSource;
    U_banco: TIBUpdateSQL;
    bancoBAN_CODIGO: TIntegerField;
    bancoBAN_DESCRICAO: TIBStringField;
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
