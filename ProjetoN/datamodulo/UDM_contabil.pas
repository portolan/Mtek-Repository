unit UDM_contabil;

interface

uses
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  Data.DB, IBX.IBQuery;

type
  TDM_contabil = class(TDataModule)
    empresa: TIBQuery;
    Dempresa: TDataSource;
    Uempresa: TIBUpdateSQL;
    centro: TIBQuery;
    Dcentro: TDataSource;
    Ucentro: TIBUpdateSQL;
    lancamento: TIBQuery;
    Dlancamento: TDataSource;
    Ulancamento: TIBUpdateSQL;
    departamento: TIBQuery;
    Ddepartamento: TDataSource;
    Udepartamento: TIBUpdateSQL;
    planodecontas: TIBQuery;
    Dplanodecontas: TDataSource;
    Uplanodecontas: TIBUpdateSQL;
    historico: TIBQuery;
    Dhistorico: TDataSource;
    Uhistorico: TIBUpdateSQL;
    empresaEMP_COD: TIntegerField;
    empresaEMP_CNPJ: TIBBCDField;
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
    centroCEC_COD: TIntegerField;
    centroCEC_NUM_CC: TIntegerField;
    centroCEC_DESC_CC: TIBStringField;
    centroCEC_ANALITICO: TIBStringField;
    centroCEC_COD_GRUPO: TIntegerField;
    lancamentoLANC_NR_LOTE: TIntegerField;
    lancamentoLANC_NR_LANCAMENTO: TIntegerField;
    lancamentoLANC_DT_LANCAMENTO: TDateField;
    lancamentoLANC_DEBITO: TIntegerField;
    lancamentoLANC_CENTRODECUSTO_DB: TIntegerField;
    lancamentoLANC_CREDITO: TIntegerField;
    lancamentoLANC_CENTRODECUSTO_CR: TIntegerField;
    lancamentoLANC_HISTORICO: TIntegerField;
    lancamentoLANC_VAR_HISTORICO: TIBStringField;
    lancamentoLANC_VALOR: TIntegerField;
    departamentoDEP_COD: TIntegerField;
    departamentoDEP_EMPRESAR: TIntegerField;
    departamentoDEP_NOME: TIBStringField;
    departamentoDEP_DESC: TIBStringField;
    planodecontasPLN_COD_CONTA: TIntegerField;
    planodecontasPLN_CONTA: TIntegerField;
    planodecontasPLN_DESC_CONTA: TIBStringField;
    planodecontasPLN_ANALITICA: TIBStringField;
    historicoHIST_COD: TIntegerField;
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
  DM_contabil.centroCEC_ANALITICO.AsString := 'N';

end;

procedure TDM_contabil.planodecontasAfterInsert(DataSet: TDataSet);
begin
  DM_contabil.planodecontasPLN_ANALITICA.AsString := 'N';
end;

end.
