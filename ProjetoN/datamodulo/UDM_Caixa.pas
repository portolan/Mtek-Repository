unit UDM_Caixa;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery;

type
  TDM_Caixa = class(TDataModule)
    Caixa: TIBQuery;
    UCaixa: TIBUpdateSQL;
    DS_Caixa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Caixa: TDM_Caixa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

end.
