unit dm000;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBQuery, Vcl.Buttons;

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
    function iif(b_expressao : Boolean; v_true : Variant; v_false: Variant): Variant;
    procedure procBotaoVisivelHabilitado(botao: TObject);
    function funcRecuperaChavePrimaria(q: TIBQuery): String;
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

function TdmBanco.funcRecuperaChavePrimaria(q: TIBQuery): String;
var
    I: integer;
    Campos : TFieldList;
    campos_chave : String;
begin
   Campos := q.FieldList;
   campos_chave := EmptyStr;

   for I := 0 to Campos.Count - 1 do
   begin
      if pfInKey in Campos[I].ProviderFlags then
         campos_chave := iif(campos_chave = EmptyStr, Campos[I].FieldName, ';' + Campos[I].FieldName);
   end;
end;

function TdmBanco.funcRecuperaProximoIdGenerator(c_generator: String): Integer;
var
    QryGen : TIBQuery;
begin
    QryGen := funcCriaQuery;
    try
       QryGen.Close;
       QryGen.SQL.Text := ' SELECT GEN_ID(' + c_generator +',1) FROM RDB$DATABASE';
       QryGen.Open;

       Result := QryGen.FieldByName('GEN_ID').AsInteger;
    finally
       FreeAndNil(QryGen);
    end;
end;

function TdmBanco.iif(b_expressao: Boolean; v_true, v_false: Variant): Variant;
begin
   if b_expressao then
      Result := v_true
   else
      Result := v_false;
end;

procedure TdmBanco.procBotaoVisivelHabilitado(botao: TObject);
begin
   if not (botao is TSpeedButton) then
      Exit;

   if not (TSpeedButton(botao).Visible and TSpeedButton(botao).Enabled) then
      Abort;
end;

end.
