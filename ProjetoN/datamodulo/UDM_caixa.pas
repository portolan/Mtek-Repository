unit UDM_caixa;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDM_caixa = class(TDataModule)
    Caixa: TIBQuery;
    DCaixa: TDataSource;
    UCaixa: TIBUpdateSQL;
    CaixaCX_CODEMPRESA: TIntegerField;
    CaixaCX_IDCAIXA: TIntegerField;
    CaixaCX_DATAINICIAL: TDateField;
    CaixaCX_DATAFINAL: TDateField;
    CaixaCX_SALDOANTERIOR: TIBBCDField;
    CaixaCX_TOTALENTRADA: TIBBCDField;
    CaixaCX_TOTALSAIDA: TIBBCDField;
    CaixaCX_SALDOTOTAL: TIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_caixa: TDM_caixa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
