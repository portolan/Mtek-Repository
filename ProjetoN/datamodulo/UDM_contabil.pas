unit UDM_contabil;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDM_contabil = class(TDataModule)
    empresa: TIBQuery;
    empresaCOD_EMPRESA: TIntegerField;
    empresaCNPJ_EMPRESA: TIBBCDField;
    empresaEMP_RAZAO: TIBStringField;
    empresaEMP_NOMEF: TIBStringField;
    empresaEMP_ENDERECO: TIBStringField;
    empresaEMP_END_NUM: TIntegerField;
    empresaEMP_BAIRRO: TIBStringField;
    empresaEMP_CIDADE: TIBStringField;
    empresaEMP_UF: TIBStringField;
    empresaEMP_CEP: TIntegerField;
    empresaEMP_FONE: TIntegerField;
    empresaEMP_TITULAR: TIBStringField;
    Dempresa: TDataSource;
    Uempresa: TIBUpdateSQL;
    centro: TIBQuery;
    Dcentro: TDataSource;
    Ucentro: TIBUpdateSQL;
    centroCOD_CC: TIntegerField;
    centroNUM_CC: TIntegerField;
    centroDESC_CC: TIBStringField;
    centroANALITICO: TIBStringField;
    centroCOD_GRUPO: TIntegerField;
    lancamento: TIBQuery;
    Dlancamento: TDataSource;
    Ulancamento: TIBUpdateSQL;
    lancamentoNR_LOTE: TIntegerField;
    lancamentoNR_LANCAMENTO: TIntegerField;
    lancamentoDT_LANCAMENTO: TDateField;
    lancamentoDEBITO: TIntegerField;
    lancamentoCENTRODECUSTO_DB: TIntegerField;
    lancamentoCREDITO: TIntegerField;
    lancamentoCENTRODECUSTO_CR: TIntegerField;
    lancamentoHISTORICO: TIntegerField;
    lancamentoVAR_HISTORICO: TIBStringField;
    lancamentoVALOR: TIntegerField;
    departamento: TIBQuery;
    Ddepartamento: TDataSource;
    Udepartamento: TIBUpdateSQL;
    departamentoCOD_DEP: TIntegerField;
    departamentoCOD_EMPRESAR: TIntegerField;
    departamentoDP_NOME: TIBStringField;
    departamentoDP_DESC: TIBStringField;
    planodecontas: TIBQuery;
    Dplanodecontas: TDataSource;
    Uplanodecontas: TIBUpdateSQL;
    planodecontasCOD_CONTA: TIntegerField;
    planodecontasCONTA: TIntegerField;
    planodecontasDESC_CONTA: TIBStringField;
    planodecontasANALITICA: TIBStringField;
    historico: TIBQuery;
    Dhistorico: TDataSource;
    Uhistorico: TIBUpdateSQL;
    historicoCOD_HIST: TIntegerField;
    historicoHIST_NOME: TIBStringField;
    procedure planodecontasAfterInsert(DataSet: TDataSet);
    procedure centroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_contabil: TDM_contabil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dm000;

{$R *.dfm}

procedure TDM_contabil.centroAfterInsert(DataSet: TDataSet);
begin
  DM_contabil.centroANALITICO.AsString := 'N';

end;

procedure TDM_contabil.planodecontasAfterInsert(DataSet: TDataSet);
begin
  DM_contabil.planodecontasANALITICA.AsString := 'N';
end;

end.
