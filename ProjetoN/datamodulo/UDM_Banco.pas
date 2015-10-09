unit UDM_Banco;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB;

type
  TDM_Banco = class(TDataModule)
    Banco: TIBDatabase;
    TBanco: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Banco: TDM_Banco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
