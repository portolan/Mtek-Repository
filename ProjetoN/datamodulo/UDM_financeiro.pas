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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_financeiro: TDM_financeiro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_PCP, dm000;

{$R *.dfm}

end.
