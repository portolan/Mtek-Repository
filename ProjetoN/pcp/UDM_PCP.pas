unit UDM_PCP;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBUpdateSQL;

type
  TDM_PCP = class(TDataModule)
    DS_PCP: TDataSource;
    IB_PCP: TIBQuery;
    IB_PCPCLI_COD: TIntegerField;
    IB_PCPCLI_NOME: TIBStringField;
    IB_PCPCLI_CPF: TIBStringField;
    IB_PCPCLI_ENDERECO: TIBStringField;
    IB_PCPCLI_CIDADE: TIBStringField;
    IB_PCPCLI_BAIRRO: TIBStringField;
    IB_PCPCLI_CEP: TIBStringField;
    IB_PCPCLI_NR_RESIDENCIAL: TIBStringField;
    IB_PCPCLI_NR_CELULAR: TIBStringField;
    UPD_PCP: TIBUpdateSQL;
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
