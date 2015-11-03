unit dm000;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBQuery;

type
  TdmBanco = class(TDataModule)
    TBanco: TIBTransaction;
    Banco: TIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
    function funcRecuperaProximoIdGenerator(c_generator: String): Integer;
    function funcCriaQuery : TIBQuery;
  end;

var
  dmBanco: TdmBanco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmBanco }

function TdmBanco.funcCriaQuery: TIBQuery;
begin
    Result := TIBQuery.Create(self);
    Result.Database := Banco;
    Result.Transaction := TBanco;
end;

function TdmBanco.funcRecuperaProximoIdGenerator(c_generator: String): Integer;
var
    QryGen : TIBQuery;
begin
    QryGen := funcCriaQuery;
    QryGen.Close;
    QryGen.SQL.Text := ' SELECT GEN_ID(' + c_generator +
      ',1) FROM RDB$DATABASE';
    QryGen.Open;

    Result := QryGen.FieldByName('GEN_ID').AsInteger;
end;

end.
